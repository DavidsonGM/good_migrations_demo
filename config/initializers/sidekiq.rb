Sidekiq.configure_server do |config|
  config.on(:startup) do
    # CronJob Sidekiq
    cron_jobs_array = [
      {
        'name' => 'users_count_job',
        'class' => 'UsersCountJob',
        'cron' => '0 20 */1 * *'
      },
      {
        'name' => 'dashboard_info_job',
        'class' => 'DashboardInfoJob',
        'cron' => '0 20 */1 * *'
      },
      {
        'name' => 'add_county_id',
        'class' => 'AddCountyId',
        'cron' => '0 0 * * *'
      }
    ]
    Sidekiq::Cron::Job.load_from_array cron_jobs_array if cron_jobs_array.present?
  end

  config.redis = {
    url: Rails.application.credentials.dig(:redis, :url) || ENV.fetch('REDIS_URL') { 'redis://localhost:6379/1' }
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: Rails.application.credentials.dig(:redis, :url) || ENV.fetch('REDIS_URL') { 'redis://localhost:6379/1' }
  }
end
