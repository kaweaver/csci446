class AddPhotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :photoFile, :string

    add_column :users, :photoSize, :integer

    add_column :users, :photoType, :string

  end
end
