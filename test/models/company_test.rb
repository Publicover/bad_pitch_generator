require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  test 'should have columns' do
    assert Company.column_names.include?('word')
  end
end
