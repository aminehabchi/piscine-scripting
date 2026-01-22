#!/bin/sh

cat << 'EOF' > show-info.sh
#!/bin/sh

cat -e << INFO
The current directory is: $(pwd)
The default paths are: $PATH
The current user is: $USER
INFO
EOF

chmod +x show-info.sh
