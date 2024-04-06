#
# Cookbook Name:: Sqlite
# Recipe:: SQLite
#
# Copyright (c) 2024, Philip Kleinberg All Rights Reserved.
# sourced partly from: https://github.com/chef-boneyard/sqlite/blob/master/recipes/default.rb


package 'sqlite'

service 'sqlite' do
    action [:enable, :start]
end


