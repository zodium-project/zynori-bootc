#!/usr/bin/env bash
set -Eeuo pipefail

repo="Nomadcxx/sysc-greet"
tmpdir="$(mktemp -d /tmp/sysc-greet.XXXXXX)"
trap 'rm -rf "$tmpdir"' EXIT INT TERM

rpm_url="$(
  curl -fsSL "https://api.github.com/repos/$repo/releases/latest" \
    | grep -oP '"browser_download_url": "\K[^"]+sysc-greet-[^"]+-1\.x86_64\.rpm' \
    | head -n1
)"

[[ -n "$rpm_url" ]] || {
  echo "No x86_64 RPM found in latest release." >&2
  exit 1
}

rpm_file="$tmpdir/$(basename "$rpm_url")"

echo "Downloading: $rpm_url"
curl -fL "$rpm_url" -o "$rpm_file"

echo "Installing: $rpm_file"
sudo dnf install -y "$rpm_file"