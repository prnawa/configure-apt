#
# Cookbook Name:: configure-apt
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/apt/sources.list" do
    source "sources.list.erb"
    owner "root"
    group "root"
    mode 0644
end

    
    
