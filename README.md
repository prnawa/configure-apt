configure-apt Cookbook
======================
This cookbook configure apt.

Requirements
------------


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
</table>

Usage
-----
#### configure-apt::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `configure-apt` in your node's `run_list`:

```json
{
    "name": "configure-apt",
    "json_class": "Chef::Role",
    "description": "configure-apt role",
    "chef_type": "role",
    "default_attributes": {   
		"configure-apt" : {
			"apt-mirror-baseurl" : "http://download.nus.edu.sg/mirror/ubuntu/"
		}
    },
    "override_attributes": {},
    "run_list": ["recipe[configure-apt]"]
}
```

License and Authors
-------------------
MIT
