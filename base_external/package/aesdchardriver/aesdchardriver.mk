
##############################################################
#
# aesdchardriver
#
##############################################################

#TODO: reference of assignment 3 git contents

AESDCHARDRIVER_VERSION = 8e5b4352d9d1ea2ad78b3af0b43dec020187ea7f
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHARDRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-MehulCUB.git
AESDCHARDRIVER_SITE_METHOD = git
AESDCHARDRIVER_GIT_SUBMODULES = YES
AESDCHARDRIVER_MODULE_SUBDIRS = aesd-char-driver/
# adding AESD char driver
define AESDCHARDRIVER_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin

endef
$(eval $(kernel-module))
$(eval $(generic-package))

