class CreatePremiumPackages < ActiveRecord::Migration
  def change
    create_table :premium_packages do |t|
      t.references :user, index: true
      t.decimal :price
      t.string :customer_id

      t.timestamps
    end
  end
end
