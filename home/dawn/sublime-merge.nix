{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.sublime-merge
  ];
}