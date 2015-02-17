class UserMailer < ApplicationMailer

	def welcome_email(email, role, field)
		@email = email
		@role = role
    @field = field
		mail(to: "lauren@excellara.com", subject:"Excellara Sign-Up")
	end
end
