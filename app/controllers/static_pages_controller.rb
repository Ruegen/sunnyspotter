class StaticPagesController < ApplicationController
  def index
  end

  def contact
  end

  def email
  
  
    ContactMailer.send_contact_email(
      email_params
    ).deliver_now

    # send an email
    redirect_to root_path
  end

  private
  def email_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
