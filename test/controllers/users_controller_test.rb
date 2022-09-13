require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:one)
  end

  test 'should get index' do
    get users_path
    assert_response :success
  end

  test 'should get show' do
    get user_path(users(:one))
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_path(users(:one))
    assert_response :success
  end

  test 'should update' do
    name = Faker::Name.first_name
    patch user_path(users(:one)), params: {
      user: {
        first_name: name
      }
    }
    assert_equal users(:one).reload.first_name, name
    assert_redirected_to users_path
  end

  test 'should destroy' do
    assert_difference('User.count', -1) do
      delete user_path(users(:two))
    end
    assert_redirected_to users_path
  end
end
