# nixos configuration

This is the configuration for the user account `jv`.
It currently requires home-manager be installed by the system.

## nixos-system configuration
The main [configuration](https://github.com/johnviolano/nixos-system) file installs home-manager.

```
git clone https://github.com/johnviolano/nixos-home-jv.git ~/.nixos-home-jv
cd .config
ln -s ~/.nixos-home-jv/.config/nixpkgs nixpkgs
```

