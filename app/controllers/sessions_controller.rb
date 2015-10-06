class SessionsController < Devise::SessionsController

  def create
    super
  end

  def configure_sign_in_params
    devise_parameter_sanitizer.for(:sign_in) << :attribute
  end
end
