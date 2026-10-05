-- DMS Window Rules — managed by DankMaterialShell
-- Do not edit manually; changes may be overwritten

-- DMS-RULE: id=wr_1783895501699727527, name=Blueman Manager
hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true })

-- DMS-RULE: id=wr_1783895678202548904, name=Xdg Desktop Portal
hl.window_rule({ match = { class = "^(xdg-desktop-portal)$" }, float = true })

-- DMS-RULE: id=wr_1783895723786227647, name=Steam
hl.window_rule({ match = { class = "^(steam)$", title = "^(notificationtoasts)" }, no_focus = true, pin = true })

-- DMS-RULE: id=wr_1783897207071012025, name=Zen Browser PiP
hl.window_rule({ match = { class = "^(app.zen_browser.zen)$", title = "^(Picture-in-Picture)$" }, float = true })

-- DMS-RULE: id=wr_1783898777289113247, name=Steam Friends List
hl.window_rule({ match = { class = "^steam$", title = "^(Friends List)$" }, float = true })

-- DMS-RULE: id=wr_1784097731100517164, name=Godot Project Manager
hl.window_rule({ match = { class = "^org.godotengine.ProjectManager$" }, pin = true, monitor = "DP-2", workspace = "5" })

-- DMS-RULE: id=wr_1784098196206057895, name=Godot Large Popup
hl.window_rule({ match = { class = "^org.godotengine.ProjectManager$", title = "^(Create New Project|Manage Project Tags)$" }, float = true, pin = true })

-- DMS-RULE: id=wr_1784098403641361421, name=Godot Small Popup
hl.window_rule({ match = { class = "^org.godotengine.ProjectManager$", title = "^(Error|Please Confirm...|Rename Project|Duplicate Project|Quick Settings)$" }, float = true, pin = true, rounding = 18 })

-- DMS-RULE: id=wr_1784175354791749536, name=Godot Editor Small Popup
hl.window_rule({ match = { class = "^org.godotengine.Editor$", title = "^(Create Folder|Create New Scene|Create Script|Please Confirm...|Renaming Layer 1:|Renaming Layer 2:|Renaming Layer 3:|Renaming Layer 4:|Renaming Layer 5:|Renaming Layer 6:|Renaming Layer 7:|Renaming Layer 8:|Attach Node Script|Create New Animation|Create Shader)$" }, float = true, pin = true, rounding = 18 })

-- DMS-RULE: id=wr_1784175748760797968, name=Godot Editor Large Popup
hl.window_rule({ match = { class = "^org.godotengine.Editor$", title = "^(Create New Node|Select Scene|Create New Resource|Search Help|Edit Text:|Add Item Type)$" }, float = true, pin = true })

-- DMS-RULE: id=wr_1784175950565147622, name=Godot Editor File Explorer
hl.window_rule({ match = { class = "^org.godotengine.Editor$", title = "^(New Text File...|Open Base Scene|Save Scene As...|Save scene before running...|Save new main scene...|Save Resource As...|Open a File)$" }, float = true, pin = true })

-- DMS-RULE: id=wr_1784176842027373611, name=Bitwarden
hl.window_rule({ match = { class = "^chrome-nngceckbapebfimnlniiiahkandclblb-Default$" }, float = true, pin = true, rounding = 18 })

-- DMS-RULE: id=dms-floating-windows, name=DMS Floating Windows
hl.window_rule({ match = { class = "^com.danklinux.dms$" }, float = true })

-- DMS-RULE: id=wr_1789385860349848271, name=net.futureclient.installer.Ow
hl.window_rule({ match = { class = "^net.futureclient.installer.Ow$" }, float = true })
