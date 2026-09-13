function sysup
  sudo dnf upgrade --refresh -y

  flatpak update -y
  flatpak uninstall --unused -y

  mise upgrade -y
  mise prune -y
end
