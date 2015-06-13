require 'test_helper'

class TripOptionsControllerTest < ActionController::TestCase
  setup do
    @trip_option = trip_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_option" do
    assert_difference('TripOption.count') do
      post :create, trip_option: { leave_house_by: @trip_option.leave_house_by, station_id: @trip_option.station_id, train_leaves_at: @trip_option.train_leaves_at }
    end

    assert_redirected_to trip_option_path(assigns(:trip_option))
  end

  test "should show trip_option" do
    get :show, id: @trip_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_option
    assert_response :success
  end

  test "should update trip_option" do
    patch :update, id: @trip_option, trip_option: { leave_house_by: @trip_option.leave_house_by, station_id: @trip_option.station_id, train_leaves_at: @trip_option.train_leaves_at }
    assert_redirected_to trip_option_path(assigns(:trip_option))
  end

  test "should destroy trip_option" do
    assert_difference('TripOption.count', -1) do
      delete :destroy, id: @trip_option
    end

    assert_redirected_to trip_options_path
  end
end
