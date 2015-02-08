class UserMailer < ApplicationMailer

	def welcome_email(email, role)
		@email = email
		@role = role
		mail(to: "crocker7james@gmail.com", subject:"Excellara Hit")
	end
end
