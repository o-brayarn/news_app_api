class CreateTrendings < ActiveRecord::Migration[7.0]
  def change
    create_table :trendings do |t|
      t.belongs_to :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
