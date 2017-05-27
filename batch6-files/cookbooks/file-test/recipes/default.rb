#
# Cookbook Name:: file-test
# Recipe:: default
#
# Copyright 2017, My Company Inc.
#
# All rights reserved - Do Not Redistribute
#


# To create a file on a node
#

# resource and its state

# resoure_type resource_name do
#   parameters of resources
# end
#

# touch /tmp/dummy.txt
# echo "This is create via chef" > /tmp/dummy.txt
# chown root /tmp/dummy.txt
# chgrp root /tmp/dummy.txt
# chmod 644  /tmp/dummy.txt


file '/tmp/dummy.txt' do
  content 'This is created via chef'
  owner 'chefadmin'
  group 'chefadmin'
  mode  '0644'
end


directory '/tmp/sample-dir' do
 owner 'root'
 group 'root'
 mode  '0755'
 action	:create
end
