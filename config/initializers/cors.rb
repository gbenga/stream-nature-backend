# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

frontend_origin = ENV['RAILS_ENV'] === "production" ? 'https://stream-nature.netlify.app' : 'http://localhost:3001'

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins frontend_origin

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
