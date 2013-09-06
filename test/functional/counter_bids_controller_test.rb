require 'test_helper'

class CounterBidsControllerTest < ActionController::TestCase
  setup do
    @counter_bid = counter_bids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counter_bids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create counter_bid" do
    assert_difference('CounterBid.count') do
      post :create, counter_bid: { bid_id: @counter_bid.bid_id, bid_time: @counter_bid.bid_time, buy: @counter_bid.buy, comment: @counter_bid.comment, confirmation_no: @counter_bid.confirmation_no, down_payment: @counter_bid.down_payment, finance: @counter_bid.finance, lease: @counter_bid.lease, max_miles: @counter_bid.max_miles, monthly_payment: @counter_bid.monthly_payment, no_of_month: @counter_bid.no_of_month, save: @counter_bid.save, user_id: @counter_bid.user_id }
    end

    assert_redirected_to counter_bid_path(assigns(:counter_bid))
  end

  test "should show counter_bid" do
    get :show, id: @counter_bid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @counter_bid
    assert_response :success
  end

  test "should update counter_bid" do
    put :update, id: @counter_bid, counter_bid: { bid_id: @counter_bid.bid_id, bid_time: @counter_bid.bid_time, buy: @counter_bid.buy, comment: @counter_bid.comment, confirmation_no: @counter_bid.confirmation_no, down_payment: @counter_bid.down_payment, finance: @counter_bid.finance, lease: @counter_bid.lease, max_miles: @counter_bid.max_miles, monthly_payment: @counter_bid.monthly_payment, no_of_month: @counter_bid.no_of_month, save: @counter_bid.save, user_id: @counter_bid.user_id }
    assert_redirected_to counter_bid_path(assigns(:counter_bid))
  end

  test "should destroy counter_bid" do
    assert_difference('CounterBid.count', -1) do
      delete :destroy, id: @counter_bid
    end

    assert_redirected_to counter_bids_path
  end
end
