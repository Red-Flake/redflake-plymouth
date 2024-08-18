# Red-Flake plymouth theme

This is a very simple plymouth theme for nixos containing a static image of the nixos logo.

![screenshot](screenshot.png)

## Install

To install it, you would add this to your nixos configuration file :

```nix
let
  redflake-plymouth-src = pkgs.fetchFromGitHub {
    owner = "Red-Flake";
    repo = "redflake-plymouth";
    rev = "master";
    sha256 = "";
  };
  redflake-plymouth = pkgs.callPackage redflake-plymouth-src {};
in
{
  boot.plymouth = {
    enable = true;
    themePackages = [ redflake-plymouth ];
    theme = "redflake-plymouth";
  };
}
```
