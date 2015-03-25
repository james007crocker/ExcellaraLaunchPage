class LaunchPageController < ApplicationController
  def home
    @email2 = params["email2"]
    @name = params["name"]
    @email = params["email"]
    @role = params["role"]
    @field = params["field"]
    if !@email2.nil?
      UserMailer.pilot_email(@email2).deliver_later
      flash.now[:success] = "Thanks for showing interest in the pilot. We will get back to you soon!"
    end
    if @role == ""
      @role = "None Selected"
    end
    if params["commit"] == "Sign Me Up!" && @email != ""
      if @email != "" 
        UserMailer.welcome_email(@name, @email, @role, @field).deliver_later

        if @email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
          UserMailer.waiting_list_email(@name, @email).deliver_later
        end

        flash[:success] = "SUCCESS! You have been added to our waiting list!"
      else 
        flash[:danger] = "Please enter a valid email!"
      end
    end
  end

 #
  #def create
  #  @user = User.new(user_params)
   # if @user.save
   #   UserMailer.account_activation(@user).deliver_now
    #  flash[:info] = "Please check your email to activate your account."
     # redirect_to root_url
    #else
    #  render 'new'
    #end
  #end

end
