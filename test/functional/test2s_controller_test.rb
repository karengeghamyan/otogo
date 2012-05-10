require 'test_helper'

class Test2sControllerTest < ActionController::TestCase
  setup do
    @test2 = test2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test2" do
    assert_difference('Test2.count') do
      post :create, test2: @test2.attributes
    end

    assert_redirected_to test2_path(assigns(:test2))
  end

  test "should show test2" do
    get :show, id: @test2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test2.to_param
    assert_response :success
  end

  test "should update test2" do
    put :update, id: @test2.to_param, test2: @test2.attributes
    assert_redirected_to test2_path(assigns(:test2))
  end

  test "should destroy test2" do
    assert_difference('Test2.count', -1) do
      delete :destroy, id: @test2.to_param
    end

    assert_redirected_to test2s_path
  end
end
