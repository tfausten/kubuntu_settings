ansible:  # install this into some virtual environment
	python3 -m pip install ansible ansible-lint

requirements:
	ansible-galaxy install --force -r requirements.yaml

all-roles:
	ansible-playbook -vv site.yaml