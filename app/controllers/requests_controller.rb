class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @requests = Request.find(params[:id])
  end

end
