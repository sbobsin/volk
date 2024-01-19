class PagesController < ApplicationController
  def home
  end

  def contact_us
  end
  
  def join_the_pack
  end
  
  def contact_us_submit
    # This action handles the form submission
    # Access form parameters from params and process them as needed
    name = params[:name]
    email = params[:email]
    subject = params[:subject]
    message = params[:message]
    byebug
    # Process the form data, e.g., sending an email
    ReminderMailer.with(name: name, email: email, subject: subject, message: message).send_contact_request_form.deliver_later

    # Redirect or render as needed
    redirect_to contact_us_page_path, notice: 'Your message has been sent successfully!'
  end
end
