class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
