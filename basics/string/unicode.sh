#!/usr/bin/env bash

# Unicode representation
echo -e '\x61'              # \x works but the value must be a UTF-8 hex value.
echo -e '\u0061'            # Won't work. \u only works for bash 4.2 and above.
echo -e '\xF0\x9F\x91\x8D'  # For supplementary Unicode code point, convert to UTF-8 hex values.

# Extended grapheme cluster
echo -e '\xE1'              # Won't work. Printable unicode characters in UTF-8 range from 00 to 7F.
echo -e '\xC3\xA1'          # Works now, prints á using a precomposed á. Convert to UTF-8 hex values.
echo -e '\x61\xCC\x81'      # Prints á using a decomposed combo of a, ◌́ only when the string is in UTF-8 hex values.
