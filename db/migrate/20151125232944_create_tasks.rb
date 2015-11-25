class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :urgent
      t.integer :important

      t.timestamps null: false
    end
  end
end
