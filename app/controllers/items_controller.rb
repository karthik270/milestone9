class ItemsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render plain: Item.order(:due_date).map{|item| item.to_pleasant_string}.join("\n")
    end



end