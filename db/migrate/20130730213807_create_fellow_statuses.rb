class CreateFellowStatuses < ActiveRecord::Migration
  def change
    create_table :fellow_statuses do |t|
      t.references :fellow
      t.references :status

      t.timestamps
    end
    add_index :fellow_statuses, :fellow_id
    add_index :fellow_statuses, :status_id
  end
end
