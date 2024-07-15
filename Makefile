# Makefile for managing Ansible tasks

# Variables
SETUP_PLAYBOOK = sandbox-setup.yml

# Ansible targets
.PHONY: all lint setup

all: lint

# Target to run the Ansible playbook
setup-m0:
	ansible-playbook $(SETUP_PLAYBOOK) -i inventory-m0.yml --become --become-method=sudo

setup-m1:
	ansible-playbook $(SETUP_PLAYBOOK) -i inventory-m1.yml --become --become-method=sudo

# Target to lint the Ansible playbook
lint:
	ansible-lint $(SETUP_PLAYBOOK)

# Help target to display usage information
help:
	@echo "Makefile for managing Ansible tasks"
	@echo ""
	@echo "Usage:"
	@echo "  make setup-m*  Bootstrap VIRT server"
	@echo "  make lint       Lint the Ansible playbook with ansible-lint"
	@echo "  make help       Display this help message"
