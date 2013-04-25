class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :job_type
      t.string :box_name
      t.string :owner
      t.string :command
      t.string :machine
      t.string :permission
      t.integer :date_condition
      t.string :days_of_week
      t.string :start_times
      t.string :condition
      t.string :short_description
      t.string :str_out_file
      t.string :str_err_file
      t.integer :alarm_if_fail
      t.float :avg_runtime_min
      t.float :avg_runtime_sec
      t.string :max_runtime_min
      t.string :contacts
      t.string :system
      t.string :system_type
      t.text :description
      t.string :priority
      t.string :critical
      t.text :actions
      t.text :notes
      t.string :submited_by
      t.date :created_on
      t.string :modified_by
      t.date :last_modified_on
      t.text :update_log
      t.string :status

      t.timestamps
    end
  end
end
