#
# Cookbook Name:: web-test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Installation of Package
#

package node["package_name"] do
  action :install
end

# Enable the httpd service and start it
#

service node["service_name"] do
 action [ :enable, :start ]
end

# Create index page
#

template "#{node["document_root"]}/index.html" do
 source "index.html.erb"
 owner 'root'
 group 'root'
 mode  '0644' 
end


