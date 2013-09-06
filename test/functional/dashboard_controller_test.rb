require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get customer" do
    get :customer
    assert_response :success
  end

  test "should get dealer" do
    get :dealer
    assert_response :success
  end

end
