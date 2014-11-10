class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.integer :star_rating
      t.text :review
      t.references :business, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
