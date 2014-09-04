class RemoveColumnTeamIdFromUserAndPlayer < ActiveRecord::Migration
  def change

    remove_column :users, :team_id
    remove_column :players, :team_id

  end
end
