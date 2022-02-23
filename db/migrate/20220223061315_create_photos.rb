class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :image
      t.string :user
      t.string :comment
      t.integer :rating, default: 3
      t.references :cabin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
