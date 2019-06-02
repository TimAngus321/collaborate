class SubmissionsController < ApplicationController
  def index
    @submission = Submission.find(params[:user_id]).all
  end

  def new
    @request = Request.find(params[:request_id])
    @submission = Submission.new(submission_params)
  end

  def show
    @submission = Submission.find(params[:id])
    @request = Request.find(params[:request_id])
    @track = Track.find(params[:track_id])
  end

  def my_submissions
    @submissions = current_user.submissions
  end

  def create
    @request = Request.find(params[:request_id])
    @submission = Submission.new(submission_params)
    @submission.request = @request
    @submission.user = current_user
    if @submission.save
      redirect_to request_path(@request)
    else
      render :new
    end
  end

  def edit
  end

  def delete
  end

  private

  def submission_params
    params.require(:submission).permit(:description, :name, :selected, :bpm, :time_signature, :key, :duration, :file)
  end
end
