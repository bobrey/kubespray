
pip install -r requirements.txt

cp -rfp inventory/sample inventory/mycluster

tar -cvf resources/kubernetes-client-linux-amd64.tar.gz /tmp/releases/kubeadm

ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml -b -v -k