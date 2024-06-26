#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)
# Options
cask_args appdir: '~/Applications', require_sha: true

# Taps
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'blacktop/tap'
tap 'browsh-org/homebrew-browsh'
tap 'espanso/espanso'
tap 'jesseduffield/lazygit'
tap 'koekeishiya/formulae'
tap 'kdash-rs/kdash'
# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
# brew install bash
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#  chsh -s "${BREW_PREFIX}/bin/bash";
#fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# CLI Essentials
brew 'git'          # Version control
brew 'neovim'       # Text editor
brew 'ranger'       # Directory browser
brew 'tmux'         # Term multiplexer
# CLI Basics
brew 'aria2'        # Resuming download util (better wget)
brew 'bat'          # Output highlighting (better cat)
brew 'broot'        # Interactive directory navigation
brew 'ctags'        # Indexing of file info + headers
brew 'diff-so-fancy'# Readable file compares (better diff)
brew 'duf'          # Get info on mounted disks (better df)
brew 'entr'         # Run command whenever file changes
brew 'exa'          # Listing files with info (better ls)
brew 'exiftool'     # Read, write and modify exif data
brew 'fzf'          # Fuzzy file finder and filtering
brew 'hyperfine'    # Benchmarking for arbitrary commands
brew 'jdupes'       # Duplicate file finder
brew 'just'         # Powerful command runner (better make)
brew 'jq'           # JSON parser, output and query files
brew 'most'         # Multi-window scroll pager (better less)
brew 'procs'        # Advanced process viewer (better ps)
brew 'ripgrep'      # Searching within files (better grep)
brew 'rsync'        # Fast incremental file transfer
brew 'sd'           # RegEx find and replace (better sed)
brew 'thefuck'      # Auto-correct miss-typed commands
brew 'tldr'         # Community-maintained docs (better man)
brew 'tokei'        # Count lines of code (better cloc)
brew 'tree'         # Directory listings as tree structure
brew 'trash-cli'    # Record and restore removed files
brew 'watch'        # Run commands periorically
brew 'xsel'         # Copy paste access to the X clipboard
brew 'zoxide'       # Auto-learning navigation (better cd)

# CLI Monitoring and Performance Apps
brew 'bmon'         # Bandwidth utilization monitor
brew 'ctop'         # Container metrics and monitoring
brew 'dog'          # DNS lookup client (better dig)
brew 'bpytop'       # Resource monitoring (like htop)
brew 'dua-cli'      # Disk usage analyzer and monitor (better du)
brew 'glances'      # Resource monitor + web and API
brew 'goaccess'     # Web log analyzer and viewer
brew 'gping'        # Interactive ping tool, with graph
brew 'speedtest-cli'# Command line speed test utility

# CLI Productivity Apps
brew 'aspell'       # Spell check
brew 'browsh'       # Web browser, in terminal
brew 'buku'         # Bookmark manager
brew 'cmus'         # Music player
#brew 'cointop'      # Crypto prices and portfolio
brew 'ddgr'         # Web search, via DuckDuckGo
brew 'khal'         # Calendar client
brew 'mutt'         # Email client
brew 'newsboat'     # RSS / ATOM reader
brew 'pass'         # Password store
brew 'rclone'       # Manage cloud storage
brew 'task'         # Todo + task management

# CLI Development Suits
brew 'httpie'       # HTTP / API testing testing client
brew 'lazydocker'   # Full Docker management app
brew 'lazygit'      # Full Git management app
brew 'kdash'        # Kubernetes management

# CLI External Sercvices
cask 'ngrok'        # Reverse proxy for sharing localhost
brew 'tmate'        # Share a terminal session via internet
brew 'asciinema'    # Recording + sharing terminal sessions
brew 'navi'         # Browse, search, read cheat sheets

# CLI Fun
brew 'cowsay'       # Have an ASCII cow say your message
brew 'figlet'       # Output text as big ASCII art text
brew 'lolcat'       # Make console output rainbow colored
brew 'neofetch'     # Show system data and ditstro info
brew 'pipes-sh'     # Cool terminal pipe screen saver
brew 'pv'           # Pipe viewer, with animation options

#############################################################
# Software Development                                      #
#############################################################

# Development Apps
cask 'android-studio' # IDE for Android development
cask 'boop'           # Text transformation tool
brew 'gradle'         # Build automation for Java
cask 'iterm2'         # Better terminal emulator
cask 'postman'        # HTTP API testing app
cask 'sourcetree'     # Git visual client
cask 'visual-studio-code' # Code editor

# Development Langs, Compilers, Package Managers and SDKs
#brew 'gcc'            # GNU C++ compilers
#brew 'go'             # Compiler for Go Lang
#brew 'lua'            # Lua interpreter
#brew 'luarocks'       # Package manager for Lua
brew 'node'           # Node.js
brew 'nvm'            # Switching node versions
brew 'openjdk'        # Java development kit
brew 'python'         # Python interpreter
#brew 'rust'           # Rust language
cask 'android-sdk'    # Android software dev kit

# DevOps
brew 'ansible'        # Automation
brew 'docker'         # Containers

# Development Utils
brew 'gh'             # Interact with GitHub PRs, issues, repos
brew 'git-extras'     # Extra git commands for common tasks
brew 'scrcpy'         # Display and control Android devices
brew 'terminal-notifier' # Trigger Mac notifications from terminal
brew 'tig'            # Text-mode interface for git
brew 'ttygif'         # Generate GIF from terminal commands + output
brew 'watchman'       # Watch for changes and reload dev server

# Network and Security Testing
brew 'bettercap'      # Network, scanning and monitoring
brew 'nmap'           # Port scanning
brew 'wrk'            # HTTP benchmarking
cask 'burp-suite'     # Web security testing
cask 'owasp-zap'      # Web app security scanner
cask 'wireshark'      # Network analyzer + packet capture

# Security Utilities and Data Encryption
brew 'bcrypt'         # Encryption utility, using blowfish
brew 'borgbackup'     # Encrypted, deduplicated backups
brew 'clamav'         # Open source virus scanning suite
brew 'dnscrypt-proxy' # Proxy for using encrypted DNS
cask 'gpg-suite'      # PGP encryption for emails and files
brew 'git-crypt'      # Transparent encryption for git repos
brew 'lynis'          # Scan system for common security issues
brew 'openssl'        # Cryptography and SSL/TLS Toolkit
brew 'rkhunter'       # Search / detect potential root kits
cask 'veracrypt'      # File and volume encryption

#############################################################
# Desktop Applications                                      #
#############################################################

# Creativity
cask 'audacity'     # Audio editor / recorder
#cask 'gimp'         # Photo editor
brew 'handbrake'    # Video transcoder
cask 'inkscape'     # Vector editor
#cask 'obs'          # Screencasting / recording
cask 'shotcut'      # Video editor

# Media
#cask 'calibre'      # E-Book reader
cask 'spotify', args: { require_sha: false } # Propietary music streaming
cask 'transmission' # Torrent client
cask 'vlc'          # Media player
brew 'pandoc'       # Universal file converter
brew 'youtube-dl'   # YouTube video downloader

# Personal Applications
cask 'bitwarden'      # Password manager (proprietary)
#cask 'tresorit'       # Encrypted file backup (proprietary)
cask 'standard-notes' # Encrypted synced notes
cask 'signal'         # Link to encrypted mobile messenger
#cask 'ledger-live'    # Crypto hardware wallet manager
cask 'mountain-duck'  # Mount remote storage locations
cask 'protonmail-bridge' # Decrypt ProtonMail emails
cask 'protonvpn'      # Client app for ProtonVPN
cask 'vorta'          # GUI for BorgBackup

# Browsers
#cask 'firefox'
cask 'chromium'
#cask 'orion'

#############################################################
# MacOS-Specific Stuff                                      #
#############################################################

# Fonts
tap 'homebrew/cask-fonts'
cask 'font-fira-code'
cask 'font-hack'
cask 'font-inconsolata'
cask 'font-meslo-lg-nerd-font'
cask "font-anonymous-pro"
cask "font-fira-code"
cask "font-fira-code-nerd-font"
cask "font-fira-mono"
cask "font-fira-mono-for-powerline"
cask "font-fira-mono-nerd-font"
cask "font-hack"
cask "font-hack-nerd-font"
cask "font-inconsolata"
cask "font-intel-one-mono"
cask "font-jetbrains-mono"
cask "font-jetbrains-mono-nerd-font"
cask "font-sauce-code-pro-nerd-font"
cask "font-source-code-pro"
cask "font-source-code-pro-for-powerline"

# Mac OS Quick-Look Plugins
cask 'qlcolorcode'    # QL for code with highlighting
cask 'qlimagesize'    # QL for size info for images
cask 'qlmarkdown'     # QL for markdown files
cask 'qlprettypatch'  # QL for patch / diff files
cask 'qlstephen'      # QL for dev text files
cask 'qlvideo'        # QL for video formats
cask 'quicklook-csv'  # QL for tables in CSV format
cask 'quicklook-json', args: { require_sha: false } # QL for JSON, with trees
cask 'quicklookapk',   args: { require_sha: false } # QL for Android APKs
cask 'webpquicklook',  args: { require_sha: false } # QL for WebP image files

# Mac OS Mods and Imrovments
cask 'alt-tab'        # Much better alt-tab window switcher
cask 'anybar'         # Custom programmatic menubar icons
cask 'copyq'          # Clipboard manager (cross platform)
cask 'espanso'        # Live text expander (cross-platform)
cask 'finicky'        # Website-specific default browser
cask 'hiddenbar'      # Hide / show annoying menubar icons
brew 'iproute2mac'    # MacOS port of netstat and ifconfig
brew 'lporg'          # Backup and restore launchpad layout
brew 'm-cli'          # All in one MacOS management CLI app
#cask 'mjolnir'        # Util for loading Lua automations
cask 'openinterminal' # Finder button, opens directory in terminal
cask 'raycast', args: { require_sha: false }  # Spotlight alternative
cask 'santa'          # Binary authorization for security
cask 'shottr'         # Better screenshot utility
brew 'skhd'           # Hotkey daemon for macOS
cask 'stats'          # System resource usage in menubar
brew 'yabai'          # Tiling window manager

# Mac OS Utility Apps
cask 'coteditor'      # Just a simple plain-text editor
cask 'little-snitch'  # Firewall app viewing / blocking traffic
cask 'keka'           # File archiver and extractor

# OTHER

cask "google-drive"
cask "intellij-idea"
cask "istat-menus"
cask "mullvadvpn"
cask "obsidian"
cask "oracle-jdk"
cask "orion"
cask "pieces"
cask "pieces-os"
cask "postico"
cask "postman"
cask "raindropio"
cask "raycast"
cask "shottr"
cask "signal"
cask "spotify"
cask "sublime-text"
cask "telegram"
cask "visual-studio-code"
cask "vlc"
cask "warp"
cask "webstorm"
cask "whatsapp"
cask "bitwarden"

#OTHERS

brew "xbar"
brew "swiftbar"
brew "colordiff"
brew "colortail"
brew "dockutil"
cask "blockblock"
cask "knockknock"
cask "lulu"
cask "syntax-highlight"
cask "tor browser"

# MAS

mas "2FAS - Two Factor Authentication Extension", id: 6443941139
mas "Aiko", id: 1672085276
mas "Amazing AI", id: 1660147028
mas "Bandwidth+", id: 490461369
mas "Hidden Bar", id: 1452453066
mas "iStat Menus", id: 1319778037
mas "Menu Bar Calendar", id: 1558360383
mas "reMarkable", id: 1276493162
mas "Save to Pocket", id: 1477385213
mas "Save to Raindrop.io", id: 1549370672
mas "TextSniper", id: 1528890965
mas "Tot", id: 1491071483

mas "Bear" 1091189122  # Bear
mas 497799835  # Xcode
mas 640199958  # Apple Developer
mas 1195076754  # Color Picker
mas "Big Day Countdown" 859894006 # Big Day Countdown


# Remove outdated versions from the cellar.
brew cleanup

# EOF

