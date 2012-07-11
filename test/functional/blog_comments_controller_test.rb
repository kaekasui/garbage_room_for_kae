require 'test_helper'

class BlogCommentsControllerTest < ActionController::TestCase
  setup do
    @blog_comment = blog_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_comment" do
    assert_difference('BlogComment.count') do
      post :create, blog_comment: { admin: @blog_comment.admin, author: @blog_comment.author, blog_id: @blog_comment.blog_id, content: @blog_comment.content, draft: @blog_comment.draft, host: @blog_comment.host, ip: @blog_comment.ip, mail: @blog_comment.mail, mixi: @blog_comment.mixi, password: @blog_comment.password, salt: @blog_comment.salt, title: @blog_comment.title, url: @blog_comment.url }
    end

    assert_redirected_to blog_comment_path(assigns(:blog_comment))
  end

  test "should show blog_comment" do
    get :show, id: @blog_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_comment
    assert_response :success
  end

  test "should update blog_comment" do
    put :update, id: @blog_comment, blog_comment: { admin: @blog_comment.admin, author: @blog_comment.author, blog_id: @blog_comment.blog_id, content: @blog_comment.content, draft: @blog_comment.draft, host: @blog_comment.host, ip: @blog_comment.ip, mail: @blog_comment.mail, mixi: @blog_comment.mixi, password: @blog_comment.password, salt: @blog_comment.salt, title: @blog_comment.title, url: @blog_comment.url }
    assert_redirected_to blog_comment_path(assigns(:blog_comment))
  end

  test "should destroy blog_comment" do
    assert_difference('BlogComment.count', -1) do
      delete :destroy, id: @blog_comment
    end

    assert_redirected_to blog_comments_path
  end
end
