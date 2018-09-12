#!/bin/sed -nf
#
#  Copyright (C) 2018 Savoir-Faire Linux Inc.
#
#  Authors:
#      Gaël PORTAY <gael.portay@savoirfairelinux.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 2.1 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

/^\\begin{document}$/,/^\\end{document}$/ {
	s,\\href{\([a-zA-Z0-9_.@:/&?=-]*\)}{\([a-zA-Z0-9_\ .@-]*\)},*[\2](\1)*,g
	s,\\textbf{\([a-zA-Z0-9_\ .@-]*\)},**\1**,g
	s,\\textit{\([a-zA-Z0-9_\ .@-]*\)},_\1_,g
	s,\\textmu,u,g
	s,\\newline{},,g
	s,\\newline,,g

	/^\\section{.*}/,/^$/ {
		s,\\section{\(.*\)},\n## \1,p
		s,\\subsection{\(.*\)},\n### \1,p

		/^\\cventry{/,/^}$/ {
			/\\begin{itemize}/d
			/\\end{itemize}/d
			/\\item/s,\\item,> * ,p
			s,--, - ,
			/^\\cventry{/s,}$,,
			s,\\cventry{\(.*\)}{\(.*\)}{\(.*\)}{\(.*\)}{\(.*\)}{\(.*\),\n* *\1* **\2** *\3*\n\n> \6,p
		}

		/^\\cvitem{.*}/ {
			s,\\cvitem{\(.*\)}{\(.*\)},\n* *\1* \2,p
		}

		/^\\cvitemwithcomment{.*}/ {
			s,\\cvitemwithcomment{\(.*\)}{\(.*\)}{\(.*\)},\n* *\1* **\2**\n\n> \3,p
		}
	}
}
