class ConfirmationsMailer < Devise::Mailer
  default from: 'Alistair Upton CEO'

  def confirmation_instructions(record, token, opts={})
   @token = token
   @first_name = record.first_name
   #you can add your instance variables here
   devise_mail(record, :confirmation_instructions, opts)
  end
end