# PS2 ROMs

`chd` is the recommended file type.

## Convert ISO to CHD

Install `mame-tools`.

```bash
sudo apt install mame-tools
```

Execute `./iso-to-chd.sh`.

```bash
$ ./iso-to-chd.sh
chdman - MAME Compressed Hunks of Data (CHD) manager 0.264 (unknown)
Output CHD:   ./Sly 2 - Band of Thieves (USA).iso.chd
Input file:   ./Sly 2 - Band of Thieves (USA).iso
Input tracks: 1
Input length: 312:56:72
Compression:  cdlz (CD LZMA), cdzl (CD Deflate), cdfl (CD FLAC)
Logical size: 3,447,449,856
Compression complete ... final ratio = 67.1%
```
