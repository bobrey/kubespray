
pip install -r requirements.txt

cp -rfp inventory/sample inventory/mycluster

ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml -b -v -k