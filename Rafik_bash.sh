#!/bin/bash
FILE="/mnt/c/Users/rafik/OneDrive/Desktop/Cv interactif/Overview/cv-rafik.html"

echo "===== HTML Analysis of $FILE ====="
echo ""

# Count <p> tags
P_COUNT=$(grep -o "<p" "$FILE" | wc -l)
echo "Number of <p> tags:       $P_COUNT"

# Count <div> tags
DIV_COUNT=$(grep -o "<div" "$FILE" | wc -l)
echo "Number of <div> tags:     $DIV_COUNT"

# Count links <a>
A_COUNT=$(grep -o "<a " "$FILE" | wc -l)
echo "Number of links <a>:      $A_COUNT"

# Count heading tags h1-h6
H_COUNT=$(grep -oE "<h[1-6]" "$FILE" | wc -l)
echo "Number of heading tags:   $H_COUNT"

# Count <ul> tags
UL_COUNT=$(grep -o "<ul" "$FILE" | wc -l)
echo "Number of <ul> tags:      $UL_COUNT"

# Count <li> tags
LI_COUNT=$(grep -o "<li" "$FILE" | wc -l)
echo "Number of <li> tags:      $LI_COUNT"

# Count <section> tags
SEC_COUNT=$(grep -o "<section" "$FILE" | wc -l)
echo "Number of <section> tags: $SEC_COUNT"
