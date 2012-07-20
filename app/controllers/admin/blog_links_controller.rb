class Admin::BlogLinksController < ApplicationController
  before_filter :admin_menu

  # GET /admin/blog_links
  # GET /admin/blog_links.json
  def index
    @admin_blog_links = Admin::BlogLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_blog_links }
    end
  end

  # GET /admin/blog_links/1
  # GET /admin/blog_links/1.json
  def show
    @admin_blog_link = Admin::BlogLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_blog_link }
    end
  end

  # GET /admin/blog_links/new
  # GET /admin/blog_links/new.json
  def new
    @admin_blog_link = Admin::BlogLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_blog_link }
    end
  end

  # GET /admin/blog_links/1/edit
  def edit
    @admin_blog_link = Admin::BlogLink.find(params[:id])
  end

  # POST /admin/blog_links
  # POST /admin/blog_links.json
  def create
    @admin_blog_link = Admin::BlogLink.new(params[:admin_blog_link])

    respond_to do |format|
      if @admin_blog_link.save
        format.html { redirect_to admin_blog_links_path, notice: 'Blog link was successfully created.' }
        format.json { render json: @admin_blog_link, status: :created, location: @admin_blog_link }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_blog_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/blog_links/1
  # PUT /admin/blog_links/1.json
  def update
    @admin_blog_link = Admin::BlogLink.find(params[:id])

    respond_to do |format|
      if @admin_blog_link.update_attributes(params[:admin_blog_link])
        format.html { redirect_to @admin_blog_link, notice: 'Blog link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_blog_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blog_links/1
  # DELETE /admin/blog_links/1.json
  def destroy
    @admin_blog_link = Admin::BlogLink.find(params[:id])
    @admin_blog_link.destroy

    respond_to do |format|
      format.html { redirect_to admin_blog_links_url }
      format.json { head :no_content }
    end
  end
end
