class Admin::BlogsController < ApplicationController
  before_filter :admin_menu_blog

  # GET /admin/blogs
  # GET /admin/blogs.json
  def index
    @admin_blogs = Admin::Blog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_blogs }
    end
  end

  # GET /admin/blogs/1
  # GET /admin/blogs/1.json
  def show
    @admin_blog = Admin::Blog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_blog }
    end
  end

  # GET /admin/blogs/new
  # GET /admin/blogs/new.json
  def new
    @admin_blog = Admin::Blog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_blog }
    end
  end

  # GET /admin/blogs/1/edit
  def edit
    @admin_blog = Admin::Blog.find(params[:id])
  end

  # POST /admin/blogs
  # POST /admin/blogs.json
  def create
    @admin_blog = Admin::Blog.new(params[:admin_blog])

    respond_to do |format|
      if @admin_blog.save
        format.html { redirect_to admin_blogs_path, notice: I18n.t("flash.create_admin_blog") }
        format.json { render json: @admin_blog, status: :created, location: @admin_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/blogs/1
  # PUT /admin/blogs/1.json
  def update
    @admin_blog = Admin::Blog.find(params[:id])

    respond_to do |format|
      if @admin_blog.update_attributes(params[:admin_blog])
        format.html { redirect_to admin_blogs_path, notice: I18n.t("flash.update_admin_blog") }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blogs/1
  # DELETE /admin/blogs/1.json
  def destroy
    @admin_blog = Admin::Blog.find(params[:id])

    respond_to do |format|
      if @admin_blog.update_attributes(deleted_at: Time.now())
        format.html { redirect_to admin_blogs_path, notice: I18n.t("flash.destroy_admin_blog") }
        format.json { head :no_content }
      else
        format.html { render action: "destroy" }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
  end
end
