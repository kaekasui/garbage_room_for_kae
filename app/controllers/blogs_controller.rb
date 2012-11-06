class BlogsController < ApplicationController
  before_filter :menu_name, :show_sidebar

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.scoped.page(params[:page]).per(5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])
    @blog_comment = BlogComment.new
    @blog_comments = BlogComment.find_all_by_blog_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end

  private

  def menu_name
    @menu_name = I18n.t("menu.blog")
  end

  def show_sidebar
    @recent_blogs = Blog.recent
    @recent_blog_comments = BlogComment.recent
    @blog_links = BlogLink.all
  end
end
