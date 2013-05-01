class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.string :server_name
      t.string :status
      t.string :ip
      t.string :os
      t.string :environment
      t.string :hosting
      t.string :hoster
      t.string :system
      t.string :system_type
      t.string :backup_server

      t.timestamps
    end
  end
end
