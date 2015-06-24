node.set['rsyslog']['log_dir'] = node['mo_logserver']['log_dir']
node.set['rsyslog']['port'] = 5140
node.set['rsyslog']['per_host_dir'] = "%HOSTNAME%"
node.set['rsyslog']['preserve_fqdn'] = "on"
node.set['rsyslog']['allow_non_local'] = true

include_recipe "rsyslog::server"

