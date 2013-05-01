class Machine < ActiveRecord::Base
  attr_accessible :name, :server_name, :status, :ip, :os, :environment, :hosting, :hoster, :system, :system_type, :backup_server
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_format_of :ip, :with => /\A\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\z/i
  
  has_many :jobs
end
