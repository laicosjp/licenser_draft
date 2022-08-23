class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
