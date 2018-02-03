#!/ bin / bash

TYPE="*.zsh *.vim *.sh Makefile *.md"

for i in $(echo "$TYPE"); do
  find ~/takumi -iname "${i}" -type d -exec bash -c 'expand -t 2 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
  find ~/takumi -iname "${i}" -type d -exec bash -c 'expand -t 2 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
done
