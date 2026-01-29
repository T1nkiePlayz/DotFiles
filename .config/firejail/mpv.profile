# App: Mpv
# Purpose: Sandboxed GUI application
# Author: T1nkie
# Based on upstream Firejail mpv profile

quiet

include globals.local
include mpv.local

# ========== Filesystem ==========

# Fully private home, we whitelist back what mpv needs
private
private-tmp
private-dev
# NOTE: private-cache is intentionally NOT used

# Read-only home by default

read-only ${HOME}
read-only ${DESKTOP}

# ---- mpv runtime paths ----
mkdir ${HOME}/.cache/mpv
mkdir ${HOME}/.config/mpv
mkdir ${HOME}/.local/state/mpv

noblacklist ${HOME}/.cache/mpv
noblacklist ${HOME}/.config/mpv
noblacklist ${HOME}/.local/state/mpv

whitelist ${HOME}/.cache/mpv
whitelist ${HOME}/.config/mpv
whitelist ${HOME}/.local/state/mpv

# ---- yt-dlp / youtube-dl ----
noblacklist ${HOME}/.config/youtube-dl
noblacklist ${HOME}/.config/yt-dlp
noblacklist ${HOME}/.config/yt-dlp.conf
noblacklist ${HOME}/yt-dlp.conf
noblacklist ${HOME}/yt-dlp.conf.txt

whitelist ${HOME}/.config/youtube-dl
whitelist ${HOME}/.config/yt-dlp
whitelist ${HOME}/.config/yt-dlp.conf
whitelist ${HOME}/yt-dlp.conf
whitelist ${HOME}/yt-dlp.conf.txt

# ---- mpv assets ----
whitelist /usr/share/mpv
whitelist /usr/share/lua*

# ---- truenas ----
noblacklist /mnt/truenas
whitelist /mnt/truenas

include whitelist-common.inc
include whitelist-player-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

# ========== Language Runtimes ==========
# (Lua + Python for scripts)

# mpv Lua scripts
include allow-lua.inc

# yt-dlp + scripting
include allow-python2.inc
include allow-python3.inc

# ========== Binary Execution ==========

# mpv links against libluajit, no need for lua binary
private-bin env,mpv,python*,waf,youtube-dl,yt-dlp

blacklist /usr/libexec

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-programs.inc
include disable-shell.inc

# ========== Network ==========
#
netfilter
protocol unix,inet,inet6,netlink

#net=eno1

# ========== Security ==========
caps.drop all
nonewprivs
restrict-namespaces
noinput
nou2f
noroot

seccomp !set_mempolicy
seccomp.block-secondary

dbus-user none
dbus-system none

# ========== Devices ==========
nogroups
#nosound
#no3d

# Uncomment if needed
# x11
# wayland

# ========== AppArmor ==========
apparmor
