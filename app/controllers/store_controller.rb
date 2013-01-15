class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@cart = current_cart # in application controller (create new cart or get already exised)

  	if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
