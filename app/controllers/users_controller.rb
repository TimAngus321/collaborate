class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def my_final_tracks
    @requests = current_user.requests
  end

  def update
    @user = User.find(params[:id])

    instruments = Instrument.where(id: params[:user][:instruments])
    @user.instruments = instruments
    genres = Genre.where(id: params[:user][:genres])
    @user.genres = genres

    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :biography, :instruments, :genres, :photo)
  end
end
