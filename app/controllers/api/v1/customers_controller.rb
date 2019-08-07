class Api::V1::CustomersController < ApplicationController
    def index
        @customers = Customer.all 
        render json: @customers
    end

    def create 
        @customer = Customer.new(customer_params)

        if @customer.save
            render json: @customer
        else
            render json: { errors: "Customer could not be created, please try again." }, status: 404
        end 
    end 

    private 

    def customer_params
        params.require(:customer).permit(:name, :due, :bill_id)
    end 
end
