<<<<<<< HEAD
RSpec.configure do |config|
  config.include Omniauth::Mock
  config.include Omniauth::SessionHelpers, type: :feature
end
OmniAuth.config.test_mode = true
=======
require 'support/helpers/session_helpers'
RSpec.configure do |config|
  config.include Features::SessionHelpers, type: :feature
end
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
