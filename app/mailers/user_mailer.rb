class UserMailer < ApplicationMailer

	def welcome_email(name, email, role, field)
    @name = name
		@email = email
		@role = role
    @field = field
		mail(to: "lauren@excellara.com", subject:"Excellara Sign-Up")
  end

  def waiting_list_email(name, email)
    @name = name
    mail(to: email, subject:"Thank You From Excellara!")
  end

  def pilot_email(email2)
    @email2 = email2
    mail(to: "lauren@excellara.com" , subject:"Pilot Interest")
  end

  def job_email(name, email, text, opp)
    @email = email
    @name = name
    @text = text
    @opp = opp
    mail(to: "lauren@excellara.com", subject: "Application " + @opp)
  end
end
