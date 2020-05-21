# Setup for Zsh (Hunter's Weirdly Specific Theme)

## Zsh Install
1. Try the following:
    ```bash
    zsh
    ```
   If it works, proceed to the next section.
2. Install Zsh:
   ```bash
   sudo apt install zsh
   ```
   or something similar. 
3. Run zsh and follow the 
   on-screen instructions to set up the shell.
   
## Oh-My-Zsh Install
1. Run the following:
    ```bash
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```
2. Follow the on-screen instructions for setup.

## Powerlevel10k and Plugins Install
1. Run the following:
    ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```
2. Edit ~/.zshrc with your choice text editor. 
   - On the `plugins=` line, set `zsh-syntax-highlighting `
     as the last plugin.
     - The `z` plugin is basically `cd` but smarter. You should put `z`
       at any point before `zsh-syntax-highlighting`
     - More plugins can be found in `~/.oh-my-zsh/custom/plugins`. 
       If you want to use any of these, set them before `zsh-syntax-highlighting`.
   - On the `ZSH_THEME=` line, change the line to `ZSH_THEME="powerlevel10k/powerlevel10k"`
   
## Powerlevel10k Setup
1. (Re)launch Zsh
2. Follow the on-screen instructions. The choices don't matter
   since this will be overridden in the next step.
3. Move `.p10k.zsh` from this repo to your `~/` folder.
4. Reload Zsh. If it didn't work, you messed up somewhere
   - Or more likely Hunter messed up this guide. 
   
    