Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, Rails.application.credentials.dig(:twutter, :api_key), Rails.application.credentials.dig(:twutter, :api_secret)
end