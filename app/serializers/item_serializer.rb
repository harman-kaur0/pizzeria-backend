class ItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :ingredients, :price, :image

    def orders
        object.orders.map{|o| OrderSerializer.new(o)}
    end
end