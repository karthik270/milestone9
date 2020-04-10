class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render plain: User.order(:id).map{|user| user.to_pleasant_string}.join("\n")
    end
    def create
        login_id = params[:login_id]
        quantity = params[:quantity]
        price = params[:price]
        new_item = Item.create!(food_item: food_item, quantity: quantity, price: price)
        response_text = "Hey, your new food item  is into menu with the id #{new_item.id}"
    end
    def show
        id = params[:id]
        item = Item.find(id)
        render plain: item.to_pleasant_string
    end


end