class AddDateToEvent < ActiveRecord::Migration
  def change

    add_column :events, :date_take_place, :datetime

  end
end
