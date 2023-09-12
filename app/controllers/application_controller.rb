class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    attributes = [:nickname, :first_name, :first_name_kana, :last_name, :last_name_kana, :postal_code, :prefecture_id, :city, :address, :building, :phone_number, :birth_date, :customer_token]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
