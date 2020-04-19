class CustomersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render plain: Customer.order(:id).map{|customer| customer.to_pleasant_string}.join("\n")
    end
    def login
        login_id = params[:login_id]
        password = params[:password]
        customer = Customer.find_by "login_id = ? and password = ?", login_id, password
        if (customer)
          render plain: "true"
        else
          render plain: "false"
        end
    end
    def create
        login_id = params[:login_id]
        password = params[:password]
        new_customer = Customer.create!(login_id: login_id, password: password)
        render plain: "Hey, your new user is created with the id #{new_customer.id}"
    end
    def show
        id = params[:id]
        customer = Customer.find(id)
        render plain: customer.to_pleasant_string
    end


end