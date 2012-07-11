require 'test_helper'

class Admin::BlogCommentsControllerTest < ActionController::TestCase
  setup do
    @admin_blog_comment = admin_blog_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_blog_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_blog_comment" do
    assert_difference('Admin::BlogComment.count') do
      post :create, admin_blog_comment: { admin: @admin_blog_comment.admin, author: @admin_blog_comment.author, blog_id: @admin_blog_comment.blog_id, content: @admin_blog_comment.content, draft: @admin_blog_comment.draft, host: @admin_blog_comment.host, ip: @admin_blog_comment.ip, mail: @admin_blog_comment.mail, mixi: @admin_blog_comment.mixi, password: @admin_blog_comment.password, salt: @admin_blog_comment.salt, title: @admin_blog_comment.title, url: @admin_blog_comment.url }
    end

    assert_redirected_to admin_blog_comment_path(assigns(:admin_blog_comment))
  end

  test "should show admin_blog_comment" do
    get :show, id: @admin_blog_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_blog_comment
    assert_response :success
  end

  test "should update admin_blog_comment" do
    put :update, id: @admin_blog_comment, admin_blog_comment: { admin: @admin_blog_comment.admin, author: @admin_blog_comment.author, blog_id: @admin_blog_comment.blog_id, content: @admin_blog_comment.content, draft: @admin_blog_comment.draft, host: @admin_blog_comment.host, ip: @admin_blog_comment.ip, mail: @admin_blog_comment.mail, mixi: @admin_blog_comment.mixi, password: @admin_blog_comment.password, salt: @admin_blog_comment.salt, title: @admin_blog_comment.title, url: @admin_blog_comment.url }
    assert_redirected_to admin_blog_comment_path(assigns(:admin_blog_comment))
  end

  test "should destroy admin_blog_comment" do
    assert_difference('Admin::BlogComment.count', -1) do
      delete :destroy, id: @admin_blog_comment
    end

    assert_redirected_to admin_blog_comments_path
  end
end
