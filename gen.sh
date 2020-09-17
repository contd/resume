#! /usr/bin/env bash
#
# gen.sh
# Copyright (C) 2017 jason <jason@kumpf.io>
#
#rm resume.{html,rst,asciidoc,docx,odt}
#rm cv_full.{html,rst,asciidoc,docx,odt}

# Don't really send pdf anymore
#pandoc -f markdown -t latex resume.md -o resume.pdf

ansi --blue "Generating resume.* files ..."

for i in html rst asciidoc docx odt;do
	pandoc -f markdown -t $i README.md -o resume.$i
done

ansi --yellow "Generating cv_full.* files ..."

for i in html rst asciidoc docx odt;do
	pandoc -f markdown -t $i cv_full.md -o cv_full.$i
done

exit 0
