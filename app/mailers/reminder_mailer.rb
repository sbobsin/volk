class ReminderMailer < ApplicationMailer
  def send_contact_request_form
    @name = params[:name]
    @email = params[:email]
    @subject = params[:subject]
    @message = params[:message]

    mail(to: "scottbobsin@volk.com", subject:  "#{@subject}")
  end

end
