class LaunchPageController < ApplicationController
  def home
    @name = params["name"]
    @email = params["email"]
    @role = params["role"]
    @field = params["field"]
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
