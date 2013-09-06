require 'test_helper'

class CarInfosControllerTest < ActionController::TestCase
  setup do
    @car_info = car_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_info" do
    assert_difference('CarInfo.count') do
      post :create, car_info: { additional_feature: @car_info.additional_feature, body_style: @car_info.body_style, car_image: @car_info.car_image, engine: @car_info.engine, exterior_color: @car_info.exterior_color, interior_color: @car_info.interior_color, make: @car_info.make, mileage: @car_info.mileage, model: @car_info.model, model_year: @car_info.model_year, price: @car_info.price, transmission: @car_info.transmission, trim: @car_info.trim, user_id: @car_info.user_id }
    end

    assert_redirected_to car_info_path(assigns(:car_info))
  end

  test "should show car_info" do
    get :show, id: @car_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_info
    assert_response :success
  end

  test "should update car_info" do
    put :update, id: @car_info, car_info: { additional_feature: @car_info.additional_feature, body_style: @car_info.body_style, car_image: @car_info.car_image, engine: @car_info.engine, exterior_color: @car_info.exterior_color, interior_color: @car_info.interior_color, make: @car_info.make, mileage: @car_info.mileage, model: @car_info.model, model_year: @car_info.model_year, price: @car_info.price, transmission: @car_info.transmission, trim: @car_info.trim, user_id: @car_info.user_id }
    assert_redirected_to car_info_path(assigns(:car_info))
  end

  test "should destroy car_info" do
    assert_difference('CarInfo.count', -1) do
      delete :destroy, id: @car_info
    end

    assert_redirected_to car_infos_path
  end
end
