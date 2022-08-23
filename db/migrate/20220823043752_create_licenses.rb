class CreateLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :licenses do |t|
      t.references :category, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :url
      t.string :sponsor

      t.timestamps
    end
  end
end
