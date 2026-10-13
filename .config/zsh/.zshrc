# create a function "has" it recieve a name of command
# if the command exists, return true
has() { (( $+commands[$1] )) }

# determine which config to source on the current system
case "$OSTYPE" in
  darwin*) source "$ZDOTDIR/os/darwin.zsh" ;;
  linux*)  source "$ZDOTDIR/os/linux.zsh" ;;
esac

# source all the .zsh file
for f in core aliases tools plugins; do
  source "$ZDOTDIR/$f.zsh"
done

# if local.zsh exists, source it
#[[ -f "$ZDOTDIR/local.zsh" ]] && source "$ZDOTDIR/local.zsh"
