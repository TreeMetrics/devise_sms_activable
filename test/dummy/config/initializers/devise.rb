Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'
  config.secret_key = 'dskfjsdfjiojijfij43082u4389feu0fjims0djof'
  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]
end
