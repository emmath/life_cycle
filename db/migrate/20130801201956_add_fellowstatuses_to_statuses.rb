class AddFellowstatusesToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :fellowstatuses_id, :integer
    add_column :fellows, :fellowstatuses_id, :integer
  end
end
