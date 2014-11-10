class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :logo
      t.string :background_image
      t.string :name
      t.text :info
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.string :phone
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
