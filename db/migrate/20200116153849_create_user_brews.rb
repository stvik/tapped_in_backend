class CreateUserBrews < ActiveRecord::Migration[6.0]
  def change
    create_table :user_brews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :brewery, null: false, foreign_key: true
      t.boolean :visted
      t.boolean :favorited

      t.timestamps
    end
  end
end
