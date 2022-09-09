require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
  test 'should have columns' do
    assert Organization.column_names.include?('word')
    assert Organization.column_names.include?('conjunction')
  end
end
