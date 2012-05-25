class ContactsController < ApplicationController
  respond_to :html, :json

  def index
    @contacts = Contact.all
    respond_with @contacts
  end

  def show
    @contact = Contact.find params[:id]
    respond_with @contact
  end

  def new
    @contact = Contact.new
    respond_with @contact
  end

  def create
    @contact = Contact.new params[:contact]
    if @contact.save
      flash[:notice] = 'Contact was successfully created.'
      respond_with @contact
    else
      flash[:notice] = 'Error creating contact.'
      render :new
    end
  end

  def edit
    @contact = Contact.find params[:id]
    respond_with @contact
  end

  def update
    @contact = Contact.find params[:id]
    if @contact.update_attributes(params[:contact])
      flash[:notice] = 'Contact was successfully updated.'
      respond_with @contact, :location => contact_path(@contact)
    else
      render :edit
    end

  end

  def destroy
    @contact = Contact.find params[:id]
    @contact.delete
    flash[:notice] = 'Contact was successfully removed.'
    respond_with @contact, :location => contacts_path
  end
end
