class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: '', comment: '商品名称'
      t.string :images_path, null: false, default: '', comment: '图片'
      t.integer :original_price, null: false, default: 0, comment: '原价'
      t.integer :price, null: false, default: 0, comment: '售价'
      t.string :summary, null: false, default: '', comment: '简介'
      t.text :describe, null: false, comment: '详情'

      t.timestamps
    end
  end
end
