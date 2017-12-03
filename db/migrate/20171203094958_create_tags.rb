class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name, null: false, default: '', limit: 50

      t.timestamps
    end
  end
end
