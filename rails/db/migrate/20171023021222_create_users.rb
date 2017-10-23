class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string   :mobile,          null: false, default: '', limit: 60,  comment: '项目内的订单id'
      t.string   :name,            null: false, default: '', limit: 50
      t.string   :email,           null: false, default: '', limit: 100
      t.string   :password_digest, null: false, default: '', limit: 200
      t.datetime :last_login_time, null: false, default: Settings.default_date_time
      t.string   :remember_token,  null: false, default: '', limit: 60
      t.index [:remember_token, :id]

      t.timestamps
    end
  end
end
