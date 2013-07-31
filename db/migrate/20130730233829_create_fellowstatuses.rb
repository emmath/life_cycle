class CreateFellowstatuses < ActiveRecord::Migration
  def change
    create_table :fellowstatuses do |t|
      t.references :fellow
      t.references :status

      t.timestamps
    end
    add_index :fellowstatuses, :fellow_id
    add_index :fellowstatuses, :status_id
  end
end
