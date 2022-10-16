require "test_helper"

class Admin::NounsControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:one)
  end

  test 'should get index' do
    get admin_nouns_path
    assert_response :success
  end

  test 'should get new' do
    get new_admin_noun_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Noun.count') do
      post admin_nouns_path, params: {
        noun: {
          word: 'Word'
        }
      }
    end
    assert_redirected_to admin_nouns_path
  end

  test 'should get edit' do
    get edit_admin_noun_path(nouns(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch admin_noun_path(nouns(:one)), params: {
      noun: {
        word: word
      }
    }
    assert_equal word, nouns(:one).reload.word
    assert_redirected_to admin_nouns_path
  end

  test 'should delete' do
    assert_difference('Noun.count', -1) do
      delete admin_noun_path(nouns(:one))
    end
    assert_redirected_to admin_nouns_path
  end
end
