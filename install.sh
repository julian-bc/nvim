#!/bin/bash

if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
  echo "🍺 Homebrew is already installed." 
fi

echo "📦 Installing nvim..."
brew install neovim 

echo "🔧 Cloning your Neovim config..."
git clone https://github.com/julian-bc/nvim.git

echo "📁 Copying config to ~/.config/nvim/..."
mkdir -p ~/.config/nvim
cp -r nvim/* ~/.config/nvim

rm -rf nvim

echo "👾 Neovim config is updated!"
echo "Launching Neovim..."
nvim
