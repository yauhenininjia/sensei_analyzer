class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :teacher
      t.string :time
      t.string :text
      t.string :sentiment

      t.timestamps null: false
    end
  end
end
