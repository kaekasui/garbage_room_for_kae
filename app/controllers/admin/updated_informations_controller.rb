class Admin::UpdatedInformationsController < ApplicationController
  # GET /admin/updated_informations
  # GET /admin/updated_informations.json
  def index
    @admin_updated_informations = Admin::UpdatedInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_updated_informations }
    end
  end

  # GET /admin/updated_informations/1
  # GET /admin/updated_informations/1.json
  def show
    @admin_updated_information = Admin::UpdatedInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_updated_information }
    end
  end

  # GET /admin/updated_informations/new
  # GET /admin/updated_informations/new.json
  def new
    @admin_updated_information = Admin::UpdatedInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_updated_information }
    end
  end

  # GET /admin/updated_informations/1/edit
  def edit
    @admin_updated_information = Admin::UpdatedInformation.find(params[:id])
  end

  # POST /admin/updated_informations
  # POST /admin/updated_informations.json
  def create
    @admin_updated_information = Admin::UpdatedInformation.new(params[:admin_updated_information])

    respond_to do |format|
      if @admin_updated_information.save
        format.html { redirect_to @admin_updated_information, notice: 'Updated information was successfully created.' }
        format.json { render json: @admin_updated_information, status: :created, location: @admin_updated_information }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_updated_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/updated_informations/1
  # PUT /admin/updated_informations/1.json
  def update
    @admin_updated_information = Admin::UpdatedInformation.find(params[:id])

    respond_to do |format|
      if @admin_updated_information.update_attributes(params[:admin_updated_information])
        format.html { redirect_to @admin_updated_information, notice: 'Updated information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_updated_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/updated_informations/1
  # DELETE /admin/updated_informations/1.json
  def destroy
    @admin_updated_information = Admin::UpdatedInformation.find(params[:id])
    @admin_updated_information.destroy

    respond_to do |format|
      format.html { redirect_to admin_updated_informations_url }
      format.json { head :no_content }
    end
  end
end
