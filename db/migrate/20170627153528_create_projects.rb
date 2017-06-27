class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :finished
      t.string :city
      t.integer :pics

      t.timestamps
    end
  end
end
