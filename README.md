# TUI-Paint

TUI-Paint is a very simple paint program coded entirely in Bash. There are a total of 9 colors to choose from (ANSI Escape Code colors) and is capable of producing pixel art.

------------------

## Installation (Linux/macOS/WSL):

```
git clone https://github.com/nulladmin1/tui-paint.git
cd tui-paint/
chmod +x tui-paint.sh
```

------------------

## Usage:

```
./tui-paint.sh (Arguments [optional])
```
### Arguments:
  help/--help/-h: *Prints out help information*
  colors/c: *Prints out available colors*
  binds/b: *Prints out keybindings*

### Keybindings:

|Movement|Binds|
|--------|-----|
|Left|`h`|
|Down|`j`|
|Up|`k`|
|Right|`l`|

-------------------

|Colors|Binds|
|------|-------|
|Red | `1`|
|Black| `2`|
|Green |`3`|
|Brown |`4`|
|Blue|`5`|
|Purple|	`6`|
|Cyan|	`7`|
|Light Gray| `8`|
|White|`9`|
|Color Off|`0`|


### Tested on:
* Alacritty
* Konsole
* foot
* st
* Xterm
