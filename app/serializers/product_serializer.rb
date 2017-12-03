class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :original_price, :price, :summary, :describe
end
