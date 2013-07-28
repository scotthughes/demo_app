require 'test_helper'

class MocropostsControllerTest < ActionController::TestCase
  setup do
    @mocropost = mocroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mocroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mocropost" do
    assert_difference('Mocropost.count') do
      post :create, mocropost: { content: @mocropost.content, user_id: @mocropost.user_id }
    end

    assert_redirected_to mocropost_path(assigns(:mocropost))
  end

  test "should show mocropost" do
    get :show, id: @mocropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mocropost
    assert_response :success
  end

  test "should update mocropost" do
    patch :update, id: @mocropost, mocropost: { content: @mocropost.content, user_id: @mocropost.user_id }
    assert_redirected_to mocropost_path(assigns(:mocropost))
  end

  test "should destroy mocropost" do
    assert_difference('Mocropost.count', -1) do
      delete :destroy, id: @mocropost
    end

    assert_redirected_to mocroposts_path
  end
end
