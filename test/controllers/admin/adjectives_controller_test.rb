require "test_helper"

class Admin::AdjectivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:one)
  end

  test 'should get index' do
    get admin_adjectives_path
    assert_response :success
  end

  test 'should get new' do
    get new_admin_adjective_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Adjective.count') do
      post admin_adjectives_path, params: {
        adjective: {
          word: 'Word'
        }
      }
    end
    assert_redirected_to admin_adjectives_path
  end

  test 'should get edit' do
    get edit_admin_adjective_path(adjectives(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch admin_adjective_path(adjectives(:one)), params: {
      adjective: {
        word: word
      }
    }
    assert_equal word, adjectives(:one).reload.word
    assert_redirected_to admin_adjectives_path
  end

  test 'should delete' do
    assert_difference('Adjective.count', -1) do
      delete admin_adjective_path(adjectives(:one))
    end
    assert_redirected_to admin_adjectives_path
  end
end
