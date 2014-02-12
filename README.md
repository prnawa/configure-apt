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


License and Authors
-------------------
MIT
