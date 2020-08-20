# Ansible Collection - bstarke.couchbase

Documentation for the collection.


### Local Testing
Add the following plugins to Vagrant for host resolution.
```shell script
vagrant plugin install vagrant-hosts
vagrant plugin install landrush
```



### Tips
If you have a problem on Mac with DNS not resolving one of the hosts after vagrant halt or destroy then run this command to clear DNS
```shell script
sudo killall -HUP mDNSResponder
```
