class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.string :body, :null => false
      t.integer :user_id, :null => false
      t.integer :project_id, :null => false
      t.timestamps
    end
  end
end
