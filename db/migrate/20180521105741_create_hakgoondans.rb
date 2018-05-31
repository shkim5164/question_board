class CreateHakgoondans < ActiveRecord::Migration
  def change
    create_table :hakgoondans do |t|
      t.string :ilbyng
      t.text :sangbyng
      
      t.timestamps null: false
    end
  end
end
