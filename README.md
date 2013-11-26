simplelog_handler Cookbook
==========================

This cookbook shows all_resources and update_resources at log.


Attributes
----------

#### simplelog_handler::default

|Key|Type|Description|Default|
|----|----|----|----|----|
|[:simplelog_handler][:log_level]|symbol|change log level of this handler |:info|
|[:simplelog_handler][:show_backtrace]|boolean |include backtrace to exeption handler |true|


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

### Success

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

### Exception

```
[2013-11-26T03:23:35+00:00] ERROR: ======= Chef Run failed. Exception is following...       
[2013-11-26T03:23:35+00:00] ERROR: Exception: Chef::Exceptions::EnclosingDirectoryDoesNotExist: directory[/fail/path/due/to/no/parant] (dummy_cookbook::fail line 1) had an error: Chef::Exceptions::EnclosingDirectoryDoesNotExist: Parent directory /fail/path/due/to/no does not exist, cannot create /fail/path/due/to/no/parant       
[2013-11-26T03:23:35+00:00] ERROR: ========== BackTrace
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/mixin/why_run.rb:241:in `run'       
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/mixin/why_run.rb:322:in `block in run'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/mixin/why_run.rb:321:in `each'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/mixin/why_run.rb:321:in `run'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/provider.rb:128:in `process_resource_requirements'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/provider.rb:104:in `run_action'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource.rb:625:in `run_action'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/runner.rb:49:in `run_action'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/runner.rb:81:in `block (2 levels) in converge'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/runner.rb:81:in `each'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/runner.rb:81:in `block in converge'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection.rb:98:in `block in execute_each_resource'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection/stepable_iterator.rb:116:in `call'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection/stepable_iterator.rb:116:in `call_iterator_block'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection/stepable_iterator.rb:85:in `step'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection/stepable_iterator.rb:104:in `iterate'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection/stepable_iterator.rb:55:in `each_with_index'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/resource_collection.rb:96:in `execute_each_resource'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/runner.rb:80:in `converge'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/client.rb:433:in `converge'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/client.rb:500:in `do_run'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/client.rb:199:in `block in run'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/client.rb:193:in `fork'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/client.rb:193:in `run'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/application.rb:208:in `run_chef_client'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/application/solo.rb:221:in `block in run_application'       
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/application/solo.rb:213:in `loop'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/application/solo.rb:213:in `run_application'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/lib/chef/application.rb:66:in `run'
[2013-11-26T03:23:35+00:00] ERROR: = /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.8.0/bin/chef-solo:25:in `<top (required)>'
[2013-11-26T03:23:35+00:00] ERROR: = /usr/bin/chef-solo:23:in `load'
[2013-11-26T03:23:35+00:00] ERROR: = /usr/bin/chef-solo:23:in `<main>'
[2013-11-26T03:23:35+00:00] ERROR: Exception handlers complete
[2013-11-26T03:23:35+00:00] FATAL: Stacktrace dumped to /tmp/kitchen-chef-solo/cache/chef-stacktrace.out

Chef Client failed. 0 resources updated    
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
