class CreateEntityRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :entity_roles do |t|
      t.string :name
      t.integer :entity_id
      t.integer :notice_id

      t.timestamps
    end
  end
end
