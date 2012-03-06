class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :Title
      t.string :AuthorName
      t.text :Body
      t.date :CreationDate

      t.timestamps
    end
  end
end
