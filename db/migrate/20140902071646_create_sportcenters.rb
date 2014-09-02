class CreateSportcenters < ActiveRecord::Migration
  def change
    create_table :sportcenters do |t|
      t.string :name

      t.timestamps
    end
  end
end
