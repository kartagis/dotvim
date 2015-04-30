# vim-qf

**vim-qf** – short for *vim-quickfix* – is a small collection of settings, commands and mappings put together to make working with the quickfix list/window smoother.

## Features

* set `nowrap`
* set `norelativenumber`
* set `nobuflisted`
* Ack.vim-inspired mappings
* wrapping `:cnext`, `:cprevious`, `:lnext`, `:lprevious`
* jump to and from the location/quickfix window with a single mapping
* filter/restore the location/quickfix list
* perform commands on each line in the list
* perform commands on each file in the list
* automatically open the location/quickfix window after `:make`, `:grep`,
  `:lvimgrep` and friends if there are valid locations/errors
* quit Vim if the last window is a location/quickfix window

## Options

These are the options currently available for your mapping convenience (and their default values):

    " <Home> and <End> go up and down the quickfix list and wrap around
    let g:qf_mapping_cprevious = '<Home>'
    let g:qf_mapping_cnext = '<End>'

    " <C-Home> and <C-End> go up and down the location list and wrap around
    let g:qf_mapping_lnext = '<C-End>'
    let g:qf_mapping_lprevious = '<C-Home>'

    " jump to and from the location/quickfix window
    let g:qf_mapping_switch = 'ç'

    " filter the location/quickfix list
    let g:qf_mapping_filter = '§'

    " restore the location/quickfix list
    let g:qf_mapping_restore = '<F5>'

    " Ack.vim-inspired mappings
    " s - open entry in a new horizontal window
    " v - open entry in a new vertical window.
    " t - open entry in a new tab.
    " o - open entry and come back
    " O - open entry and close the location/quickfix window.
    let g:qf_mapping_ack_style = 1

## TODO

* write a proper `help` file
* use `<Plug>` mappings
* ask #vim's opinion
* export more options?
* add a gifcast to the README?
