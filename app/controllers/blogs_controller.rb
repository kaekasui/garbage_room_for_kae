class BlogsController < ApplicationController
  before_filter :menu_name, :show_sidebar

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all

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
  end
end
