require "test_helper"

class Admin::OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:one)
  end

  test 'should get index' do
    get admin_organizations_path
    assert_response :success
  end

  test 'should get new' do
    get new_admin_organization_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Organization.count') do
      post admin_organizations_path, params: {
        organization: {
          word: 'Word'
        }
      }
    end
    assert_redirected_to admin_organizations_path
  end

  test 'should get edit' do
    get edit_admin_organization_path(organizations(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch admin_organization_path(organizations(:one)), params: {
      organization: {
        word: word
      }
    }
    assert_equal word, organizations(:one).reload.word
    assert_redirected_to admin_organizations_path
  end

  test 'should delete' do
    assert_difference('Organization.count', -1) do
      delete admin_organization_path(organizations(:one))
    end
    assert_redirected_to admin_organizations_path
  end
end
