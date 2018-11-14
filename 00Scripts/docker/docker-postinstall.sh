sudo usermod -aG docker $USER
newgrp docker

mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose

echo '' >> '/home/thib/Dev/Config/zshrc'
echo 'fpath=(/home/thib/.zsh/completion $fpath)' >> '/home/thib/Dev/Config/zshrc'

# autoload -Uz compinit && compinit -i
