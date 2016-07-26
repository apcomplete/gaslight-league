class CreateScorings < ActiveRecord::Migration
  def change
    create_table :scorings do |t|
      t.references :category, index: true, foreign_key: true
      t.references :trainer, index: true, foreign_key: true
      t.float :value, default: 0, null: false
      t.float :initial_value, default: 0, null: false
      t.float :delta_value, default: 0, null: false

      t.timestamps null: false
    end
  end
end
