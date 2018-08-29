class UserController < ApplicationController

  before_action :authenticate_user!

  def create
            @user = User.new(user_params)

            if @user.save
              sign_in(@user) 
              redirect_to @user, notice: 'Successfully signed in.'
            else
              render :new
            end
          end

end
