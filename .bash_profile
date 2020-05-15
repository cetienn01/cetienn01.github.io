# declares an array with the emojis we want to support
EMOJIS=(😺 😸 😹 😻 😼 😽 🙀 😿 😾)

# function that selects and return a random element from the EMOJIS set
RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
}

# declare the terminal prompt format
export PS1='$(RANDOM_EMOJI)  [\u@\h \W]$ '
