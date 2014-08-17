#
# Cookbook Name:: utorrent-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "update" do
  code "sudo apt-get update -y"
end

package "libssl0.9.8"

bash "download and install" do
  code <<-EOH
    wget -O /tmp/utserver.tar.gz http://download-new.utorrent.com/endpoint/utserver/os/linux-x64-ubuntu-12-04/track/beta/
    mkdir -p ~/utorrent-server
    tar -C /tmp/utorrent-server xvf /tmp/utserver.tar.gz
    mv /tmp/utorrent-server ~/utorrent-server
    sudo chmod -R 777 ~/utorrent-server/
    sudo ln -sf ~/utorrent-server/utserver /usr/bin/utserver
    touch ~/utorrent-server/utserver.conf
    mkdir ~/utorrent-server/settings
    # utserver -settingspath ~/utorrent-server/settings
  EOH
end

