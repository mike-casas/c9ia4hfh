class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :preview_url
      t.string :number

      t.timestamps null: false
    end
  end
end
