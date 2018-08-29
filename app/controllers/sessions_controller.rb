class SessionsController < ApplicationController

	
  def new
  end


  def show

  end

  def create
  	@user = User.find_by(email: params[:session][:email]).downcase

    if @user
      log_in (@user)
      redirect_to static_page_path(@user.id)
      puts "yes"

    else
    	render 'new'
      puts "no"
    end
  end

 



end