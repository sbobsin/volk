class PagesController < ApplicationController
  def home
  end

  def contact_us
  end
  
  def team_volk_application_submitted
    # This action handles the form submission
    # Access form parameters from params and process them as needed
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone = params[:phone]
    
    street = params[:street]
    city = params[:city]
    state = params[:state]
    zip = params[:zip]
    q1 = params[:q1]
    q2 = params[:q2]
    q3 = params[:q3]
    q4 = params[:q4]
    q5 = params[:q5]
    q6 = params[:q6]
    # Process the form data, e.g., sending an email
    ReminderMailer.with(first_name: first_name, 
                        last_name: last_name, 
                        email: email, 
                        phone: phone, 
                        street: street, 
                        city: city, 
                        state: state, 
                        zip: zip, 
                        q1: q1, 
                        q2: q2, 
                        q3: q3, 
                        q4: q4, 
                        q5: q5,
                        q6: q6
    ).team_volk_application_submitted.deliver_later
  
    # Redirect or render as needed
    redirect_to request.referrer, notice: 'Your application has been sent successfully and we will be contacting shortly!'
  end
  
  def contact_us_submit
    # This action handles the form submission
    # Access form parameters from params and process them as needed
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone = params[:phone]
    subject = params[:subject]
    message = params[:message]
    # Process the form data, e.g., sending an email
    ReminderMailer.with(first_name: first_name, last_name: last_name, email: email, phone: phone, subject: subject, message: message).send_contact_request_form.deliver_later

    # Redirect or render as needed
    redirect_to contact_us_page_path, notice: 'Your message has been sent successfully!'
  end
end
