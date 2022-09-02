require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test 'should get root without logging in' do
    get root_path
    assert_response :success
  end
end
