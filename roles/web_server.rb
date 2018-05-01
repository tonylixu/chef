name "nginx_server"
description "A role to configure nginx proxy servers"
run_list "recipe[nginx]"
# If node is part of prod, run "config_prod" recipe
# Otherwise run config_test
env_run_lists "production" => ["recipe[nginx::config_prod]"], "testing" => ["recipe[nginx::config_test]"]
default_attributes "nginx" => { "log_location" => "/var/log/nginx.log" }
override_attributes "nginx" => { "gzip" => "on" }
