class AddRoleidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roleId, :integer

  end
end
