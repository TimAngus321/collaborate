class Api::BaseController < ActionController::API
  include ActionController::Helpers
  include Devise::Controllers::Helpers
  
  before_action :authenticate_user!, except: [:index]
  
  protected
  
  def render_error(message, status = :unprocessable_entity)
    render json: { error: message }, status: status
  end
  
  def render_success(data, status = :ok)
    render json: data, status: status
  end
end