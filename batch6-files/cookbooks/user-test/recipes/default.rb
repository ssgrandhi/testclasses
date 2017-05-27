#
# Cookbook Name:: user-test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# variable = data_bag_item( dbagname, key )
#

redhat_password_hash = data_bag_item('redhat_password','redhat')

group 'redhat'

user 'redhat' do
  uid '2000'
  group 'redhat'
  home '/home/redhat'
  # password variable['key']
  password redhat_password_hash['password']
  comment 'User created with chef' 
end
