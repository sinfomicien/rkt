$(call setup-stamp-file,UFH_STAMP)

S1_RF_USR_STAMPS += $(UFH_STAMP)

$(call generate-stamp-rule,$(UFH_STAMP),,$(S1_RF_ACIROOTFSDIR), \
	$(call vb,v2,LN SF,host $(S1_RF_ACIROOTFSDIR)/flavor) \
	ln -sf 'host' "$(S1_RF_ACIROOTFSDIR)/flavor" && \
	mkdir -p "$(S1_RF_ACIROOTFSDIR)/usr/lib" && \
	mkdir -p "$(S1_RF_ACIROOTFSDIR)/usr/lib64" && \
	ln -sf 'lib' "$(S1_RF_ACIROOTFSDIR)/usr/lib" && \
	ln -sf 'lib64' "$(S1_RF_ACIROOTFSDIR)/usr/lib64")


CLEAN_SYMLINKS += $(S1_RF_ACIROOTFSDIR)/flavor $(S1_RF_ACIROOTFSDIR)/lib64 $(S1_RF_ACIROOTFSDIR)/lib

CLEAN_DIRS += $(S1_RF_ACIROOTFSDIR)/usr/lib

$(call undefine-namespaces,UFH)
