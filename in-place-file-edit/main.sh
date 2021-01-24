#!/usr/bin/env bash

declare cloned_config_file='sshd_config.copy'

# Make a copy of sshd_config. Note the target file will be ignore by git.
cp sshd_config "${cloned_config_file}"

# Replace all lines that match.
if [ "$(uname)" == 'Darwin' ]; then
  sed -i '' 's/.*Port .*/Port 6543/g' "${cloned_config_file}"
else
  sed -i 's/.*Port .*/Port 6543/g' "${cloned_config_file}"
fi

# Remove all lines that match.
if [ "$(uname)" == 'Darwin' ]; then
  sed -i '' '/^PermitRootLogin yes/d' "${cloned_config_file}"
else
  sed -i '/^PermitRootLogin yes/d' "${cloned_config_file}"
fi

# Remove lines between match 1 and match 2 inclusive.
if [ "$(uname)" == 'Darwin' ]; then
  sed -i '' '/^AddressFamily any/,/^ListenAddress ::/d' "${cloned_config_file}"
else
  sed -i '/^AddressFamily any/,/^ListenAddress ::/d' "${cloned_config_file}"
fi

# Insert line before matching line.
if [ "$(uname)" == 'Darwin' ]; then
  sed -i '' -e '/^X11Forwarding/a\'$'\n''X11DisplayOffset 10' "${cloned_config_file}"
else
  sed -i '/^X11Forwarding.*/a X11DisplayOffset 10' "${cloned_config_file}"
fi

# Insert line after the matching line.
if [ "$(uname)" == 'Darwin' ]; then
  sed -i '' -e '/^X11Forwarding/i\'$'\n''X11UseLocalhost yes' "${cloned_config_file}"
else
  sed -i '/^X11Forwarding.*/i X11UseLocalhost yes' "${cloned_config_file}"
fi
