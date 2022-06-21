#!/bin/sh
#
# Convert an ODT/DOCX document to GitHub flavored Markdown

# @author: Daniel Souza <me@posix.dev.br>
# @license: MIT
# @usage: wm-convert-doc.sh file.[docx|odt|...]
# @deps: pandoc, perl

inputFile="$1"
inputFormat="${inputFile##*.}"
outputFile="${inputFile%.*}.md"

# Convert document
pandoc "$inputFile" -t gfm --strip-comments --wrap none |

# Remove class attributes
perl -pe 's|{.*?}||' |

# Improve ODT output
if [ "$inputFormat" = 'odt' ]; then
	# Remove inline style
	perl -pe 's|style=".*?"||' |

	# Rewrite img tags
	perl -pe 's|<img src="(.*?)".*?>|[]\($1\)|' |

	# Rewrite anchor tags
	perl -pe '
		s|<span id="anchor(-\d)?"></span>|#$1 |;
		s|^#-1|##|;
		s|^#-2|###|;
		s|^#-3|####|;
		s|^#-4|#####|;
		s|^#-5|######|;
		s|^#-6|#######|;
		s|^#-7|########|;
		s|^#-8|########|;
		s|^#-9|########|'
fi |

# Save to disk
cat > "$outputFile"
