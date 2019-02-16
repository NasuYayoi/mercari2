class ItemsController < ApplicationController
  before_action :set_section, only: [:sell]
  before_action :set_item, only: [:show, :buy, :pay]
  def index
    @items = Item.order("RAND()").limit(4)
  end

  def create
    Item.create(name: item_params[:name],description: item_params[:description],category_id: item_params[:category_id],size_id: item_params[:size_id],brand: item_params[:brand],condition_id: item_params[:condition_id],delivery_fee_id: item_params[:delivery_fee_id],delivery_method_id: item_params[:delivery_method_id],ships_forms_id: item_params[:ships_forms_id],delivery_day_id: item_params[:delivery_day_id],price: item_params[:price])
    # redirect_to action: :index
  end

  def sell
    @item = Item.new
    @item.images.build
    @item.build_brand
    @midcategories_id = params[:midcategories_id]
    if @midcategories_id == "midcategories1"
      @midcategories_id = @leadies_tops
    elsif @midcategories_id == "midcategories2"
      @midcategories_id = @leadies_jacket
    elsif @midcategories_id == "midcategories3"
      @midcategories_id = @leadies_pants
    elsif @midcategories_id == "midcategories4"
      @midcategories_id = @leadies_skirt
    elsif @midcategories_id == "midcategories5"
      @midcategories_id = @leadies_onepiece
    elsif @midcategories_id == "midcategories6"
      @midcategories_id = @leadies_shoes
    elsif @midcategories_id == "midcategories7"
      @midcategories_id = @leadies_roomware
    elsif @midcategories_id == "midcategories8"
      @midcategories_id = @leadies_legware
    elsif @midcategories_id == "midcategories9"
      @midcategories_id = @leadies_cap
    elsif @midcategories_id == "midcategories10"
      @midcategories_id = @leadies_bag
    elsif @midcategories_id == "midcategories11"
      @midcategories_id = @leadies_accessories
    elsif @midcategories_id == "midcategories12"
      @midcategories_id = @leadies_hairaccessories
    elsif @midcategories_id == "midcategories13"
      @midcategories_id = @leadies_samll
    elsif @midcategories_id == "midcategories14"
      @midcategories_id = @leadies_clock
    elsif @midcategories_id == "midcategories15"
      @midcategories_id = @leadies_wig
    elsif @midcategories_id == "midcategories16"
      @midcategories_id = @leadies_swimsuit
    elsif @midcategories_id == "midcategories17"
      @midcategories_id = @leadies_suits
    elsif @midcategories_id == "midcategories18"
      @midcategories_id = @leadies_maternity
    elsif @midcategories_id == "midcategories19"
      @midcategories_id = @leadies_others
    elsif @midcategories_id == "midcategories21"
      @midcategories_id = @mens_tops
    elsif @midcategories_id == "midcategories22"
      @midcategories_id = @mens_jacket
    elsif @midcategories_id == "midcategories23"
      @midcategories_id = @mens_pants
    elsif @midcategories_id == "midcategories24"
      @midcategories_id = @mens_shoes
    elsif @midcategories_id == "midcategories25"
      @midcategories_id = @mens_bag
    elsif @midcategories_id == "midcategories26"
      @midcategories_id = @mens_suit
    elsif @midcategories_id == "midcategories27"
      @midcategories_id = @mens_cap
    elsif @midcategories_id == "midcategories28"
      @midcategories_id = @mens_accessories
    elsif @midcategories_id == "midcategories29"
      @midcategories_id = @mens_samll
    elsif @midcategories_id == "midcategories30"
      @midcategories_id = @mens_clock
    elsif @midcategories_id == "midcategories31"
      @midcategories_id = @mens_swimsuit
    elsif @midcategories_id == "midcategories32"
      @midcategories_id = @mens_legware
    elsif @midcategories_id == "midcategories33"
      @midcategories_id = @mens_underware
    elsif @midcategories_id == "midcategories36"
      @midcategories_id = @baby_girl95
    elsif @midcategories_id == "midcategories37"
      @midcategories_id = @baby_boy95
    elsif @midcategories_id == "midcategories38"
      @midcategories_id = @baby_girlboy95
    elsif @midcategories_id == "midcategories39"
      @midcategories_id = @baby_boy100
    elsif @midcategories_id == "midcategories40"
      @midcategories_id = @baby_boygirl100
    elsif @midcategories_id == "midcategories41"
      @midcategories_id = @baby_shoes
    elsif @midcategories_id == "midcategories42"
      @midcategories_id = @baby_small
    elsif @midcategories_id == "midcategories43"
      @midcategories_id = @baby_toilet
    elsif @midcategories_id == "midcategories44"
      @midcategories_id = @baby_movetool
    elsif @midcategories_id == "midcategories45"
      @midcategories_id = @baby_toilet
    elsif @midcategories_id == "midcategories46"
      @midcategories_id = @baby_foods
    elsif @midcategories_id == "midcategories47"
      @midcategories_id = @baby_sleeptool
    elsif @midcategories_id == "midcategories48"
      @midcategories_id = @baby_toy
    elsif @midcategories_id == "midcategories49"
      @midcategories_id = @baby_souvenir
    elsif @midcategories_id == "midcategories50"
      @midcategories_id = @baby_other
    else
      @midcategories_id = @leadies_tops
    end
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
  def dynamic_delivery_method
    @method = DeliveryMethod.where(params.require(:item).permit(:delivery_fee_id))
  end
  
  private
  def set_section
    @leadies_tops = Category.where(id: 33..51)
    @leadies_jacket = Category.where(id: 52..53)
    @leadies_pants = Category.where(id: 54..55)
    @leadies_skirt = Category.where(id: 56..57)
    @leadies_onepiece = Category.where(id: 58..59)
    @leadies_shoes = Category.where(id: 60..61)
    @leadies_roomware = Category.where(id: 62..63)
    @leadies_legware = Category.where(id: 64..65)
    @leadies_cap = Category.where(id: 66..67)
    @leadies_bag = Category.where(id: 68..69)
    @leadies_accessories = Category.where(id: 70..71)
    @leadies_hairaccessories = Category.where(id: 72..73)
    @leadies_samll = Category.where(id: 74..75)
    @leadies_clock = Category.where(id: 76..77)
    @leadies_wig = Category.where(id: 78..79)
    @leadies_swimsuit = Category.where(id: 80..81)
    @leadies_suits = Category.where(id: 82..83)
    @leadies_maternity = Category.where(id: 84..85)
    @leadies_others = Category.where(id: 86..87)
    @mens_tops = Category.where(id: 102..103)
    @mens_jacket = Category.where(id: 104..105)
    @mens_pants = Category.where(id: 106..107)
    @mens_shoes = Category.where(id: 108..109)
    @mens_bag = Category.where(id: 110..111)
    @mens_suit = Category.where(id: 112..113)
    @mens_cap = Category.where(id: 114..115)
    @mens_accessories = Category.where(id: 116..117)
    @mens_samll = Category.where(id: 118..119)
    @mens_clock = Category.where(id: 120..121)
    @mens_swimsuit = Category.where(id: 122..123)
    @mens_legware = Category.where(id: 124..125)
    @mens_underware = Category.where(id: 126..127)
    @baby_girl95 = Category.where(id: 142..143)
    @baby_boy95 = Category.where(id: 144..145)
    @baby_girlboy95 = Category.where(id: 146..147)
    @baby_boy100 = Category.where(id: 148..149)
    @baby_boygirl100 = Category.where(id: 150..151)
    @baby_shoes = Category.where(id: 152..153)
    @baby_small = Category.where(id: 154..155)
    @baby_toilet = Category.where(id: 156..157)
    @baby_movetool = Category.where(id: 158..159)
    @baby_foods = Category.where(id: 160..161)
    @baby_sleeptool = Category.where(id: 162..163)
    @baby_toy = Category.where(id: 164..165)
    @baby_souvenir = Category.where(id: 166..167)
    @baby_other = Category.where(id: 168..169)
    @method = DeliveryMethod.where('id < 5')
    @delivery_fee_all = DeliveryFee.all
  end
  
  def item_params
  params.permit(:name, :description, :category_id, :size_id, :brand, :condition_id, :delivery_fee_id, :delivery_method_id, :ships_forms_id, :delivery_day_id, :price)
  end
  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    charge = Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy',
    )
  end

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
