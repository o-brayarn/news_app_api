class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :phone_number
end
