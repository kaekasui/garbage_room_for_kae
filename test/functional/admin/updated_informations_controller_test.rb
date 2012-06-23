require 'test_helper'

class Admin::UpdatedInformationsControllerTest < ActionController::TestCase
  setup do
    @admin_updated_information = admin_updated_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_updated_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_updated_information" do
    assert_difference('Admin::UpdatedInformation.count') do
      post :create, admin_updated_information: { comment: @admin_updated_information.comment, deleted_at: @admin_updated_information.deleted_at, display_at: @admin_updated_information.display_at, draft: @admin_updated_information.draft, news: @admin_updated_information.news, title: @admin_updated_information.title, version_id: @admin_updated_information.version_id }
    end

    assert_redirected_to admin_updated_information_path(assigns(:admin_updated_information))
  end

  test "should show admin_updated_information" do
    get :show, id: @admin_updated_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_updated_information
    assert_response :success
  end

  test "should update admin_updated_information" do
    put :update, id: @admin_updated_information, admin_updated_information: { comment: @admin_updated_information.comment, deleted_at: @admin_updated_information.deleted_at, display_at: @admin_updated_information.display_at, draft: @admin_updated_information.draft, news: @admin_updated_information.news, title: @admin_updated_information.title, version_id: @admin_updated_information.version_id }
    assert_redirected_to admin_updated_information_path(assigns(:admin_updated_information))
  end

  test "should destroy admin_updated_information" do
    assert_difference('Admin::UpdatedInformation.count', -1) do
      delete :destroy, id: @admin_updated_information
    end

    assert_redirected_to admin_updated_informations_path
  end
end
