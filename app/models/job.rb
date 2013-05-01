class Job < ActiveRecord::Base
  attr_accessible :name, :job_type, :box_name, :owner, :command, :machine, :permission, :date_condition, 
                  :days_of_week, :start_times, :condition, :short_description, :str_out_file, :str_err_file, 
                  :alarm_if_fail, :avg_runtime_min, :avg_runtime_sec, :max_runtime_min, :contacts, :system, 
                  :system_type, :description, :priority, :critical, :actions, :notes, :submited_by, :created_on, 
                  :modified_by, :last_modified_on, :update_log, :status, :machine_id
                  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_inclusion_of :job_type, :in => %w(c b f), :message => "%{value} is not a valid job type. Needs to be a Job (j), Box (b) or Filewatcher (f)."
  validates_format_of :owner, :with => /\A[A-Z0-9._%+-]+@BKGLOBAL\z/i
  #validates_numericality_of :date_condition, :only_integer => true, :message => "can only be a number 0 or 1."
  #validates_inclusion_of :date_condition, :in => 0..1, :message => "can only be 0 or 1." 
  #validates_numericality_of :alarm_if_fail, :only_integer => true, :message => "can only be a number 0 or 1."
  #validates_inclusion_of :alarm_if_fail, :in => 0..1, :message => "can only be 0 or 1." 
  #validates_numericality_of :avg_runtime_min, :message => "can only be a number. Time is in minutes."
  #validates_numericality_of :avg_runtime_sec, :message => "can only be a number. Time is in seconds."
  #validates_numericality_of :max_runtime_min, :message => "can only be a number. Time is in minutes."


  belongs_to :machine
end
