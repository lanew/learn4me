class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :student, index: true, foreign_key: true
      t.string :headline
      t.text :description
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
