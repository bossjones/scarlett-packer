#!/bin/bash

set -e
set -x

mkdir -p /usr/lib/post-base-installer.d &&                                                                                              \
echo "sed -i -e 's/^in-target.*tasksel.*/#\\0/' /var/lib/dpkg/info/pkgsel.postinst" > /usr/lib/post-base-installer.d/90skip-tasksel &&  \
chmod +x /usr/lib/post-base-installer.d/90skip-tasksel


echo 'Defaults:pi !requiretty' > /etc/sudoers.d/pi               && \
echo 'pi ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/pi            && \
echo '%pi ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/pi            && \
chmod 440 /etc/sudoers.d/pi                                       && \
ln -sf /dev/null /etc/systemd/network/99-default.link             && \
update-initramfs -u
