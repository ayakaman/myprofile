class ContactsController < ApplicationController

  def index
      @contact = Contact.new
      render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def done
    @contact = Contact.new(contact_params)
    ContactMailer.send_mail(@contact).deliver_now
    render :action => 'done'
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :message)
    end

end
