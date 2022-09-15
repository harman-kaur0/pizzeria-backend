class ItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :ingredients, :price, :image

    belongs_to :category
end