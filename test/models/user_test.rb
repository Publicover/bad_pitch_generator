require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should have columns' do
    assert User.column_names.include?('email')
    assert User.column_names.include?('first_name')
  end
end
