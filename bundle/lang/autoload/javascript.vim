" create JavaScript handler method
" above the current block;
function javascript#InsertHandler()
  silent normal! $2B
  silent normal! yiw

  mark `

  silent normal! {
  silent normal! Ovar " = function(e) {};
  silent normal! O// do something

endfunction
