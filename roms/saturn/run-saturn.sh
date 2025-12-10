#!/bin/bash

# Convert *.cue to *.cue.chd
find . -name "*.cue" -exec chdman createcd -i {} -o {}.chd \; -exec rm {} \;

# Rename *.cue.chd to *.chd
for f in *.cue.chd; do mv -- "$f" "${f%.cue.chd}.chd"; done

# Rename *.cue to *.chd inside *.m3u files
find . -name "*.m3u" -exec sed -i 's/.cue/.chd/g' {} \;

# Remove *.bin files
rm *.bin

# Rsync to nokia 3.1 plus roms/psx/
rsync -av --size-only *.chd batnokiaplus:/storage/90A1-1507/roms/saturn/
rsync -av --size-only *.m3u batnokiaplus:/storage/90A1-1507/roms/saturn/

