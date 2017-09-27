class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_paramters, if: :devise_controller?

  def configure_permitted_paramters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
