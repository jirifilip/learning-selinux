set shell := ["powershell.exe", "-c"]

ansible-run:
    docker run --rm -it -v "${PWD}/.vagrant/machines/default/virtualbox/private_key:/run/secrets/private_key" -v "${PWD}/provisioning:/provisioning" -w "/provisioning" -e "ANSIBLE_CONFIG=./ansible.cfg" alpine/ansible bash ./run.sh

ansible-attach:
    docker run --rm -it -v "${PWD}/.vagrant/machines/default/virtualbox/private_key:/run/secrets/private_key" -v "${PWD}/provisioning:/provisioning" -w "/provisioning" -e "ANSIBLE_CONFIG=./ansible.cfg" alpine/ansible /bin/bash
