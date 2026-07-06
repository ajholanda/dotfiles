

default:
	ansible-playbook desktops.yml

venv:
	virtualenv $@

ansible: venv
	pip install ansible

roles: requirements.yml
	ansible-galaxy role install -r $< --ignore-errors
