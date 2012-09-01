class Admin::VersionsController < ApplicationController
  before_filter :admin_menu_setting

  # GET /admin/versions
  # GET /admin/versions.json
  def index
    @admin_versions = Admin::Version.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_versions }
    end
  end

  # GET /admin/versions/1
  # GET /admin/versions/1.json
  def show
    @admin_version = Admin::Version.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_version }
    end
  end

  # GET /admin/versions/new
  # GET /admin/versions/new.json
  def new
    @admin_version = Admin::Version.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_version }
    end
  end

  # GET /admin/versions/1/edit
  #def edit
  #  @admin_version = Admin::Version.find(params[:id])
  #end

  # POST /admin/versions
  # POST /admin/versions.json
  def create
    @admin_version = Admin::Version.new(params[:admin_version])

    respond_to do |format|
      if @admin_version.save
        format.html { redirect_to admin_versions_path, notice: 'Version was successfully created.' }
        format.json { render json: @admin_version, status: :created, location: @admin_version }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/versions/1
  # PUT /admin/versions/1.json
  def update
    @version_id = params[:admin_version][:flag]
    params[:versions].each do |version|
      @update_version = Admin::Version.find(version[0])
      @update_version.update_attributes(id: version[0].to_i, name: version[1][:name])
      flag = version[0] == @version_id ? true : false
      @update_version.update_attributes(flag: flag)
    end
      respond_to do |format|
        format.html { redirect_to admin_versions_path, notice: 'Version was successfully updated.' }
        format.json { head :no_content }
        #format.html { redirect_to admin_versions_path, notice: 'Version was not successfully updated.' }
        #format.json { render json: @admin_version.errors, status: :unprocessable_entity }
      end
  end

  def destroy
    @admin_version = Admin::Version.find(params[:id])

    respond_to do |format|
      if @admin_version.update_attributes(deleted_at: Time.now)
        format.html { redirect_to admin_versions_path, notice: 'Version was successfully deleted.' }
        format.json { head :no_content }
      else
        format.html { render action: "delete" }
        format.json { render json: @admin_version.errors, status: :unprocessable_entity }
      end
    end
  end
end
