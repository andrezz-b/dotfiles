#!/bin/bash

# Sanity check script to verify all required packages are installed
# Works on both macOS and Linux

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Counters
MISSING=0
INSTALLED=0

echo "=========================================="
echo "Package Installation Sanity Check"
echo "=========================================="
echo ""

# Function to check if a command exists
check_command() {
    local cmd=$1
    local package_name=${2:-$1}
    local version_flag=${3:---version}

    if command -v "$cmd" &>/dev/null; then
        local version=""
        # Try to get version information
        if [[ "$version_flag" != "none" ]]; then
            version=$("$cmd" $version_flag 2>&1 | head -n 1 | sed 's/^[[:space:]]*//' || echo "")
        fi

        if [[ -n "$version" ]]; then
            echo -e "${GREEN}✓${NC} $package_name - ${YELLOW}$version${NC}"
        else
            echo -e "${GREEN}✓${NC} $package_name ($(command -v "$cmd"))"
        fi
        ((INSTALLED++))
        return 0
    else
        echo -e "${RED}✗${NC} $package_name is NOT installed"
        ((MISSING++))
        return 1
    fi
}

# Core tools
echo "Core Tools:"
echo "----------"
check_command "zsh" "zsh (Shell)"
check_command "git" "git (Version Control)"
check_command "curl" "curl"
echo ""

# CLI Tools
echo "CLI Tools:"
echo "----------"
check_command "eza" "eza (Modern ls replacement)"
check_command "bat" "bat (Cat with syntax highlighting)"
check_command "fzf" "fzf (Fuzzy finder)"
check_command "fd" "fd (Modern find replacement)"
check_command "zoxide" "zoxide (Smarter cd command)"
check_command "mise" "mise (Runtime version manager)"
check_command "bw" "bitwarden-cli"
check_command "lazygit" "lazygit"
check_command "rg" "ripgrep"
check_command "convert" "imagemagick" "-version"
check_command "nvim" "neovim (Text editor)"
echo ""

# Terminal & Prompt
echo "Terminal & Prompt:"
echo "------------------"
check_command "tmux" "tmux (Terminal multiplexer)" "-V"
check_command "sesh" "sesh (Tmux session manager)"
check_command "oh-my-posh" "oh-my-posh (Prompt theme engine)"
echo ""

# Applications
echo "Applications:"
echo "-------------"
check_command "kitty" "kitty (Terminal emulator)" "+version"
echo ""

# Summary
echo "=========================================="
echo "Summary:"
echo "=========================================="
echo -e "${GREEN}Installed: $INSTALLED${NC}"
echo -e "${RED}Missing:   $MISSING${NC}"
echo ""

if [ $MISSING -eq 0 ]; then
    echo -e "${GREEN}✓ All required packages are installed!${NC}"
    exit 0
else
    echo -e "${YELLOW}⚠ Some packages are missing. Please install them.${NC}"
    echo ""
    echo "To install missing packages:"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "  Run: chezmoi apply"
        echo "  Or: brew bundle --file=~/.local/share/chezmoi/scripts/Brewfile"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "  Run: chezmoi apply"
        echo "  Or manually run: ~/.local/share/chezmoi/scripts/run_once_before_install-packages-linux.sh.tmpl"
    fi
    exit 1
fi
