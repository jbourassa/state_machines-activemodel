module StateMachines
  module Integrations
    module ActiveModel
      class Railtie < Rails::Railtie
        # Loads the locale file as early as possible so `I18n.reload!` is
        # called before it has done the costly work of parsing all locale files
        initializer "state_machines/integrations/active_model.load_locale" do
          Locale.load
        end
      end
    end
  end
end
