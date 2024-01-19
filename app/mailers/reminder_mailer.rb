class ReminderMailer < ApplicationMailer
  def send_contact_request_form
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @full_name = "#{@first_name&.capitalize} #{@last_name&.capitalize}"
    @email = params[:email]
    @phone = params[:phone]
    @subject = params[:subject]
    @message = params[:message]

    recipients = ["scottbobsin@gmail.com", "kiril999@icloud.com"]
    subject = "#{@full_name} is Requesting Information"
    
    mail(to: recipients, subject: subject) do |format|
      format.html
    end  
  end
  
  def team_volk_application_submitted
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @full_name = "#{@first_name&.capitalize} #{@last_name&.capitalize}"
    @email = params[:email]
    @phone = params[:phone]
    @street = params[:street]
    @city = params[:city]
    @state = params[:state]
    @zip = params[:zip]
    @full_address = "#{@street}, #{@city}, #{@state}, #{@zip}"
    @q1 = params[:q1]
    @q2 = params[:q2]
    @q3 = params[:q3]
    @q4 = params[:q4]
    @q5 = params[:q5]
    @q6 = params[:q6]

    recipients = ["scottbobsin@gmail.com", "kiril999@icloud.com"]
    subject = "Team Volk Application: #{@full_name}"
    
    mail(to: recipients, subject: subject) do |format|
      format.html
    end
  end
end
