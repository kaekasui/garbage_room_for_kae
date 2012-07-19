require 'test_helper'

class Admin::BlogLinksControllerTest < ActionController::TestCase
  setup do
    @admin_blog_link = admin_blog_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_blog_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_blog_link" do
    assert_difference('Admin::BlogLink.count') do
      post :create, admin_blog_link: { author: @admin_blog_link.author, deleted_at: @admin_blog_link.deleted_at, draft: @admin_blog_link.draft, introduction: @admin_blog_link.introduction, position: @admin_blog_link.position, title: @admin_blog_link.title, url: @admin_blog_link.url }
    end

    assert_redirected_to admin_blog_link_path(assigns(:admin_blog_link))
  end

  test "should show admin_blog_link" do
    get :show, id: @admin_blog_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_blog_link
    assert_response :success
  end

  test "should update admin_blog_link" do
    put :update, id: @admin_blog_link, admin_blog_link: { author: @admin_blog_link.author, deleted_at: @admin_blog_link.deleted_at, draft: @admin_blog_link.draft, introduction: @admin_blog_link.introduction, position: @admin_blog_link.position, title: @admin_blog_link.title, url: @admin_blog_link.url }
    assert_redirected_to admin_blog_link_path(assigns(:admin_blog_link))
  end

  test "should destroy admin_blog_link" do
    assert_difference('Admin::BlogLink.count', -1) do
      delete :destroy, id: @admin_blog_link
    end

    assert_redirected_to admin_blog_links_path
  end
end
