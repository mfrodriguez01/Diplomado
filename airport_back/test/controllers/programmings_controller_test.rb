require 'test_helper'

class ProgrammingsControllerTest < ActionController::TestCase
  setup do
    @programming = programmings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programmings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programming" do
    assert_difference('Programming.count') do
      post :create, programming: { airplane_id: @programming.airplane_id, date: @programming.date, destination: @programming.destination, duration: @programming.duration, hour: @programming.hour, origin: @programming.origin, pilot_id: @programming.pilot_id, track_id: @programming.track_id }
    end

    assert_redirected_to programming_path(assigns(:programming))
  end

  test "should show programming" do
    get :show, id: @programming
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programming
    assert_response :success
  end

  test "should update programming" do
    patch :update, id: @programming, programming: { airplane_id: @programming.airplane_id, date: @programming.date, destination: @programming.destination, duration: @programming.duration, hour: @programming.hour, origin: @programming.origin, pilot_id: @programming.pilot_id, track_id: @programming.track_id }
    assert_redirected_to programming_path(assigns(:programming))
  end

  test "should destroy programming" do
    assert_difference('Programming.count', -1) do
      delete :destroy, id: @programming
    end

    assert_redirected_to programmings_path
  end
end
