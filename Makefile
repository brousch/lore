# Project settings
WD := $(shell pwd)
PROJECT_DIR := $(WD)/lore
VENV := $(WD)/venv
PY := $(VENV)/bin/python
PIP := $(VENV)/bin/pip
BUILDOZER := $(VENV)/bin/buildozer

.PHONY: debug
debug:
	$(BUILDOZER) --verbose android debug

.PHONY: serve
serve:
	$(BUILDOZER) serve

.PHONY: install_gittle
install_gittle:
	cd $(PROJECT_DIR); \
	rm -rf gittle; \
	git clone https://github.com/FriendCode/gittle.git repo; \
	mv repo/gittle ./; \
	rm -rf repo

.PHONY: install_mimer
install_mimer:
	cd $(PROJECT_DIR); \
	rm -rf mimer; \
	git clone https://github.com/FriendCode/mimer.git repo; \
	mv repo/mimer ./; \
	rm -rf repo

.PHONY: install_dulwich
install_dulwich:
	cd $(PROJECT_DIR); \
	rm -rf dulwich; \
	git clone https://github.com/jelmer/dulwich.git repo; \
	mv repo/dulwich ./; \
	rm -rf repo

.PHONY: install
install: install_dulwich install_mimer install_gittle
	sudo rm -rf $(VENV)
	./install_kivy_stable_virtualenv.sh
	$(PIP) install -r requirements.txt

