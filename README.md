# Couchbase Ansible Collection

This repository is to setup Couchbase Cluster and Sync-Gateway using Ansible Collection.

### Local Setup using Vagrant
```shell script
vagrant plugin install vagrant-hosts
vagrant plugin install landrush
```

## Details

- Update the hosts file under inventory directory to add more nodes to the couchbase cluster.
- Playbooks directory has different playbooks for multiple features such as  cluster setup, sync gateway setup, buckets creation, rebalancing and failovers.

## Running the Application

1. Start Vagrant

```shell
vagrant up
```

2. ssh using the following command

```shell
vagrant ssh
```

3. For Windows it's not possible to change permissions on vagrant folder so use the following script which copies the code from Vagrant folder to ~/ansible-couchbase-repo and sets the permissions

```shell
cd /vagrant
./ansible-couchbase-setup.sh
```

5. Install both Couchbase Cluster and Sync Gateway using the following Commands

```shell
cd ~/ansible-couchbase-repo [For Windows]
ansible-playbook playbooks/site.yml
```

### Tips
If you have a problem on Mac with DNS not resolving one of the hosts after vagrant halt or destroy then run this command to clear DNS
```shell script
sudo killall -HUP mDNSResponder
```

### Tested on the following OS Distributions

To monitor and manage the application

- Sync Gateway

|  OS Distributions  
|----------
|`ubuntu (debian)`
|`centos/7`

- Couchbase Cluster

|  OS Distributions  
|----------
|`ubuntu (debian)`
|`centos/7`

## Contributors

Feel free to contact to discuss any issues, questions, or comments using the following github pages.

* [Yousuf Sadiq Mohammed](https://github.com/yousufsadiq11)
* [Brad Starkenberg](https://github.com/bstarke)
