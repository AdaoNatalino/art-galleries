class AddTitleArtistIdAndGalleryIdToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :title, :string
    add_column :paintings, :artist_id, :integer
    add_column :paintings, :gallery_id, :integer
  end
end
