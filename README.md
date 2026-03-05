<h1 align="center">
  .dotfiles created using <a href="https://github.com/CodelyTV/dotly">🌚 dotly</a>
</h1>

## Restore your Dotfiles manually

* Install git
* Clone your dotfiles repository `git clone [your repository of dotfiles] $HOME/.dotfiles`
* Go to your dotfiles folder `cd $HOME/.dotfiles`
* Chipset arm
Installing docpars on Apple Silicon
The docpars binary distributed through Homebrew was compiled for x86_64, which caused the error:
zsh: bad CPU type in executable: docpars
on Apple Silicon (arm64) machines.

To fix this, the binary was compiled manually using Rust and then installed in /opt/homebrew/bin.
Steps
	1.	Clone the repository:
git clone https://github.com/denisidoro/docpars
cd docpars
	2.	Compile the binary with Rust:
cargo build --release
	3.	Move the compiled binary to Homebrew’s bin directory:
mv target/release/docpars /opt/homebrew/bin/docpars
chmod +x /opt/homebrew/bin/docpars

	4.	Verify the installation:
docpars --help

After this, docpars runs natively on arm64 and works correctly with dotly.
:::
* Install git submodules `git submodule update --init --recursive modules/dotly`
* Install your dotfiles `DOTFILES_PATH="$HOME/.dotfiles" DOTLY_PATH="$DOTFILES_PATH/modules/dotly" "$DOTLY_PATH/bin/dot" self install`
* Restart your terminal
* Import your packages `dot package import`

## Restore your Dotfiles with script

Using wget
```bash
bash <(wget -qO- https://raw.githubusercontent.com/CodelyTV/dotly/HEAD/restorer)
```

Using curl
```bash
bash <(curl -s https://raw.githubusercontent.com/CodelyTV/dotly/HEAD/restorer)
```

You need to know your GitHub username, repository and install ssh key if your repository is private.

It also supports other git repos, but you need to know your git repository url.
