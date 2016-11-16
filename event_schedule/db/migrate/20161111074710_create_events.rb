class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventtitle
      t.string :venue
      t.string :date
      t.string :time
      t.string :discription
      t.integer :owner_id
      t.string :status

      t.timestamps null: false
    end
  end
end
