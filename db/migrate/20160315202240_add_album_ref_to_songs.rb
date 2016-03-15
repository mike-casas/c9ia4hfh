class AddAlbumRefToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :album, index: true
    add_foreign_key :songs, :albums
  end
end
