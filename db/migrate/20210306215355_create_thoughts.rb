class CreateThoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :thoughts do |t|
      t.references :message, null: false, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
