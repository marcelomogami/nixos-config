{ config, pkgs, ... }:

{
  home.username = "celo"; # Troque pelo seu usuário da VM
  home.homeDirectory = "/home/celo";
  home.stateVersion = "23.11"; 

  # Programas do usuário
  home.packages = with pkgs; [
    google-chrome
    vscode
    htop
    remmina
    openvpn
    vscode
  ];

  # Configurações de programas (ex: Git)
  programs.git = {
    enable = true;
    userName = "Marcelo MOgami";
    userEmail = "marcelomogami@gmail.com";
  };

  # Deixe o Home Manager gerenciar a si mesmo
  programs.home-manager.enable = true;
}