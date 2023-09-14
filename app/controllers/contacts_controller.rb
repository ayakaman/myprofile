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
    if params[:back]
      render :action => 'index'
    else
      if ContactMailer.send_mail(@contact).deliver_now
         flash[:notice] = '送信しました'
      else
         flash[:alert] = '送信できませんでした'
      end
      render :action => 'done'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :message)
    end

end
