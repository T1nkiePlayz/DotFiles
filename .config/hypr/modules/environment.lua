-- Environment

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.env(
    "XDG_DATA_DIRS",
    os.getenv("HOME") ..
    "/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
)

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

hl.env("TERMINAL", "ghostty")
