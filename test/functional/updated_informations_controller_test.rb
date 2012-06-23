require 'test_helper'

class UpdatedInformationsControllerTest < ActionController::TestCase
  setup do
    @updated_information = updated_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:updated_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create updated_information" do
    assert_difference('UpdatedInformation.count') do
      post :create, updated_information: { comment: @updated_information.comment, deleted_at: @updated_information.deleted_at, display_at: @updated_information.display_at, draft: @updated_information.draft, news: @updated_information.news, title: @updated_information.title, version_id: @updated_information.version_id }
    end

    assert_redirected_to updated_information_path(assigns(:updated_information))
  end

  test "should show updated_information" do
    get :show, id: @updated_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @updated_information
    assert_response :success
  end

  test "should update updated_information" do
    put :update, id: @updated_information, updated_information: { comment: @updated_information.comment, deleted_at: @updated_information.deleted_at, display_at: @updated_information.display_at, draft: @updated_information.draft, news: @updated_information.news, title: @updated_information.title, version_id: @updated_information.version_id }
    assert_redirected_to updated_information_path(assigns(:updated_information))
  end

  test "should destroy updated_information" do
    assert_difference('UpdatedInformation.count', -1) do
      delete :destroy, id: @updated_information
    end

    assert_redirected_to updated_informations_path
  end
end
