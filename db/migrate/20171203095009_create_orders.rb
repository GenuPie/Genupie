class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :product_id, null: false, default: 0, comment: '商品ID'
      t.integer :user_id, null: false, default: 0, comment: '用户ID'
      t.integer :price, null: false, default: 0, comment: '价格'
      t.string  :out_trade_no, null: false, default: '', limit: 50
      t.integer :order_state, null: false, default: 0, limit: 2, comment: '订单状态'

      t.timestamps
    end
  end
end
