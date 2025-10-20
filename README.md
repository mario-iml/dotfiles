# Mario-iml - Dotfiles

## Getting started

### Prerequisites

- General
  - [Git](https://git-scm.com/downloads) - Version control
  - [Fish](https://fishshell.com/) - Shell
  - [Gnu Stow](https://www.gnu.org/software/stow/stow.html) - Manage dotfiles
  - [Neovim](https://neovim.io/) - Editor
- MacOS
  - [Raycast](https://www.raycast.com/) - App launcher
  - [Brew](https://brew.sh/) - Package manager for MacOS

### Installation

1. Install all the prerequisites
2. `git clone https://github.com/mario-iml/dotfiles.git ~/dotfiles`
3. `cd ~/dotfiles`
4. `stow . --adopt` - will overwrite ~/dotfiles with target configs
5. `git stash` - stash target configs to use the ones from git
