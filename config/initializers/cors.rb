Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/rails/active_storage/blobs/redirect/*', headers: :any, methods: [:get, :options, :head]
  end
end
