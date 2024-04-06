#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

["perf", "bind-utils", "deltarpm", "ntp", "rsync", "yum", "sqlite", "httpd"].each do |p|
  package p do
 action :install
  end
end