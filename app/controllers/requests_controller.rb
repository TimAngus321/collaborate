class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end
end
