class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :Title
      t.string :Rating
      t.string :Author

      t.timestamps
    end
  end
end
