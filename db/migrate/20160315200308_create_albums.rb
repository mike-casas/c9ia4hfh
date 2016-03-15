class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.date :released_at

      t.timestamps null: false
    end
  end
end
