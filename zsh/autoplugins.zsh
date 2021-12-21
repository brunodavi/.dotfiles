for plugin in ~/.zsh/custom/plugins/*/
do
  plugins+=(`basename $plugin`)
done
