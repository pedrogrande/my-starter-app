class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.references :business, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
