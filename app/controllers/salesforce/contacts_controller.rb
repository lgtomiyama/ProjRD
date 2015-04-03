class Salesforce::ContactsController < ApplicationController
  before_action :set_salesforce_contact, only: [:show, :edit, :update, :destroy]

  # GET /salesforce/contacts
  # GET /salesforce/contacts.json
  def index
    @salesforce_contacts = Salesforce::Contact.all
  end

  # GET /salesforce/contacts/1
  # GET /salesforce/contacts/1.json
  def show
  end

  # GET /salesforce/contacts/new
  def new
    @salesforce_contact = Salesforce::Contact.new
  end

  # GET /salesforce/contacts/1/edit
  def edit
  end

  # POST /salesforce/contacts
  # POST /salesforce/contacts.json
  def create
    @salesforce_contact = Salesforce::Contact.new(salesforce_contact_params)

    respond_to do |format|
      if @salesforce_contact.save
        format.html { redirect_to @salesforce_contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @salesforce_contact }
      else
        format.html { render :new }
        format.json { render json: @salesforce_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salesforce/contacts/1
  # PATCH/PUT /salesforce/contacts/1.json
  def update
    respond_to do |format|
      if @salesforce_contact.update(salesforce_contact_params)
        format.html { redirect_to @salesforce_contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @salesforce_contact }
      else
        format.html { render :edit }
        format.json { render json: @salesforce_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce/contacts/1
  # DELETE /salesforce/contacts/1.json
  def destroy
    @salesforce_contact.destroy
    respond_to do |format|
      format.html { redirect_to salesforce_contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salesforce_contact
      @salesforce_contact = Salesforce::Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salesforce_contact_params
      params.require(:salesforce_contact).permit(:first_name, :last_name, :phone)
    end
end
