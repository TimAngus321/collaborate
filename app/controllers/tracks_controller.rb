class TracksController < ApplicationController
  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    @track.user = current_user
    if @track.save
      redirect_to new_track_request_path(@track)
    else
      render :new
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.desroy
  end

  private

  def track_params
    params.require(:track).permit(:name, :bpm, :time_signature, :key, :duration, :file)
  end
end
