name "nginx_server"
description "A role to configure nginx proxy servers"
run_list "recipe[nginx]"
env_run_lists "production" => ["recipe[nginx::config_prod]"], "testing" => ["recipe[nginx::config_test]"]
