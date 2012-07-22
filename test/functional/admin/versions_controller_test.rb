require 'test_helper'

class Admin::VersionsControllerTest < ActionController::TestCase
  setup do
    @admin_version = admin_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_version" do
    assert_difference('Admin::Version.count') do
      post :create, admin_version: { deleted_at: @admin_version.deleted_at, flag: @admin_version.flag, name: @admin_version.name }
    end

    assert_redirected_to admin_version_path(assigns(:admin_version))
  end

  test "should show admin_version" do
    get :show, id: @admin_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_version
    assert_response :success
  end

  test "should update admin_version" do
    put :update, id: @admin_version, admin_version: { deleted_at: @admin_version.deleted_at, flag: @admin_version.flag, name: @admin_version.name }
    assert_redirected_to admin_version_path(assigns(:admin_version))
  end

  test "should destroy admin_version" do
    assert_difference('Admin::Version.count', -1) do
      delete :destroy, id: @admin_version
    end

    assert_redirected_to admin_versions_path
  end
end
