class ApplicationController < ActionController::Base
  # CSRF対策(クロスサイトリクエストフォージェリ)
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # deviseを利用しているため、キーを追加
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
