class CreateAdvertisings < ActiveRecord::Migration
  def change
    create_table :advertisings do |t|
      t.string     :name
      t.attachment :image

      t.timestamps
    end
  end
end
