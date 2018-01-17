require_relative '../config/environment'
require 'rails/test_help'
require "mocha/test_unit"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in user
    token = Doorkeeper::AccessToken.new(resource_owner_id: user.id)
    ApplicationController.any_instance.stubs(:doorkeeper_token).returns(token)
  end

end
class StubToken
  def acceptable?(value)
    true
  end
end