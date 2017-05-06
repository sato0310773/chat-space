class ApplicationController < ActionController::Base
	def after_sign_out_path_for(resource)
       '/users/sign_in'
 	end
  	before_action :configure_permitted_parameters, if: :devise_controller?
  	protect_from_forgery with: :exception



  	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  	end
end
