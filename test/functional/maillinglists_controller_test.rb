require 'test_helper'

class MaillinglistsControllerTest < ActionController::TestCase
  setup do
    @maillinglist = maillinglists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maillinglists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maillinglist" do
    assert_difference('Maillinglist.count') do
      post :create, maillinglist: { email: @maillinglist.email }
    end

    assert_redirected_to maillinglist_path(assigns(:maillinglist))
  end

  test "should show maillinglist" do
    get :show, id: @maillinglist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maillinglist
    assert_response :success
  end

  test "should update maillinglist" do
    put :update, id: @maillinglist, maillinglist: { email: @maillinglist.email }
    assert_redirected_to maillinglist_path(assigns(:maillinglist))
  end

  test "should destroy maillinglist" do
    assert_difference('Maillinglist.count', -1) do
      delete :destroy, id: @maillinglist
    end

    assert_redirected_to maillinglists_path
  end
end
