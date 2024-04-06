#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
# Source: https://docs.chef.io/resources/package/
# Copyright (c) 2014 Philip Kleinberg, All Rights Reserved.

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do 
  content '<html>
  <body>
    <h1>Hello World</h1>
    
    </body>
    
    </html>'
end
