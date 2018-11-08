class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nikname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nikname])
    
    devise_parameter_sanitizer.permit(:sign_up, keys: [:age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:age])
    
    devise_parameter_sanitizer.permit(:sign_up, keys: [:sex])
    devise_parameter_sanitizer.permit(:account_update, keys: [:sex])
    
    devise_parameter_sanitizer.permit(:sign_up, keys: [:career])
    devise_parameter_sanitizer.permit(:account_update, keys: [:career])
    
    devise_parameter_sanitizer.permit(:sign_up, keys: [:position])
    devise_parameter_sanitizer.permit(:account_update, keys: [:position])
  end
end
