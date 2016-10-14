class ShippersController < ApplicationController

  def index
    @shippers = Shipper.all
  end

  def search
    @shippers = Shipper.all
                    .by_country(params[:country])
                    .by_city(params[:city])
                    .by_price(params[:price])
                    .range_weight(params[:weight])
    render 'index'
  end
end
