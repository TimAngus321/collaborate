class Api::V1::RequestsController < Api::V1::BaseController
  before_action :set_request, only: [:show]
  
  # GET /api/v1/requests
  def index
    @requests = Request.includes(:instrument, :track => [:user, :genre])
    
    if params[:query].present?
      @requests = @requests.search_by_instrument_and_genre(params[:query])
    end
    
    render_success({
      requests: @requests.map { |request| format_request(request) }
    })
  end

  # GET /api/v1/requests/1
  def show
    render_success({
      request: format_request(@request)
    })
  end

  # DELETE endpoint removed - no deletion functionality needed currently

  private

  def set_request
    @request = Request.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_error('Request not found', :not_found)
  end
  
  def format_request(request)
    {
      id: request.id,
      description: request.description,
      created_at: request.created_at,
      updated_at: request.updated_at,
      instrument: {
        id: request.instrument.id,
        name: request.instrument.name
      },
      track: {
        id: request.track.id,
        name: request.track.name,
        bpm: request.track.bpm,
        time_signature: request.track.time_signature,
        key: request.track.key,
        file_url: request.track.file&.url,
        user: {
          id: request.track.user.id,
          first_name: request.track.user.first_name,
          last_name: request.track.user.last_name
        },
        genre: request.track.genre ? {
          id: request.track.genre.id,
          name: request.track.genre.name
        } : nil
      },
      submissions_count: request.submissions.count
    }
  end
end