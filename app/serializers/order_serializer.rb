class OrderSerializer < ActiveModel::Serializer
    attributes :id, :items, :created_at
end