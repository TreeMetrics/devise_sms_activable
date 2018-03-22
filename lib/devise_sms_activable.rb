require 'active_record'
require 'active_support/concern'
require 'devise'

module Devise
  mattr_accessor :sms_confirm_within
  @@sms_confirm_within = 2.days
  mattr_accessor :sms_confirmation_keys
  @@sms_confirmation_keys = [:email]
  mattr_accessor :sms_model_attribute
  @@sms_model_attribute = 'phone'
  mattr_accessor :sms_code_symbols
  @@sms_code_symbols = (0..9).to_a
  mattr_accessor :prevent_sms_sending
  @@prevent_sms_sending = false
  mattr_accessor :use_predefined_sms_code
  @@use_predefined_sms_code = nil
  mattr_accessor :confirmation_code_expiration_time
  @@confirmation_code_expiration_time = 3.minutes

  # Get the sms sender class from the mailer reference object.
  def self.sms_sender
    @@sms_sender_ref.get
  end

  # Set the smser reference object to access the smser.
  def self.sms_sender=(class_name)
    @@sms_sender_ref = ref(class_name)
  end

  self.sms_sender = 'Devise::SmsSender'
end

module DeviseSmsActivable
  autoload :Schema, 'devise_sms_activable/schema'

  module Controllers
    autoload :Helpers, 'devise_sms_activable/controllers/helpers'
    autoload :UrlHelpers, 'devise_sms_activable/controllers/url_helpers'
  end
end

Devise.add_module :sms_activable,
                  model: 'devise_sms_activable/models/sms_activable',
                  controller: :sms_activations,
                  route: :sms_activation

# Requires
require 'devise_sms_activable/routes'
require 'devise_sms_activable/rails'
require 'devise_sms_activable/models/sms_activable'
