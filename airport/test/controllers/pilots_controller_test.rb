require 'test_helper'

class PilotsControllerTest < ActionController::TestCase
  setup do
    @pilot = pilots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pilots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pilot" do
    assert_difference('Pilot.count') do
      post :create, pilot: { email: @pilot.email, experience: @pilot.experience, identification: @pilot.identification, last_name: @pilot.last_name, name: @pilot.name, telephone: @pilot.telephone }
    end

    assert_redirected_to pilot_path(assigns(:pilot))
  end

  test "should show pilot" do
    get :show, id: @pilot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pilot
    assert_response :success
  end

  test "should update pilot" do
    patch :update, id: @pilot, pilot: { email: @pilot.email, experience: @pilot.experience, identification: @pilot.identification, last_name: @pilot.last_name, name: @pilot.name, telephone: @pilot.telephone }
    assert_redirected_to pilot_path(assigns(:pilot))
  end

  test "should destroy pilot" do
    assert_difference('Pilot.count', -1) do
      delete :destroy, id: @pilot
    end

    assert_redirected_to pilots_path
  end
end
