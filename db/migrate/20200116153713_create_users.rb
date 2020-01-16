class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :image
      t.string :bio
      t.string :fav_beer

      t.timestamps
    end
  end
end
