if [ -n "${__ETC_PROFILE_ZODIUM_SOURCED:-}" ]; then return; fi
export __ETC_PROFILE_ZODIUM_SOURCED=1

export XDG_DATA_DIRS="$XDG_DATA_DIRS:/etc/zodium"