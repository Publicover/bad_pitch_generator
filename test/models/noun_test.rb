require "test_helper"

class NounTest < ActiveSupport::TestCase
  test 'should have columns' do
    assert Noun.column_names.include?('word')
  end
end
