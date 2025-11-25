#!/bin/bash
# Setup script for path-math.com Jekyll site
# This script ensures the correct Ruby environment is set up using rbenv

set -e  # Exit on error

echo "🚀 Setting up path-math.com development environment..."
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if rbenv is installed
if ! command -v rbenv &> /dev/null; then
    echo -e "${YELLOW}⚠️  rbenv is not installed.${NC}"
    echo "Installing rbenv via Homebrew..."
    
    if ! command -v brew &> /dev/null; then
        echo -e "${RED}❌ Homebrew is not installed. Please install it first:${NC}"
        echo "   /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
        exit 1
    fi
    
    brew install rbenv ruby-build
    echo -e "${GREEN}✅ rbenv installed${NC}"
    echo ""
    echo -e "${YELLOW}⚠️  Please add rbenv to your shell configuration:${NC}"
    echo "   For zsh: echo 'eval \"\$(rbenv init - zsh)\"' >> ~/.zshrc"
    echo "   For bash: echo 'eval \"\$(rbenv init - bash)\"' >> ~/.bashrc"
    echo ""
    echo "Then restart your terminal or run: source ~/.zshrc (or ~/.bashrc)"
    echo ""
    read -p "Press Enter after you've added rbenv to your shell config..."
fi

# Initialize rbenv in this script
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Check if Ruby 3.3.3 is installed
if ! rbenv versions --bare | grep -q "^3.3.3$"; then
    echo -e "${YELLOW}⚠️  Ruby 3.3.3 is not installed. Installing...${NC}"
    rbenv install 3.3.3
    echo -e "${GREEN}✅ Ruby 3.3.3 installed${NC}"
else
    echo -e "${GREEN}✅ Ruby 3.3.3 is already installed${NC}"
fi

# Set local Ruby version
echo ""
echo "Setting local Ruby version to 3.3.3..."
rbenv local 3.3.3
echo -e "${GREEN}✅ Local Ruby version set to 3.3.3${NC}"

# Verify we're using the correct Ruby
CURRENT_RUBY=$(ruby -v | awk '{print $2}')
if [[ "$CURRENT_RUBY" != "3.3.3"* ]]; then
    echo -e "${RED}❌ Error: Still using wrong Ruby version: $CURRENT_RUBY${NC}"
    echo "Expected: 3.3.3"
    echo "Please ensure rbenv is initialized in your shell."
    exit 1
fi

echo -e "${GREEN}✅ Using Ruby $CURRENT_RUBY${NC}"
echo ""

# Install bundler if not already installed
if ! gem list bundler -i &> /dev/null; then
    echo "Installing bundler..."
    gem install bundler
    echo -e "${GREEN}✅ Bundler installed${NC}"
else
    echo -e "${GREEN}✅ Bundler is already installed${NC}"
fi

# Install project dependencies
echo ""
echo "Installing project dependencies (this may take a while)..."
bundle install

echo ""
echo -e "${GREEN}✅ Setup complete!${NC}"
echo ""
echo "To start the Jekyll server, run:"
echo "  bundle exec jekyll serve"
echo ""
echo "Then visit http://localhost:4000 in your browser"
echo ""

