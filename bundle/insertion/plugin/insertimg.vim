" ATTENTION

" I'm currently in the process of turning this ting in a cleaner general purpose
" plugin. Until it's ready, expect some mess.
"
" DONE
"
" TODO
"
"

" Version 1.3
" Script create :IMG command, whitch insert HTML IMG tag
" with fill atributes width and height.
"
" It's need _identify_ utility from ImageMagic!
"
" (c) Petr Mach <gsl@seznam.cz>, 2003
" http://iglu.cz/wraith/
"
" Call it without parameter for file browser for selecting image.
"
" ver1.0 - 12. 02. 2003: HTML_loadImg()
" ver1.1 - 13. 02. 2003: bugfix by Patrick Mairif moon@sumbalum.de 
"                        (path=1 => path=a:1)
" ver1.2 - 16. 02. 2003: big improvements
"                        rename HTML_loadImg() to HTML_insertImg()
"                          and fix insertet tag for XHTML compatibility
"                        create HTML_insertHref()
"                        create Absolute2Relative() for:
"                          HTML_insert*() make path relative for 
"                          files in up directory
" ver1.3 - 04. 07. 2012: Added CSS_insertBg()

" command! -nargs=? -complete=file HREF call insertion#HTML_insertHref(<f-args>)
