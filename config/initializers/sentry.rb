Sentry.init do |config|
  config.dsn = Rails.env.test? ? '' : Rails.application.credentials.dig(:sentry, :dsn)
  config.breadcrumbs_logger = [:sentry_logger, :active_support_logger]
  config.background_worker_threads = 5

  config.traces_sampler = config.traces_sampler = lambda do |sampling_context|
    # if this is the continuation of a trace, just use that decision (rate controlled by the caller)
    next sampling_context[:parent_sampled] unless sampling_context[:parent_sampled].nil?

    # transaction_context is the transaction object in hash form
    # keep in mind that sampling happens right after the transaction is initialized
    # for example, at the beginning of the request
    transaction_context = sampling_context[:transaction_context]

    # transaction_context helps you sample transactions with more sophistication
    # for example, you can provide different sample rates based on the operation or name
    op = transaction_context[:op]
    transaction_name = transaction_context[:name]

    case op
    when /request/
      # for Rails applications, transaction_name would be the request's path (env["PATH_INFO"]) instead of "Controller#action"
      case transaction_name
      when /health_check/
        0.0
      when 'sidekiq/stats'
        0.0
      else
        1.0 # send all normal events to sentry
      end
    when /sidekiq/
      1.0
    else
      0.0 # ignore all other transactions
    end
  end
end
