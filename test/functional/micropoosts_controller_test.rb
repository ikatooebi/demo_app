require 'test_helper'

class MicropoostsControllerTest < ActionController::TestCase
  setup do
    @micropoost = micropoosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropoosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropoost" do
    assert_difference('Micropoost.count') do
      post :create, micropoost: { content: @micropoost.content, user_id: @micropoost.user_id }
    end

    assert_redirected_to micropoost_path(assigns(:micropoost))
  end

  test "should show micropoost" do
    get :show, id: @micropoost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropoost
    assert_response :success
  end

  test "should update micropoost" do
    put :update, id: @micropoost, micropoost: { content: @micropoost.content, user_id: @micropoost.user_id }
    assert_redirected_to micropoost_path(assigns(:micropoost))
  end

  test "should destroy micropoost" do
    assert_difference('Micropoost.count', -1) do
      delete :destroy, id: @micropoost
    end

    assert_redirected_to micropoosts_path
  end
end
