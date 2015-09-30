class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alternative_name
      t.string :iso_code_2, limit: 2
      t.string :iso_code_3, limit: 3
      t.string :country_code

      t.timestamps null: false
    end
  end
end
