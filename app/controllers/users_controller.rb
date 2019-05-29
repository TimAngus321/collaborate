class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    instruments = Instrument.where(id: params[:user][:instruments])
    @user.instruments = instruments
    if @user.save
      redirect_to edit_user_path
    else
      render "users/edit_user"
    end
  end
end
