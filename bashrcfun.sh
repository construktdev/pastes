# ====== MAXIMAL NERVIGER, HARMLoser PROMPT ======

#  ____   ____  _____ ______    ___      ____  ____               ____    ____  _____ __ __  ____      __ 
#|    \ /    |/ ___/|      |  /  _]    |    ||    \             |    \  /    |/ ___/|  |  ||    \    /  ]
#|  o  )  o  (   \_ |      | /  [_      |  | |  _  |            |  o  )|  o  (   \_ |  |  ||  D  )  /  / 
#|   _/|     |\__  ||_|  |_||    _]     |  | |  |  |            |     ||     |\__  ||  _  ||    /  /  /  
#|  |  |  _  |/  \ |  |  |  |   [_      |  | |  |  |         __ |  O  ||  _  |/  \ ||  |  ||    \ /   \_ 
#|  |  |  |  |\    |  |  |  |     |     |  | |  |  |        |  ||     ||  |  |\    ||  |  ||  .  \\     |
#|__|  |__|__| \___|  |__|  |_____|    |____||__|__|        |__||_____||__|__| \___||__|__||__|\_| \____|
                                                                                                        


# Emojis und Symbole definieren
EMOJIS=("🐱" "😈" "💩" "🤯" "🚀" "🍕" "😂" "😜")
SYMBOLS=("-" "=" "~" "*" "+" "💥" "🔥")

# Funktion für wackelnden Text
shake() {
  local s="$1"
  local out=""
  for ((i=0;i<${#s};i++)); do
    out+="${s:i:1}"
    [[ $((RANDOM % 2)) -eq 0 ]] && out+=" "
  done
  echo "$out"
}

# Bunter, chaotischer Prompt
PS1='\
\[$(tput setaf $((RANDOM%7+1)))\]$(shake "\u")\
\[$(tput setaf $((RANDOM%7+1)))\]@\
\[$(tput setaf $((RANDOM%7+1)))\]$(shake "\h")\
\[$(tput setaf $((RANDOM%7+1)))\]:\
\[$(tput setaf $((RANDOM%7+1)))\]$(shake "\w")\
 ${EMOJIS[$RANDOM % ${#EMOJIS[@]}]}\
 ${SYMBOLS[$RANDOM % ${#SYMBOLS[@]}]} \$ \
\[$(tput sgr0)\]'
