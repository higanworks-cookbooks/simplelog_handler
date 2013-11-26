simplelog_handler Cookbook
==========================

This cookbook shows all_resources and update_resources at log.


Attributes
----------

#### simplelog_handler::default

|Key|Type|Description|Default|
|----|----|----|----|----|
|[:simplelog_handler][:log_level]|symbol|change log level of this handler |:info|


Usage
-----

Just add `simplelog_handler` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[simplelog_handler]"
  ]
}
```

Example
----

The handler outputs to log after Chef Run follwing.

```
[2013-11-26T02:39:44+00:00] INFO: Chef Run complete in 262.480158323 seconds       
[2013-11-26T02:39:44+00:00] INFO: Running report handlers       
[2013-11-26T02:39:44+00:00] INFO: ======= All Resources are following...       
[2013-11-26T02:39:44+00:00] INFO: 0:execute[apt-get-update]       
[2013-11-26T02:39:44+00:00] INFO: 1:execute[apt-get update]       
[2013-11-26T02:39:44+00:00] INFO: 2:execute[apt-get autoremove]       
[2013-11-26T02:39:44+00:00] INFO: 3:execute[apt-get autoclean]       
[2013-11-26T02:39:44+00:00] INFO: 4:package[update-notifier-common]       
[2013-11-26T02:39:44+00:00] INFO: 5:execute[apt-get-update-periodic]       
[2013-11-26T02:39:44+00:00] INFO: 6:directory[/var/cache/local]       
[2013-11-26T02:39:44+00:00] INFO: 7:directory[/var/cache/local/preseeding]       
[2013-11-26T02:39:44+00:00] INFO: 8:apt_repository[mongodb-10gen]       
[2013-11-26T02:39:44+00:00] INFO: 9:file[/etc/default/mongodb]       
[2013-11-26T02:39:44+00:00] INFO: 10:package[mongodb-10gen]       
[2013-11-26T02:39:44+00:00] INFO: 11:directory[/data]       
[2013-11-26T02:39:44+00:00] INFO: 12:remote_directory[/data/mongodb]       
[2013-11-26T02:39:44+00:00] INFO: ======= Update Resources are following...       
[2013-11-26T02:39:44+00:00] INFO: 0:execute[apt-get-update]       
[2013-11-26T02:39:44+00:00] INFO: 1:execute[apt-get update]       
[2013-11-26T02:39:44+00:00] INFO: 2:package[update-notifier-common]       
[2013-11-26T02:39:44+00:00] INFO: 3:directory[/var/cache/local]       
[2013-11-26T02:39:44+00:00] INFO: 4:directory[/var/cache/local/preseeding]       
```


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

License: apache2

Author: Yukihiko Sawanobori(Higanworks LLC)
