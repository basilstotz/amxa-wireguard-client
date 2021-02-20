.PHONY: package
package:
	@find . -name amxa-wireguard-client_\*_amd64.deb -exec rm \{\} \;
	@./bin/package.sh

.PHONY: install
install: package
	@sudo find . -name amxa-wireguard-client_\*_amd64.deb -exec dpkg -i \{\} \;

