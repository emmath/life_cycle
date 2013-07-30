class CreateFellows < ActiveRecord::Migration
  def change
    create_table :fellows do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.text :notes
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
