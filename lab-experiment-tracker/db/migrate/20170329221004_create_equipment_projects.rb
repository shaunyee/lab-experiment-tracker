class CreateEquipmentProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment_projects do |t|
      t.integer :project_id, :null => false
      t.integer :equipment_id, :null => false
      t.timestamps
    end
  end
end
