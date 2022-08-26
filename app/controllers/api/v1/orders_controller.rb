class Api::V1::OrdersController < ApplicationController
    skip_before_action :authorized, only: :create

    def user_order
        orders = Order.find_by(user_id: @current_user.id)
        render json: {orders: orders}, status: :accepted
    end

    def create
        order = Order.new(order_params)
        if order.save
            render json: {order: OrderSerializer.new(order)}, status: :accepted
        else
            render json: {errors: order.errors}, status: :unprocessable_identity
        end
    end

    private

    def order_params
        params.permit(:user_id, :items)
    end
end
