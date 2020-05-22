class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def mail_contact
    # blob = ActiveStorage::Blob.create_after_upload!(
    #   io: params.dig(:contact, :attachment),
    #   filename: "#{Time.now.strftime('%Y%m%d')}",
    #   content_type: params.dig(:contact, :attachment).content_type
    # )
    ContactMailer.with(
      name: params.dig(:contact, :name),
      email: params.dig(:contact, :email),
      phone: params.dig(:contact, :phone),
      location: params.dig(:contact, :location),
      message: params.dig(:contact, :message),
      attachment: params.dig(:contact, :attachment),
    ).contact.deliver_now
    raise
  end
end
