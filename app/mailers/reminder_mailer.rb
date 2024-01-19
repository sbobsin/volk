class ReminderMailer < ApplicationMailer
  def send_contact_request_form
    @name = params[:name]
    @email = params[:email]
    @subject = params[:subject]
    @message = params[:message]

    mail(to: "scottbobsin@volk.com", subject:  "#{@subject}")
  end
  
  def team_volk_application_submitted
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @phone = params[:phone]
    @street = params[:street]
    @city = params[:city]
    @state = params[:state]
    @zip = params[:zip]
    @q1 = params[:q1]
    @q2 = params[:q2]
    @q3 = params[:q3]
    @q4 = params[:q4]
    @q5 = params[:q5]
    @q6 = params[:q6]

    mail(to: "scottbobsin@volk.com", subject:  "Team Volk Application: #{@first_name} #{@last_name}")
  end

end
