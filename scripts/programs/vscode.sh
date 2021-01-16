
#!/bin/bash

# https://code.visualstudio.com/docs/setup/linux
echo "⌨️  Installing VSCode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
function install {
  name="${1}"
  code --install-extension ${name} --force
}
install 2gua.rainbow-brackets
install yzhang.markdown-all-in-one
install dbaeumer.vscode-eslint
install ms-vscode-remote.remote-containers
install threadheap.serverless-ide-vscode
install wayou.vscode-todo-highlight
install jpoissonnier.vscode-styled-components
install wakatime.vscode-wakatime
install redhat.vscode-yaml
install eamodio.gitlens
install esbenp.prettier-vscode
install 4tron.ionic-docs
install avraammavridis.vsc-react-documentation
install gkalpak.aio-docs-utils
install christian-kohler.path-intellisense
install msjsdiag.debugger-for-chrome
install xabikos.ReactSnippets
install PKief.material-icon-theme
install formulahendry.auto-rename-tag
