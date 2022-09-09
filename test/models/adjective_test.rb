require "test_helper"

class AdjectiveTest < ActiveSupport::TestCase
  test 'should have columns' do
    assert Adjective.column_names.include?('word')
  end
end
