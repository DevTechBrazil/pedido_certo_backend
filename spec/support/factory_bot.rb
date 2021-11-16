require 'factory_bot'
# FactoryBot configuration
# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md#rspec
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

# RSpec without Rails
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end