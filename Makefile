NO_XREF=1
HAS_ELIXIR=1

include bu.mk

disclean::
	$(verbose) rm -rf doc

release: dist lint tag
	$(verbose) $(REBAR) hex publish

script:
	@$(REBAR) escriptize

