class CreateWrites < ActiveRecord::Migration
  def change
    create_table :writes do |t|
      
        t.string "title"
        t.string "writer"
        t.string "contents"

      t.timestamps null: false
    end
  end
end
