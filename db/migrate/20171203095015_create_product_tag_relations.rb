class CreateProductTagRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :product_tag_relations do |t|
      t.integer :product_id, null: false, default: 0, comment: '商品ID'
      t.integer :tag_id, null: false, default: 0, comment: 'TagID'

      t.timestamps
    end
  end
end
