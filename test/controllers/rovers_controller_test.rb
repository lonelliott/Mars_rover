require 'test_helper'

class RoversControllerTest < ActionController::TestCase
  setup do
    @rover = rovers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rover" do
    assert_difference('Rover.count') do
      post :create, rover: { r1_commands: @rover.r1_commands, r1_start: @rover.r1_start, r1_start_direction: @rover.r1_start_direction, r2_commands: @rover.r2_commands, r2_start: @rover.r2_start, r2_start_direction: @rover.r2_start_direction }
    end

    assert_redirected_to rover_path(assigns(:rover))
  end

  test "should show rover" do
    get :show, id: @rover
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rover
    assert_response :success
  end

  test "should update rover" do
    patch :update, id: @rover, rover: { r1_commands: @rover.r1_commands, r1_start: @rover.r1_start, r1_start_direction: @rover.r1_start_direction, r2_commands: @rover.r2_commands, r2_start: @rover.r2_start, r2_start_direction: @rover.r2_start_direction }
    assert_redirected_to rover_path(assigns(:rover))
  end

  test "should destroy rover" do
    assert_difference('Rover.count', -1) do
      delete :destroy, id: @rover
    end

    assert_redirected_to rovers_path
  end
end
