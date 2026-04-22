if set -q __ETC_PROFILE_ZODIUM_SOURCED; return; end
set -x __ETC_PROFILE_ZODIUM_SOURCED 1

set -x GSK_RENDERER opengl
set -x GDK_BACKEND wayland
set -x GTK_USE_PORTAL 1
set -x NO_AT_BRIDGE 1