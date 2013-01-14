class ApplicationController < ActionController::Base
  protect_from_forgery



  private

  	def current_cart
  		Cart.find(session[:cart_id]) 	# выдал ли браузер сессию
  	rescue ActiveRecord::RecordNotFound
  		cart = Cart.create 				# если нет создаем новую корзину
  		session[:cart_id] = cart.id 	# создаем сессию == id таблицы
  		cart 							# возврящаем корзину
  	end
end
