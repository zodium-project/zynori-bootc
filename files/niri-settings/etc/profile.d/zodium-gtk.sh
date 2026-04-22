if [ -n "${__ETC_PROFILE_ZODIUM_SOURCED:-}" ]; then return; fi
export __ETC_PROFILE_ZODIUM_SOURCED=1

export GSK_RENDERER=opengl
export GDK_BACKEND=wayland
export GTK_USE_PORTAL=1
export NO_AT_BRIDGE=1