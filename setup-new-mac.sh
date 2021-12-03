
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#.zprofile verlinken
ln -s .dotfiles/runcom/.zprofile .zprofile

#.zshrc verlinken
ln -s .dotfiles/runcom/.zshrc .zhsrc

# Documents mit Dropbox verknüpfen
sudo rm -Rf /Users/michael/Documents
ln -s Dropbox/Documents Documents

# setup git
git config --global user.name "Michael Mezger"
git config --global user.email "michael@michaelmezger.de"