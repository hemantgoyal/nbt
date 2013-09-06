require 'test_helper'

class BidsControllerTest < ActionController::TestCase
  setup do
    @bid = bids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bid" do
    assert_difference('Bid.count') do
      post :create, bid: { bid_time: @bid.bid_time, buy: @bid.buy, comment: @bid.comment, down_payment: @bid.down_payment, finance: @bid.finance, lease: @bid.lease, max_miles: @bid.max_miles, monthly_payment: @bid.monthly_payment, no_of_month: @bid.no_of_month, save: @bid.save, user_id: @bid.user_id }
    end

    assert_redirected_to bid_path(assigns(:bid))
  end

  test "should show bid" do
    get :show, id: @bid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bid
    assert_response :success
  end

  test "should update bid" do
    put :update, id: @bid, bid: { bid_time: @bid.bid_time, buy: @bid.buy, comment: @bid.comment, down_payment: @bid.down_payment, finance: @bid.finance, lease: @bid.lease, max_miles: @bid.max_miles, monthly_payment: @bid.monthly_payment, no_of_month: @bid.no_of_month, save: @bid.save, user_id: @bid.user_id }
    assert_redirected_to bid_path(assigns(:bid))
  end

  test "should destroy bid" do
    assert_difference('Bid.count', -1) do
      delete :destroy, id: @bid
    end

    assert_redirected_to bids_path
  end
end
