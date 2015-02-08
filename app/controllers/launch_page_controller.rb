class LaunchPageController < ApplicationController
  def home
    @email = params["email"]
    @role = params["role"]
    if @role == ""
      @role = "None Selected"
    end
    if params["commit"] == "Sign Me Up!"
      if @email != "" 
        UserMailer.welcome_email(@email, @role).deliver_later
        flash[:success] = "SUCCES! You have been added to our waiting list!"
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
