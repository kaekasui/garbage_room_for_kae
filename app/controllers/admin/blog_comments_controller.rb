class Admin::BlogCommentsController < ApplicationController
  # GET /admin/blog_comments
  # GET /admin/blog_comments.json
  def index
    @admin_blog_comments = Admin::BlogComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_blog_comments }
    end
  end

  # GET /admin/blog_comments/1
  # GET /admin/blog_comments/1.json
  def show
    @admin_blog_comment = Admin::BlogComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_blog_comment }
    end
  end

  # GET /admin/blog_comments/new
  # GET /admin/blog_comments/new.json
  def new
    @admin_blog_comment = Admin::BlogComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_blog_comment }
    end
  end

  # GET /admin/blog_comments/1/edit
  def edit
    @admin_blog_comment = Admin::BlogComment.find(params[:id])
  end

  # POST /admin/blog_comments
  # POST /admin/blog_comments.json
  def create
    @admin_blog_comment = Admin::BlogComment.new(params[:admin_blog_comment])

    respond_to do |format|
      if @admin_blog_comment.save
        format.html { redirect_to @admin_blog_comment, notice: 'Blog comment was successfully created.' }
        format.json { render json: @admin_blog_comment, status: :created, location: @admin_blog_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/blog_comments/1
  # PUT /admin/blog_comments/1.json
  def update
    @admin_blog_comment = Admin::BlogComment.find(params[:id])

    respond_to do |format|
      if @admin_blog_comment.update_attributes(params[:admin_blog_comment])
        format.html { redirect_to @admin_blog_comment, notice: 'Blog comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blog_comments/1
  # DELETE /admin/blog_comments/1.json
  def destroy
    @admin_blog_comment = Admin::BlogComment.find(params[:id])
    @admin_blog_comment.destroy

    respond_to do |format|
      format.html { redirect_to admin_blog_comments_url }
      format.json { head :no_content }
    end
  end
end
