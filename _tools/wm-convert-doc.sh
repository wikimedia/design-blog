#!/bin/sh
#
# Convert an ODT/DOCX document to GitHub flavored markdown

# @author: Daniel Souza <me@posix.dev.br>
# @license: MIT
# @usage: wm-convert-doc.sh file.[docx|odt|...]
# @deps: pandoc, perl, unzip

# Text formatting
reset="\e[0;0m"
strong="\e[1;39m"

# File parameters
inputFile="$1"
inputFormat="${inputFile##*.}"
outputFile="${inputFile%.*}.md"

_export_media() {
	if [ "$inputFormat" = 'docx' ]; then
		printf "\n${strong}%s${reset}\n" "Exporting media from docx"
		unzip "$inputFile" "word/media/*"
		mv "word/media" .
		rm -r "word"
	fi
}

_convert_document() {
	printf "\n${strong}%s${reset}\n" "Converting ${inputFormat} to markdown"

	# Convert to markdown
	pandoc "$inputFile" -t gfm --strip-comments --wrap none |

	# Remove class attributes
	perl -pe 's|{.*?}||' |

	# Unwrap underline tags
	perl -pe 's|<u>(.*?)</u>|$1|g' |

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
		s|^#-9|########|' |

	# Remove <span>
	perl -pe 's|<span .*?>(.*?)</span>|$1|g' |

	# Remove HTML comments
	perl -pe 's|<!--(.*?)-->||' |

	# Rewrite italic syntax
	perl -pe 's|\*(.+?)\*|_$1_|g;
			  s|\*_|\*\*|g;
			  s|_\*|\*\*|g' |

	# Condense multiple line breaks
	# NOTE: setting '$/' to undef make Perl read the whole file as a single line
	perl -pe '$/ = undef;s/(\R{2,})/\n\n/g' |

	# Save to disk
	cat > "$outputFile"
}

# Main
_export_media
_convert_document
