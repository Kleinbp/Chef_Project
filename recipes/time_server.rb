#
# Cookbook Name:: Time_Server
# Recipe:: Time Server
#
# Copyright (c) 2024, Philip Kleinberg All Rights Reserved.
# Some syntax sourced from Hiroaki Nakamura's NTP recipe
# https://github.com/hnakamur/chef-cookbooks/blob/master/ntp/recipes/default.rb
#
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# 'Software'), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#Install NTP
package 'ntp' do
  action :install
end

template '/etc/ntp.conf' do
  source 'ntp.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[ntpd]'
end

#starts NTP service
service 'ntp' do
  action [:enable, :start]
end

