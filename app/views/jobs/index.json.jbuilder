json.array!(@jobs) do |job|
  json.extract! job, :name, :job_type, :box_name, :owner, :command, :machine, :permission, :date_condition, :days_of_week, :start_times, :condition, :short_description, :str_out_file, :str_err_file, :alarm_if_fail, :avg_runtime_min, :avg_runtime_sec, :max_runtime_min, :contacts, :system, :system_type, :description, :priority, :critical, :actions, :notes, :submited_by, :created_on, :modified_by, :last_modified_on, :update_log, :status
  json.url job_url(job, format: :json)
end