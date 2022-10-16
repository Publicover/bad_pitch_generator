require "test_helper"

class Admin::VerbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:one)
  end

  test 'should get index' do
    get admin_verbs_path
    assert_response :success
  end

  test 'should get new' do
    get new_admin_verb_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Verb.count') do
      post admin_verbs_path, params: {
        verb: {
          word: 'Word'
        }
      }
    end
    assert_redirected_to admin_verbs_path
  end

  test 'should get edit' do
    get edit_admin_verb_path(verbs(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch admin_verb_path(verbs(:one)), params: {
      verb: {
        word: word
      }
    }
    assert_equal word, verbs(:one).reload.word
    assert_redirected_to admin_verbs_path
  end

  test 'should delete' do
    assert_difference('Verb.count', -1) do
      delete admin_verb_path(verbs(:one))
    end
    assert_redirected_to admin_verbs_path
  end
end
