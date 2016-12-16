class AddGalleryIdToPins < ActiveRecord::Migration
  def change
  	add_column :pins, :gallery_id, :integer
  end
end
