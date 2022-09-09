require "test_helper"

class VerbTest < ActiveSupport::TestCase
  test 'should have columns' do
    assert Verb.column_names.include?('word')
  end
end
