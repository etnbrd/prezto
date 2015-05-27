# This file is a merge between scm_breeze.sh and scmbrc.zsh
export scmbDir="${0:h}/external"

#
# Design Assets Management Config
# ----------------------------------------------------------------
# Directory where design assets are stored
export root_design_dir="$HOME/Dropbox/Design"
# Directory where symlinks are created within each project
export project_design_dir="design_assets"
# Directories for per-project design assets
export design_base_dirs="Documents Flowcharts Images Backgrounds Logos Icons Mockups Screenshots"
export design_av_dirs="Animations Videos Flash Music Samples"
# Directories for global design assets (not symlinked into projects)
export design_ext_dirs="Fonts IconSets"

# Shared functions
source "$scmbDir/lib/scm_breeze.sh"
# Design assets management
source "$scmbDir/lib/design.sh"

# Git
# ------------------------------------------------------------
if [[ -s "${0:h}/git.scmbrc" ]]; then
  # Load git config
  source "${0:h}/git.scmbrc"
  source "$scmbDir/lib/git/helpers.sh"
  source "$scmbDir/lib/git/aliases.sh"
  source "$scmbDir/lib/git/keybindings.sh"
  source "$scmbDir/lib/git/status_shortcuts.sh"
  source "$scmbDir/lib/git/branch_shortcuts.sh"
  source "$scmbDir/lib/git/shell_shortcuts.sh"
  source "$scmbDir/lib/git/repo_index.sh"
  source "$scmbDir/lib/git/tools.sh"

  if ! type ruby > /dev/null 2>&1; then
    # If Ruby is not installed, fall back to the
    # slower bash/zsh implementation of 'git_status_shortcuts'
    source "$scmbDir/lib/git/fallback/status_shortcuts_shell.sh"
  fi
fi