class Api::V1::OrdersController < ApplicationController

    def user_order
        orders = Order.find_by(user_id: @current_user.id)
        render json: {orders: orders}, status: :accepted
    end
end
