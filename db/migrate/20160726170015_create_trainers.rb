class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :handle
      t.references :team, index: true

      t.timestamps null: false
    end
  end
end
