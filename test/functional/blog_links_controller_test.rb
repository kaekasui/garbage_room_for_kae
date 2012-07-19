require 'test_helper'

class BlogLinksControllerTest < ActionController::TestCase
  setup do
    @blog_link = blog_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_link" do
    assert_difference('BlogLink.count') do
      post :create, blog_link: { author: @blog_link.author, deleted_at: @blog_link.deleted_at, draft: @blog_link.draft, introduction: @blog_link.introduction, position: @blog_link.position, title: @blog_link.title, url: @blog_link.url }
    end

    assert_redirected_to blog_link_path(assigns(:blog_link))
  end

  test "should show blog_link" do
    get :show, id: @blog_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_link
    assert_response :success
  end

  test "should update blog_link" do
    put :update, id: @blog_link, blog_link: { author: @blog_link.author, deleted_at: @blog_link.deleted_at, draft: @blog_link.draft, introduction: @blog_link.introduction, position: @blog_link.position, title: @blog_link.title, url: @blog_link.url }
    assert_redirected_to blog_link_path(assigns(:blog_link))
  end

  test "should destroy blog_link" do
    assert_difference('BlogLink.count', -1) do
      delete :destroy, id: @blog_link
    end

    assert_redirected_to blog_links_path
  end
end
