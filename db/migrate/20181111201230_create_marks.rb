class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :mark
      t.references :post, foreign_key: true
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
