require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  longest_words = "We are a consulting company who brings structure to business
                  as usual for customer-service-oriented cowboys and astronauts
                  that want to brings structure to business as usual."
  test 'should get root without logging in' do
    get root_path
    assert_response :success
  end
end
