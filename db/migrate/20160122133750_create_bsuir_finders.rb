class CreateBsuirFinders < ActiveRecord::Migration
  def change
    create_table :bsuir_finders do |t|

      t.timestamps null: false
    end
  end
end
