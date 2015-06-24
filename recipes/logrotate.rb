include_recipe "logrotate"

logrotate_app "mo-logserver" do
  path      "#{node['mo_logserver']['log_dir']}/*/*.log"
  options   %w(missingok delaycompress notifempty compress sharedscripts)
  frequency 'weekly'
  minsize   '1M'
  rotate    52
  create    %W(440 #{node['rsyslog']['user']} #{node['rsyslog']['group']}).join ' '
end
