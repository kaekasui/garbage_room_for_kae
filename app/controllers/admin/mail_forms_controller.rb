class Admin::MailFormsController < ApplicationController
  before_filter :admin_menu_blog

  # GET /admin/mail_forms
  # GET /admin/mail_forms.json
  def index
    @admin_mail_forms = Admin::MailForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_mail_forms }
    end
  end

  # GET /admin/mail_forms/1
  # GET /admin/mail_forms/1.json
  def show
    @admin_mail_form = Admin::MailForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_mail_form }
    end
  end

  # GET /admin/mail_forms/new
  # GET /admin/mail_forms/new.json
  def new
    @admin_mail_form = Admin::MailForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_mail_form }
    end
  end

  # GET /admin/mail_forms/1/edit
  def edit
    @admin_mail_form = Admin::MailForm.find(params[:id])
  end

  # POST /admin/mail_forms
  # POST /admin/mail_forms.json
  def create
    @admin_mail_form = Admin::MailForm.new(params[:admin_mail_form])

    respond_to do |format|
      if @admin_mail_form.save
        format.html { redirect_to @admin_mail_form, notice: 'Mail form was successfully created.' }
        format.json { render json: @admin_mail_form, status: :created, location: @admin_mail_form }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_mail_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/mail_forms/1
  # PUT /admin/mail_forms/1.json
  def update
    @admin_mail_form = Admin::MailForm.find(params[:id])

    respond_to do |format|
      if @admin_mail_form.update_attributes(params[:admin_mail_form])
        format.html { redirect_to @admin_mail_form, notice: 'Mail form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_mail_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/mail_forms/1
  # DELETE /admin/mail_forms/1.json
  def destroy
    @admin_mail_form = Admin::MailForm.find(params[:id])
    @admin_mail_form.destroy

    respond_to do |format|
      format.html { redirect_to admin_mail_forms_url }
      format.json { head :no_content }
    end
  end
end
