require 'test_helper'

class HistorySessionsControllerTest < ActionController::TestCase
  setup do
    @history_session = history_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_session" do
    assert_difference('HistorySession.count') do
      post :create, history_session: { date: @history_session.date, hour: @history_session.hour, state: @history_session.state, user_id: @history_session.user_id }
    end

    assert_redirected_to history_session_path(assigns(:history_session))
  end

  test "should show history_session" do
    get :show, id: @history_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_session
    assert_response :success
  end

  test "should update history_session" do
    patch :update, id: @history_session, history_session: { date: @history_session.date, hour: @history_session.hour, state: @history_session.state, user_id: @history_session.user_id }
    assert_redirected_to history_session_path(assigns(:history_session))
  end

  test "should destroy history_session" do
    assert_difference('HistorySession.count', -1) do
      delete :destroy, id: @history_session
    end

    assert_redirected_to history_sessions_path
  end
end
