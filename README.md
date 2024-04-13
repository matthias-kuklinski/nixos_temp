## (Re)Install
`nix run github:nix-community/nixos-anywhere -- --flake '.#default' root@192.168.178.4`

## Update
### Local
`nixos-rebuild switch --flake .#default --target-host "root@192.168.178.4"`

### Remote
`nixos-rebuild switch --flake github:matthias-kuklinski/nixos_temp#default --target-host "root@192.168.178.4"`

## Misc
### Disko
`nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ./disko.nix --arg device '"/dev/nvme0n1"'`

### NixOS
`nixos-install --root /mnt --flake .#default`

# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
