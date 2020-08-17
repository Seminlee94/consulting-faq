# frozen_string_literal: true

class Companies::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @company = Company.new
  end
  
  # POST /resource/sign_in
  def create
    @company = Company.new
    # super

    redirect_to company_session_path(current_company)
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
