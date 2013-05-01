class AddMachineToJob < ActiveRecord::Migration
  def up
    remove_column :jobs, :machine
    add_column :jobs, :machine_id, :integer, references: :machines
  end
  
  def down
    add_column :jobs, :machine
    remove_column :jobs, :machine_id, :integer, references: :machines
  end
end
