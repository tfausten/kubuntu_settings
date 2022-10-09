dependencies:
	sudo -H pip install undervolt

enable: THIS_DIR = $(shell realpath $(shell dirname "$0"))
enable:
	sudo ln -sf $(THIS_DIR)/undervolt.service /etc/systemd/system/undervolt.service
	sudo ln -sf $(THIS_DIR)/undervolt.timer /etc/systemd/system/undervolt.timer
	sudo systemctl enable undervolt
	sudo systemctl start undervolt

install: dependencies enable

disable:
	sudo systemctl stop undervolt
	sudo systemctl disable undervolt
