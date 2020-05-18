class CreateArtpieces < ActiveRecord::Migration[6.0]
  def change
    create_table :artpieces do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :price
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
