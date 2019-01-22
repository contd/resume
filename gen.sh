#! /usr/bin/env bash
#
# gen.sh
# Copyright (C) 2017 jason <jason@kumpf.io>
#
rm Jason_P_Kumpf.{pdf,html,rst,asciidoc,docx,odt}

pandoc -f markdown -t latex Jason_P_Kumpf.md -o Jason_P_Kumpf.pdf

for i in html rst asciidoc docx odt;do
	pandoc -f markdown -t $i Jason_P_Kumpf.md -o Jason_P_Kumpf.$i
done

exit 0
