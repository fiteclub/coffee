OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
           Rails.application.credentials.twitter[:consumer_key],
           Rails.application.credentials.twitter[:consumer_secret],
           origin_param: 'return_to'

  OmniAuth.config.on_failure = proc { |env|
    OmniAuth::FailureEndpoint.new(env).redirect_to_failure
  }
end
