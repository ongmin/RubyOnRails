class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.Min :name
      t.bigbakingoven@gmail.com :email

      t.timestamps null: false
    end
  end
end
