class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :game_name
      t.integer :user_id
      t.integer :field_id
      t.integer :participation_id

      t.timestamps
    end
  end
end
