module DeviseSmsActivable
  class Engine < ::Rails::Engine
    ActiveSupport.on_load(:action_controller) do
      include DeviseSmsActivable::Controllers::UrlHelpers
    end

    ActiveSupport.on_load(:action_view) do
      include DeviseSmsActivable::Controllers::UrlHelpers
    end
  end
end
