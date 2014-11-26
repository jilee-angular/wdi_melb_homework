class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.text :details

      t.timestamps
    end
  end
end
