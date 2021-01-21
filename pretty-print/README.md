# Pretty Print

## ANSI Code Color

We can use ANSI color codes to print text in different color and text styles.

To prettify a string with a color and text styles ie. bold, underline, we need to enclose and tag the affected string with a set of ANSI code. This means we need to escape with a value of 27 (33 in octal or 1B in hex) followed by an ANSI code.

In other words, to print text "Hello World" in red color. We do the following:

```bash
$ # \033 = Escape with octal value of 33 to tell the shell to expect a ANSI code.
$ # [Xm  = Substitute X with an ANSI code (decimal) enclosed in [m.
$ echo -e "\033[31mHello World\033[0m"
```

Once we are done with tagging the string with the ANSI codes, we reset back to the plain color and style using `\033[0m`.

Be sure to add the `-e` parameter to the echo command.

We can also use escapes `\x1b` and `\e` in place of `\033`. In other words, the following will produce the same outputs.

```bash
$ echo -e "\033[31mHello World\033[0m"
$ echo -e "\x1b[31mHello World\x1b[0m"
$ echo -e "\e[31mHello World\e[0m"
```

See [ansi-code.sh](ansi-code.sh) for details.

## Using tput

We can also use tput to print the text in color.

```bash
bold=$(tput bold)
reset=$(tput sgr0)
red=$(tput setaf 1)

# No -e needed when using tput
echo "${red}${bold}Hello World${reset}"
```

See [tput.sh](tput.sh)  for details.

## ANSI and tput Codes

| ANSI Code | tput Command | Effect                |
|-----------|--------------|-----------------------|
| 0         | sgr0         | Reset                 |
| 1         | bold         | Bold: on              |
| 2         | dim          | Faint: on             |
| 3         |              | Italic: on            |
| 4         | smul         | Underline: on         |
| 5         |              | Slow blink: on        |
| 6         | blink        | Fast blink: on        |
| 7         | rev          | Reverse video: on     |
| 8         | invis        | Erase: on             |
| 9         |              | Strikethrough: on     |
| 21        |              | Double underline: on  |
| 22        |              | Bold: off             |
| 23        |              | Italic: off           |
| 24        | emul         | Underline: off        |
| 25        |              | Slow blink: off       |
| 26        |              | Fast blink: off       |
| 27        |              | Reverse video: off    |
| 28        |              | Erase: off            |
| 29        |              | Strikethrough: off    |
| 30        | setaf 0      | Foreground: black     |
| 31        | setaf 1      | Foreground: red       |
| 32        | setaf 2      | Foreground: green     |
| 33        | setaf 3      | Foreground: yellow    |
| 34        | setaf 4      | Foreground: blue      |
| 35        | setaf 5      | Foreground: magenta   |
| 36        | setaf 6      | Foreground: cyan      |
| 37        | setaf 7      | Foreground: white     |
| 39        | setaf 9      | Foreground: reset     |
| 40        | setab 0      | Background: black     |
| 41        | setab 1      | Background: red       |
| 42        | setab 2      | Background: green     |
| 43        | setab 3      | Background: yellow    |
| 44        | setab 4      | Background: blue      |
| 45        | setab 5      | Background: magenta   |
| 46        | setab 6      | Background: cyan      |
| 47        | setab 7      | Background: white     |
| 49        | setab 9      | Background: reset     |

## Reference

* [Stackoverflow: How to change the output color of echo in Linux](https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux)
