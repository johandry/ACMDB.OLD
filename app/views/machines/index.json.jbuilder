json.array!(@machines) do |machine|
  json.extract! machine, :name, :server_name, :status, :ip, :os, :environment, :hosting, :hoster, :system, :system_type, :backup_server
  json.url machine_url(machine, format: :json)
end