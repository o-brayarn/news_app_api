class CreateTrendings < ActiveRecord::Migration[7.0]
  def change
    create_table :trendings do |t|
      t.string :belongs_to
      t.string :article

      t.timestamps
    end
  end
end
