module StateMachines
  module Integrations
    module ActiveModel
      class Locale
        class << self
          # Loads any locale files needed for translating validation errors
          def load
            unless I18n.load_path.include?(locale_path)
              I18n.load_path.unshift(locale_path)
              I18n.reload!
            end
          end

          private

          def locale_path
            "#{File.dirname(__FILE__)}/active_model/locale.rb"
          end
        end
      end
    end
  end
end
