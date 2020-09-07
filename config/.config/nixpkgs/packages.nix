{ pkgs, ... }:
with pkgs;
[
  alacritty
  autojump
  awscli
  awslogs
  bat
  ctags
  curlFull
  docker-compose
  entr
  faac # required for zoom
  fd
  ghcid
  gitAndTools.delta
  gitAndTools.diff-so-fancy
  gitAndTools.hub
  glibcLocales
  google-chrome-dev
  google-cloud-sdk
  graphviz
  hlint
  htop
  jq
  kdiff3
  lastpass-cli
  mdl
  ncdu
  neovim-nightly
  neuron-notes
  niv
  nixops
  nixpkgs-fmt
  nnn
  pandoc
  pdftk
  pinta
  plantuml
  postgresql_12
  python38Packages.sqlparse
  python38Packages.yamllint
  ripgrep
  rofi
  saml2aws
  shellcheck
  shfmt
  slack-dark
  stow
  stylish-haskell
  sxiv
  thunderbird-78
  trash-cli
  tree
  xclip
  xcompmgr
  xorg.xinput
  yamllint
  yq
  zoom-us
]
