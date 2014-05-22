#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
user "tdi" do

  action :create

end

user "tdi" do

  action :modify
  home "/home/tdi"
  shell "/bin/bash"

end

#template "/home/tdi/.tdi" do
#
#  source "bogus"
#
#end

package "irssi" do
  action :install
  end

directory "/home/tdi/.irssi" do

  owner "tdi"
  action :create

end

cookbook_file "/home/tdi/.irssi/config" do

  owner "tdi"
  action :create

end

