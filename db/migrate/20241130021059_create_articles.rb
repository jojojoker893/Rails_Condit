class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :about
      t.text :content
      t.string :tag

      t.timestamps
    end
  end
end
