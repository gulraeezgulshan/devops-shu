#!/bin/bash
# generate-script.sh
# A script that generates another script

OUTFILE=generated.sh         # Name of the file to generate.


# -----------------------------------------------------------
# 'Here document containing the body of the generated script.
(
cat <<'EOF'
#!/bin/bash

echo "This is a generated shell script."

a=7
b=3

let "c = $a * $b"
echo "c = $c"

exit 0
EOF
) > $OUTFILE
# -----------------------------------------------------------

if [ -f "$OUTFILE" ]
then
  chmod 755 $OUTFILE
else
  echo "Problem in creating file: \"$OUTFILE\""
fi

exit 0