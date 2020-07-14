# Setup for Zsh (Hunter's Weirdly Specific Theme)

# Font install:
Download these four ttf files:

- [MesloLGS NF Regular.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

# Automatic Theme Install
Run the following: 
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Jyumpp/jyumpp-zsh-theme/master/setup.zsh)"
```
This is experimental and may not work. If it doesn't, try below.

# Manual Theme Install
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
   - On the `plugins=` line, add `zsh-syntax-highlighting`
     as the last plugin.
     - The `z` plugin is basically `cd` but smarter. You should add `z`
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
   
    