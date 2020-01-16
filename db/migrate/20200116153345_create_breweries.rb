class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.float :longitude
      t.float :latitude
      t.string :website_url
      t.float :rating
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
