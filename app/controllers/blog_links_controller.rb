class BlogLinksController < ApplicationController
  # GET /blog_links
  # GET /blog_links.json
  def index
    @blog_links = BlogLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog_links }
    end
  end

  # GET /blog_links/1
  # GET /blog_links/1.json
  def show
    @blog_link = BlogLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog_link }
    end
  end

  # GET /blog_links/new
  # GET /blog_links/new.json
  def new
    @blog_link = BlogLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog_link }
    end
  end

  # GET /blog_links/1/edit
  def edit
    @blog_link = BlogLink.find(params[:id])
  end

  # POST /blog_links
  # POST /blog_links.json
  def create
    @blog_link = BlogLink.new(params[:blog_link])

    respond_to do |format|
      if @blog_link.save
        format.html { redirect_to @blog_link, notice: 'Blog link was successfully created.' }
        format.json { render json: @blog_link, status: :created, location: @blog_link }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog_links/1
  # PUT /blog_links/1.json
  def update
    @blog_link = BlogLink.find(params[:id])

    respond_to do |format|
      if @blog_link.update_attributes(params[:blog_link])
        format.html { redirect_to @blog_link, notice: 'Blog link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_links/1
  # DELETE /blog_links/1.json
  def destroy
    @blog_link = BlogLink.find(params[:id])
    @blog_link.destroy

    respond_to do |format|
      format.html { redirect_to blog_links_url }
      format.json { head :no_content }
    end
  end
end
