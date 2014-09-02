class AddColumnAdresAndPhoneToSportCneter < ActiveRecord::Migration
  def change

    add_column :sportcenters, :adress, :string
    add_column :sportcenters, :phone, :string

  end
end
