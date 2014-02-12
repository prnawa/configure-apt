databagitem = data_bag_item("configure-apt", "apt-sources")
node.set["configure-apt"]["apt-mirror-baseurl"] = databagitem["region"]["#{node['configure-apt']['region']}"]['base_url']

include_recipe "configure-apt::default"