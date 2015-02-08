class UserMailer < ApplicationMailer

	def welcome_email(email, role)
		@email = email
		@role = role
		mail(to: "sign.up.excellara.com", subject:"Excellara Hit")
	end
end
