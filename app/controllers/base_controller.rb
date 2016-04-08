class BaseController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :destroy_session

  def destroy_session
    request.session_options[:skip] = true
  end

  def not_found
    render json: { 'message' => 'page not found' }, status: 404
  end
end
