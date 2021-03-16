class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  
  before_action :authorize_request

  attr_reader :current_user

  def authorize_request
    @current_user = Services::Auth::AuthorizeReq.call!(request.headers).data
  end
end
