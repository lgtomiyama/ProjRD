class ContatosSalesforceController < ApplicationController
  include Databasedotcom::Rails::Controller
  # GET /pessoas
  # GET /pessoas.json
  def index
  	@contacts = Contact.all
  end

  def show
  end

  def new
  	  @contato_teste = Contact.new
  end
  def create
  	
  end
  def ContatosSalesforce_params
      params.require(:Contact).permit(:name, :last_name, :email, :company, :job_title, :phone, :website)
  end
end
