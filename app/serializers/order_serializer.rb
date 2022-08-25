class OrderSerializer < ActiveModel::Serializer
    attributes :id, :order_history, :created_at
end