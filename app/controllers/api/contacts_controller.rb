class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      name: params[:input_name],
      number: params[:input_number],
      email: params[:input_email],
      )
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.update(
      name: params[:input_name],
      number: params[:input_number],
      email: params[:input_email]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.destroy
    render 'show.json.jbuilder'
  end
end