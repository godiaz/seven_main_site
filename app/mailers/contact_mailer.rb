class ContactMailer < ApplicationMailer
  def contact
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @location = params[:location]
    @message = params[:message]
    attachment = params[:attachment]
    attachments[attachment.original_filename] = File.read(attachment)
    mail(to: 'please-replace-me@lenny.com')
  end
end
