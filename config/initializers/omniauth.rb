# PROFILE permission required!!
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :line, ENV['CHANNEL_ID'], ENV['CHANNEL_SECRET']
end

OmniAuth.config.on_failure = Proc.new do |env|
  SessionsController.action(:action_failure).call(env)
end
