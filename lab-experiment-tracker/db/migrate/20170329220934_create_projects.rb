class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, :null => false
      t.string :hypothesis, :null => false
      t.string :procedure, :null => false
      t.integer :scientist_id, :null => false
      t.boolean :isFinished, default: false, :null => false
      t.timestamps
    end
  end
end
