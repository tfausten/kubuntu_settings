ansible:  # install this into some virtual environment
	python3 -m pip install ansible ansible-lint

requirements:
	ansible-galaxy install --force -r requirements.yaml

all-roles:
	ansible-playbook -vv site.yaml

save-guake-prefs:
	ansible-playbook -vv site.yaml -t guake -e save_guake_prefs=true

restore-guake-prefs:
	ansible-playbook -vv site.yaml -t guake -e restore_guake_prefs=true
