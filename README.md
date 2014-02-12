configure-apt Cookbook
======================
This cookbook configures apt.

Attributes
----------

#### configure-apt::apt-mirror-baseurl
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>["configure-apt"]["apt-mirror-baseurl"]</tt></td>
    <td>String</td>
    <td>Ubuntu archive location</td>
    <td><tt>"http://gb.archive.ubuntu.com/ubuntu/"</tt></td>
  </tr>
  <tr>
    <td><tt>["configure-apt"]["region"]</tt></td>
    <td>String</td>
    <td>Region</td>
    <td><tt>"europe"</tt></td>
  </tr>
</table>

Usage
-----
#### configure-apt::region

include `configure-apt::regional` in your node's `run_list`:

#### role './roles/configure-apt.json'

```json
{
    "name": "configure-apt",
    "json_class": "Chef::Role",
    "description": "configure-apt role",
    "chef_type": "role",
    "default_attributes": {   
		"configure-apt" : {
			"region" : "asia"
		}
    },
    "override_attributes": {},
    "run_list": ["recipe[configure-apt::regional]"]
}
```

#### databag './databags/configure-apt/configure-apt.json'

```json
{
    "id": "apt-sources",
    "region": {
        "asia": {
            "base_url": "http://download.nus.edu.sg/mirror/ubuntu/"
        },
        "europe": {
            "base_url": "http://gb.archive.ubuntu.com/ubuntu/"
        }
    }
}
```

#### Berksfile './Berksfile'

```ruby
site :opscode
metadata

cookbook "configure-apt", git: "https://github.com/prnawa/configure-apt.git", branch: "master"

```

#### metadata './metadata.rb'

```ruby
depends 'configure-apt'
```

#### Vagrantfile './Vagrantfile'

```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.require_plugin "vagrant-berkshelf"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.enabled = true 
  config.vm.box = "precise32"

  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.provision :chef_solo do |chef|
		chef.roles_path = "roles"
		chef.data_bags_path = "data_bags"
		chef.cookbooks_path = "cookbooks"
                
		chef.add_role "configure-apt"
	end
end
```

License and Authors
-------------------
MIT
