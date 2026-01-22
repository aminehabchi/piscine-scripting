#!/bin/sh

cat << 'EOF' > show-info.sh
#!/bin/sh

cat -e << 'INFO'
HOME=$HOME
PATH=$PATH
SHELL=$SHELL
INFO
EOF

chmod +x show-info.sh