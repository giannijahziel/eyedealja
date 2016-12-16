class CreateWallpapers < ActiveRecord::Migration
  def change
    create_table :wallpapers do |t|
      t.string :name
      t.boolean :enabled, :default => false

      t.timestamps
    end
  end
end
