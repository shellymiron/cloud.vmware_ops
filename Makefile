.PHONY: install-python-packages
install-python-packages:
	pip3 install -r tests/integration/requirements.txt

.PHONY: install-ansible-collections
install-ansible-collections:
	ansible-galaxy collection install -r tests/integration/requirements.yml

.PHONY: integration
integration: install-python-packages install-ansible-collections
	ansible-test integration --no-temp-workdir

# .PHONY: e2e
# e2e:
# 	install-python-packages install-ansible-collections
# 	docker run --rm \
# 		-v ${PWD}:/github/workspace \
# 		-w /github/workspace \
# 		gofrolist/molecule:v2.7.13 \
# 		molecule test --scenario-name provision_vm
