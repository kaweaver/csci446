class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :authorname
      t.text :body
      t.date :creationdate

      t.timestamps
    end
  end
end
