## ====== NUR EMOJIS MIT FARBE ======

# Emojis definieren
EMOJIS=("🐱" "😈" "💩" "🤯" "🚀" "🍕" "😂" "😜")

# Zufälliges Emoji mit zufälliger Farbe
PS1='\[$(tput setaf $((RANDOM % 7 + 1)))\]${EMOJIS[$RANDOM % ${#EMOJIS[@]}]} \$ \[$(tput sgr0)\]'
