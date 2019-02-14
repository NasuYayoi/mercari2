class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :buy, :pay]

  def index
    @items = Item.order("RAND()").limit(4)
  end

  def create
  end

  def sell
    @item = Item.new
    @prefecture = Prefecture.new
  end

  def show

    @search_data    = Item.ransack(search_params)
    @search_result  = @search_data.result(distinct: true)

    @items = Item.order("RAND()").limit(6)

  end

  def buy
  end

  def search
    @search_data    = Item.ransack(search_params)
    @search_result  = @search_data.result(distinct: true)
    @search_count   = @search_result.length
    @sizes          = Size.all
    @parents        = Category.roots
  end

  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    charge = Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy',
    )
  end

  private
  def search_params
    params.require(:q).permit(
      :s,
      :name_or_brand_name_or_category_name_cont_all,
      :category_id_in,
      :brand_name_cont_all,
      :size_id_in,
      :price_gteq,
      :price_lteq,
      :condition_id_eq,
      :delivery_fee_id_eq,
      ) unless params[:q].blank?
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
