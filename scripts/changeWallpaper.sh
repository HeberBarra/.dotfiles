selected_file=$(find "$HOME/Pictures/Wallpapers/" -type f -name "*.png" -or -name "*.jpg" -or -name "*.jpeg" | \
    fzf --preview='sh -c "kitten icat --clear --transfer-mode=memory --stdin=no --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@0x0 {}"') || exit 0

wal -i "$selected_file"
exit 0

