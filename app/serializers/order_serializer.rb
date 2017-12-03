class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :user_id, :price, :out_trade_no, :order_state
end
