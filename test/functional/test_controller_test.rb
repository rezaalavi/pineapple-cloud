require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get 1" do
    get :1
    assert_response :success
  end

  test "should get 2" do
    get :2
    assert_response :success
  end

  test "should get 3" do
    get :3
    assert_response :success
  end

  test "should get 4" do
    get :4
    assert_response :success
  end

end
