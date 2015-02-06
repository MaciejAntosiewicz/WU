require 'test_helper'

class StylingsControllerTest < ActionController::TestCase
  setup do
    @styling = stylings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stylings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create styling" do
    assert_difference('Styling.count') do
      post :create, styling: { description: @styling.description }
    end

    assert_redirected_to styling_path(assigns(:styling))
  end

  test "should show styling" do
    get :show, id: @styling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @styling
    assert_response :success
  end

  test "should update styling" do
    patch :update, id: @styling, styling: { description: @styling.description }
    assert_redirected_to styling_path(assigns(:styling))
  end

  test "should destroy styling" do
    assert_difference('Styling.count', -1) do
      delete :destroy, id: @styling
    end

    assert_redirected_to stylings_path
  end
end
