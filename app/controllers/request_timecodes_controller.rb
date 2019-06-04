class RequestTimecodesController < ApplicationController
  def update
    @request = Request.find(params[:id])
    @request.update(timecode_params)
    head :ok
  end

  def timecode_params
    params.require(:request_timecode).permit(:region_start, :region_end)
  end
end
