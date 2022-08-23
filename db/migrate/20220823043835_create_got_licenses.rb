class CreateGotLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :got_licenses do |t|
      t.references :account, null: false, foreign_key: true
      t.references :license, null: false, foreign_key: true

      t.timestamps
    end
  end
end
