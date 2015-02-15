class UserMailer < ApplicationMailer

	def welcome_email(email, role)
		@email = email
		@role = role
		mail(to: "lauren@excellara.com", subject:"Excellara Sign-Up")
	end
end
