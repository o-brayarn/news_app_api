class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.string :hyperlinks
      t.timestamps
    end
  end
end
