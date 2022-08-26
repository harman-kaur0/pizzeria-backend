class UserSerializer <ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :cart, :address, :phone_number
end