class UserSerializer < ActiveModel::Serializer
  attributes :id, :mobile, :name, :email
end
