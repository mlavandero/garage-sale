class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  alias_method :current_user, :current_client

  # Configures redirect after the sign in
  def after_sign_in_path_for(resource)
    client_path(resource)
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource)
    new_client_session_path
  end
end
