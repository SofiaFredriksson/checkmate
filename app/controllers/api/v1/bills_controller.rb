class Api::V1::BillsController < ApplicationController
    def index
        @bills = Bill.all 
        render json: @bills
    end 


    def create 
        @bill = Bill.new(bill_params)

        if @bill.save
            render json: @bill
        else
            render json: { errors: "Bill could not be created, please try again." }, status: 404
        end 
    end 

    private 


    def bill_params
        params.require(:bill).permit(:total_price, :service_charge, :restaurant_name)
    end 
end
