# Starship Prompt
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience

# Change Title
function fish_title
	echo "Ghostty"
end
