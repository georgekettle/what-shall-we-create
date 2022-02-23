class CreateCabins < ActiveRecord::Migration[6.1]
  def change
    create_table :cabins do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :cover_image

      t.timestamps
    end
  end
end
