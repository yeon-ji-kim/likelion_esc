require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get create_ewha" do
    get :create_ewha
    assert_response :success
  end

  test "should get destroy_ewha" do
    get :destroy_ewha
    assert_response :success
  end

  test "should get edit_ewha" do
    get :edit_ewha
    assert_response :success
  end

  test "should get update_ewha" do
    get :update_ewha
    assert_response :success
  end

end
