#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
# Source: https://docs.chef.io/resources/package/
# Copyright (c) 2014 Philip Kleinberg, All Rights Reserved.



# Install Apache HTTP Server package
package 'httpd' do
  action :install
end

# Configure Apache service
service 'httpd' do
  action [:enable, :start]
end

# Use template to configure Apache virtual host
template '/etc/httpd/conf.d/my_website.conf' do
  source 'my_website.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[httpd]'
end
