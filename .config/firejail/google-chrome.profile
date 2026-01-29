# Firejail profile for Google Chrome
# File: google-chrome.profile
# Author: T1nkie
# Based on upstream Firejail google-chrome profile
#
# ===== General =====
quiet
include google-chrome.local
include globals.local

# ===== Filesystem =====

noblacklist ${HOME}/.cache/google-chrome
noblacklist ${HOME}/.config/google-chrome

noblacklist ${HOME}/.config/chrome-flags.conf
noblacklist ${HOME}/.config/chrome-flags.config

mkdir ${HOME}/.cache/google-chrome
mkdir ${HOME}/.config/google-chrome
whitelist ${HOME}/.cache/google-chrome
whitelist ${HOME}/.config/google-chrome

whitelist ${HOME}/.config/chrome-flags.conf
whitelist ${HOME}/.config/chrome-flags.config

# ===== Redirect =====
include chromium-common.profile

# ===== Networking =====
netfilter
protocol unix,inet,inet6,netlink

# ===== Security =====
apparmor
nodvd
nogroups
noinput
notv
