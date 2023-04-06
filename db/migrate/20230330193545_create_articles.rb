class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :image
      t.string :category
      t.belongs_to :user

      t.timestamps
    end
  end
end
