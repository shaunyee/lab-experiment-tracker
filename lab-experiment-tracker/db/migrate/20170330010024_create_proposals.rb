class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.string :status, :default => 'open'
      t.text :summary
      t.text :hypothesis
      t.integer :user_id

      t.timestamps
    end
  end
end
