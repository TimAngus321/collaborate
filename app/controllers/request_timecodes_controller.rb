class RequestTimecodesController < ApplicationController
  def update
    @request = Request.find(params[:id])
    if @request.update(timecode_params)
      render json: @request
    else
      head "500"
    end
  end

  def timecode_params
    params.require(:request_timecode).permit(:region_start, :region_end)
  end
end
