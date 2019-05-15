
pip install -r requirements.txt

cp -rfp inventory/sample inventory/mycluster

mkdir /tmp/releases/kubeadm

cp ./resources/kubectl  /tmp/releases/kubeadm/

ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml -b -v -k