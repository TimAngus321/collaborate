class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index ]

  def index
    @requests = Request.all
    if params[:query].present?
      @requests = Request.search_by_instrument_and_genre(params[:query])
    else
      @requests = Request.all
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  def my_requests
    @requests = current_user.requests
  end

  def new
    @track = Track.find(params[:track_id])
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @track = Track.find(params[:track_id])
    @request.track = Track.find(params[:track_id])
    @request.instrument = Instrument.find(params[:request][:instrument_id])
    if @request.save
      redirect_to request_path(@request)
    else
      render :new
    end
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to request_path(@request)
    else
      render :show
    end
  end


  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to my_requests_path
  end

  private

  def request_params
    params.require(:request).permit(:description, :instrument_id, :final_track)
  end

  def submission_params
    params.require(:submission).permit(:description, :name, :selected, :bpm, :time_signature, :key, :file)
  end
end
