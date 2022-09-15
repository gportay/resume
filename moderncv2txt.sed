#!/bin/sed -nf
#
#  Copyright (C) 2018 Savoir-Faire Linux, Inc.
#                2022 Gaël PORTAY
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

/\\title{.*}/s,\\title{\(.*\)},\n\1,p

/^\\begin{document}$/,/^\\end{document}$/ {
	s,\\href{\([a-zA-Z0-9_.@:/&?=-]*\)}{\([a-zA-Z0-9_\ .()@-]*\)},\2.,g
	s,\\textbf{\([àéèa-zA-Z0-9_\ .()@-]*\)},\1,g
	s,\\textit{\([àéèa-zA-Z0-9_\ .()@-]*\)},\1,g
	s,\\textmu,u,g
	s,\\LaTeX,LaTeX,g
	s,\\newline,,g
	s,\\linebreak\[[0-5]\], ,g
	s,\\linebreak, ,g
	s,\\%,%,g
	s,~, ,g

	/^\\section{.*}/,/^$/ {
		s,\\section{\(.*\)},\n\1,p
		s,\\subsection{\(.*\)},\n\1,p

		/^\\cventry{/,/^}$/ {
			/\\begin{itemize}/d
			/\\end{itemize}/d
			/\\item/s,\\item, -,p
			s,--, - ,
			/^\\cventry{/s,}$,,
			s,\\cventry{\(.*\)}{\(.*\)}{\(.*\)}{\(.*\)}{\(.*\)}{\(.*\),\n\1 \2 \3\n\6,p
		}

		/^\\cvitem{.*}/ {
			s,\\cvitem{\(.*\)}{\(.*\)},\n\1 \2,p
		}

		/^\\cvitemwithcomment{.*}/ {
			s,\\cvitemwithcomment{\(.*\)}{\(.*\)}{\(.*\)},\n\1 \2\n\3,p
		}
	}
}
