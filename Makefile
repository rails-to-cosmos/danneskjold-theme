PKG_FILE := danneskjold-theme-pkg.el
EL_FILE  := danneskjold-theme.el

VERSION := $(shell sed -n 's/.*"\([0-9]*\.[0-9]*\.[0-9]*\)".*/\1/p' $(PKG_FILE))
MAJOR   := $(word 1,$(subst ., ,$(VERSION)))
MINOR   := $(word 2,$(subst ., ,$(VERSION)))
PATCH   := $(word 3,$(subst ., ,$(VERSION)))

.PHONY: major minor patch version

version:
	@echo $(VERSION)

major:
	$(eval NEW := $(shell echo $$(($(MAJOR)+1))).0.0)
	@$(MAKE) --no-print-directory _bump NEW=$(NEW)

minor:
	$(eval NEW := $(MAJOR).$(shell echo $$(($(MINOR)+1))).0)
	@$(MAKE) --no-print-directory _bump NEW=$(NEW)

patch:
	$(eval NEW := $(MAJOR).$(MINOR).$(shell echo $$(($(PATCH)+1))))
	@$(MAKE) --no-print-directory _bump NEW=$(NEW)

_bump:
	sed -i 's/$(VERSION)/$(NEW)/' $(PKG_FILE) $(EL_FILE)
	@echo "$(VERSION) -> $(NEW)"
