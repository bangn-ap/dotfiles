{ pkgs, pkgsUnstable, ... }:
with pkgsUnstable; [
  alacritty
  asdf-vm
  bat
  bitwarden-cli
  buf
  buildkite-agent
  buildkite-cli
  caddy
  detekt
  docker-compose
  entr
  fd
  ghcid
  gitAndTools.delta
  gitAndTools.diff-so-fancy
  github-cli
  gopls
  gradle
  graphviz
  hadolint
  hlint
  htop
  hub
  jdk11
  jq
  k9s
  kubectl
  kubectx
  kubernetes-helm
  luajitPackages.luacheck
  mdl
  minikube
  mkcert
  moreutils
  ncdu
  ngrok
  nixfmt
  nixpkgs-fmt
  nushell
  pandoc
  pdftk
  plantuml
  postgresql_12
  python312Packages.sqlparse
  ripgrep
  shellcheck
  shfmt
  sqlint
  stow
  stylish-haskell
  stylua
  terraform-ls
  tig
  tldr
  tree
  tree-sitter
  watch
  wget
  xclip
  yaml-language-server
  yamllint
  yapf
  yarn
  yq
]
