require "test_helper"

class Admin::CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:one)
  end

  test 'should get index' do
    get admin_companies_path
    assert_response :success
  end

  test 'should get new' do
    get new_admin_company_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Company.count') do
      post admin_companies_path, params: {
        company: {
          word: 'Word'
        }
      }
    end
    assert_redirected_to admin_companies_path
  end

  test 'should get edit' do
    get edit_admin_company_path(companies(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch admin_company_path(companies(:one)), params: {
      company: {
        word: word
      }
    }
    assert_equal word, companies(:one).reload.word
    assert_redirected_to admin_companies_path
  end

  test 'should delete' do
    assert_difference('Company.count', -1) do
      delete admin_company_path(companies(:one))
    end
    assert_redirected_to admin_companies_path
  end
end
