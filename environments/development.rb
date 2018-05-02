name "development"
description "The development env"
cookbook_versions({
    "nginx" => "<= 1.1.0",
    "apt" => "= 0.0.1"
})
override_attributes ({
    "nginx" => {
        "listen" => [ "80", "443" ]
    },
    "mysql" => {
        "root_pass" => "root"
    }
})
