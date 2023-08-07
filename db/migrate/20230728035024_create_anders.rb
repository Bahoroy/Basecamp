class CreateAnders < ActiveRecord::Migration[7.0]
  def change
    create_table :anders do |t|
      t.string :comment
      t.references :andr, null: false, foreign_key: true

      t.timestamps
    end
  end
end
