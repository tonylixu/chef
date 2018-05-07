### Download chef:
Download the package from https://downloads.chef.io/chef-server/.

### Install Chef server package
```bash
$ sudo rpm -Uvh /tmp/chef-server-core-<version>.rpm
```

### Run the following to start all of the services:
```bash
$ chef-server-ctl reconfigure
```

### Run the following command to create an administrator:
```bash
$ chef-server-ctl user-create USER_NAME FIRST_NAME LAST_NAME EMAIL 'PASSWORD' --filename FILE_NAME
For example:
$ chef-server-ctl user-create stevedanno Steve Danno steved@chef.io 'abc123' --filename /path/to/stevedanno.pem
```

### Run the following command to create an organization:
```bash
$ chef-server-ctl org-create short_name 'full_organization_name' --association_user user_name --filename ORGANIZATION-validator.pem
For example:
$ chef-server-ctl org-create 4thcoffee 'Fourth Coffee, Inc.' --association_user stevedanno --filename /path/to/4thcoffee-validator.pem
```

## Install client

### Install chef client via command line
```bash
$ curl -L https://omnitruck.chef.io/install.sh | sudo bash
```
