# This migration comes from chilean_cities (originally 20130216033656)
class CreateComunas < ActiveRecord::Migration
  def change
    create_table :chilean_cities_comunas do |t|
      t.string :name
      t.string :code
      t.string :provincia
      t.string :region
      t.string :region_number

      t.timestamps
    end
  end
end
