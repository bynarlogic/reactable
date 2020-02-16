require 'test_helper'

class Reactable::ActsAsReactable::Test < ActiveSupport::TestCase
  test 'responds to reactable' do
    user = User.new
    assert user.respond_to?(:reactable)
  end
end