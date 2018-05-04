## CHEF
Everything chef here.

### Introduction
Chef works on a three-tier client server model wherein the working units such as cookbooks are developed on the Chef workstation. From the command line utilities such as knife, they are uploaded to the Chef server and all the nodes which are present in the architecture are registered with the Chef server.
![Chef Architecture](image/chef_architecture.jpg)

### Upload files to Chef server
```bash
knife environment from file ~/chef-repo/environments/development.rb
```