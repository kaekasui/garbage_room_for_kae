require 'test_helper'

class Admin::BlogsControllerTest < ActionController::TestCase
  setup do
    @admin_blog = admin_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_blog" do
    assert_difference('Admin::Blog.count') do
      post :create, admin_blog: { blog_category_code: @admin_blog.blog_category_code, contents1: @admin_blog.contents1, contents2: @admin_blog.contents2, deleted_at: @admin_blog.deleted_at, draft: @admin_blog.draft, title: @admin_blog.title }
    end

    assert_redirected_to admin_blog_path(assigns(:admin_blog))
  end

  test "should show admin_blog" do
    get :show, id: @admin_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_blog
    assert_response :success
  end

  test "should update admin_blog" do
    put :update, id: @admin_blog, admin_blog: { blog_category_code: @admin_blog.blog_category_code, contents1: @admin_blog.contents1, contents2: @admin_blog.contents2, deleted_at: @admin_blog.deleted_at, draft: @admin_blog.draft, title: @admin_blog.title }
    assert_redirected_to admin_blog_path(assigns(:admin_blog))
  end

  test "should destroy admin_blog" do
    assert_difference('Admin::Blog.count', -1) do
      delete :destroy, id: @admin_blog
    end

    assert_redirected_to admin_blogs_path
  end
end
