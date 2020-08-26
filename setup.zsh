clear

echo "Checking if you have zsh"

command -v zsh >/dev/null 2>&1 || {
  echo "You don't have zsh. Let's see if I can install it for you."
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    command -v apt 2? >/dev/null &
    1 && sudo apt install zsh || {
      echo "Looks like you're not Debian based. Install zsh and run this again."
      exit 0
    }
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Looks like this is an old version of MacOS that doesn't have zsh. Please update your install."
    exit 0
  else
    echo "I can't install zsh for you. Please install it and try this script again."
    exit 0
  fi
}
echo "You have zsh!"

echo "Now let's install OhMyZsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

echo "I need a couple packages from GitHub now. I'm gonna download them."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Now I need to change the .zshrc file."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sed -i '/plugins=/c\plugins=(git z zsh-syntax-highlighting)' ~/.zshrc
  sed -i '/ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i "" 's/.*plugins=.*/plugins=(git z zsh-syntax-highlighting)/' ~/.zshrc
  sed -i "" 's|.*ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|' ~/.zshrc
else
  echo "I don't think I can do this for you. Please manually follow the GitHub instructions."
  exit 0
fi

echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >>~/.zshrc
rm ~/.p10k.zsh
curl https://raw.githubusercontent.com/Jyumpp/jyumpp-zsh-theme/master/.p10k.zsh --output ~/.p10k.zsh

echo 'if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]];
  then\n  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"\nfi' | echo "" | echo ZSH_DISABLE_COMPFIX=true | cat - ~/.zshrc >temp && mv temp ~/.zshrc
echo 'source ~/.p10k.zsh' >>~/.zshrc

echo 'All done! Go ahead and launch zsh'
