class AddRoles < ActiveRecord::Migration
  def change
   add_column :roles, :description, :string
   add_column :roles, :count, :integer
   add_column :roles, :name, :string
  end
end
