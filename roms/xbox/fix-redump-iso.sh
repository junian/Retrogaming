#/bin/sh

echo "Fixing Redump iso: $1"

dd if="$1" of="$1.GAME.iso" skip=387 bs=1M

rm "$1"

echo "Done."

