class SubmissionsController < ApplicationController
  def index
    @submission = Submission.find(params[:user_id]).all
  end

  def new
    @submission = Submission.new
    @request = Request.find(params[:request_id])
  end

  def show
    @submission = Submission.find(params[:id])
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

  def update
    @submission = Submission.find(params[:id])
    @submission.update(selected: true) if @submission.user != current_user
    redirect_to @submission.request
  end

  def accept
    @submission = Submission.find(params[:id])
    @submission.update(selected: true) if @submission.user != current_user
    redirect_to @submission.request
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to my_submissions_path
  end

  private

  def submission_params
    params.require(:submission).permit(:description, :name, :selected, :bpm, :time_signature, :key, :duration, :file)
  end
end
