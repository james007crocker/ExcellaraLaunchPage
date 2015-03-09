class UserMailer < ApplicationMailer

	def welcome_email(name, email, role, field)
    @name = name
		@email = email
		@role = role
    @field = field
		mail(to: "james@excellara.com", subject:"Excellara Sign-Up")
  end

  def waiting_list_email(name, email)
    @name = name
    mail(to: email, subject:"Thank You From Excellara!")
  end
end
