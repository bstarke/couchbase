cp -r inventory/ ~/ansible-couchbase-repo/
cp -r playbooks/ ~/ansible-couchbase-repo/
cp -r plugins/ ~/ansible-couchbase-repo/
cp -r roles/ ~/ansible-couchbase-repo/
cp -r .vagrant ~/ansible-couchbase-repo
cp ansible.cfg ~/ansible-couchbase-repo/
sudo chmod -R 755  ~/ansible-couchbase-repo/.vagrant/machines *
sudo chmod 600  ~/ansible-couchbase-repo/.vagrant/machines/cb1/virtualbox/private_key
sudo chmod 600  ~/ansible-couchbase-repo/.vagrant/machines/cb2/virtualbox/private_key
sudo chmod 600  ~/ansible-couchbase-repo/.vagrant/machines/cbg1/virtualbox/private_key
