class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :category_search
  before_action :search_variable
  protect_from_forgery with: :exception


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, address_attributes: [:postcode, :prefecture_id, :city, :address, :building_name], creditcard_attributes: [:number, :expiration_month, :expiration_year, :security_code]])
  end

  private
  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def category_search
    @categorys = Category.where(ancestry: nil)
    @brands  = Brand.all
  end

  def search_variable
    @search_data = Item.ransack(params[:name_or_brand_name_or_category_name_cont_all])
  end

end
