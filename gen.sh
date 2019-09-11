#! /usr/bin/env bash
#
# gen.sh
# Copyright (C) 2017 jason <jason@kumpf.io>
#
rm resume.{pdf,html,rst,asciidoc,docx,odt}

pandoc -f markdown -t latex resume.md -o resume.pdf

for i in html rst asciidoc docx odt;do
	pandoc -f markdown -t $i resume.md -o resume.$i
done

exit 0
