class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :date
      t.string :url

      t.timestamps
    end
  end
end
