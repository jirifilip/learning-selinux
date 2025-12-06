chmod 0600 /run/secrets/private_key
ansible-galaxy install -r requirements.yaml
ansible-playbook playbook.yaml
