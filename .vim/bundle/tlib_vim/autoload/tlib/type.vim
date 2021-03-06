" @Author:      Tom Link (mailto:micathom AT gmail com?subject=[vim])
" @Website:     http://www.vim.org/account/profile.php?user_id=4037
" @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)
" @Created:     2007-09-30.
" @Last Change: 2015-11-24.
" @Revision:    23


function! tlib#type#IsNumber(expr)
    return tlib#type#Is(a:expr, 0)
endf


function! tlib#type#IsString(expr)
    return tlib#type#Is(a:expr, 1)
endf


function! tlib#type#IsFuncref(expr)
    return tlib#type#Is(a:expr, 2)
endf


function! tlib#type#IsList(expr)
    return tlib#type#Is(a:expr, 3)
endf


function! tlib#type#IsDictionary(expr)
    return tlib#type#Is(a:expr, 4)
endf


function! tlib#type#Is(val, type) abort "{{{3
    if type(a:type) == 0
        let type = a:type
    elseif a:type =~? '^n\%[umber]'
        let type = 0
    elseif a:type =~? '^s\%[tring]'
        let type = 1
    elseif a:type =~? '^fu\%[ncref]'
        let type = 2
    elseif a:type =~? '^l\%[ist]'
        let type = 3
    elseif a:type =~? '^d\%[ictionary]'
        let type = 4
    elseif a:type =~? '^fl\%[oat]'
        let type = 5
    else
        throw 'tlib#type#Is: Unknown type: ' a:type
    endif
    " TLogVAR a:val, a:type, type, type(a:val), type(a:val) == a:type
    return type(a:val) == type
endf


function! tlib#type#Are(vals, type) abort "{{{3
    return tlib#assert#Map(a:vals, 'tlib#type#Is(v:val,'. string(a:type) .')')
endf


let s:schemas = {}


function! tlib#type#DefSchema(name, schema) abort "{{{3
    let s:schemas[a:name] = copy(a:schema)
endf


function! tlib#type#Has(val, schema) abort "{{{3
    " TLogVAR type(a:val), type(a:schema)
    if !tlib#type#IsDictionary(a:val)
        " TLogVAR 'not a dictionary', a:val
        return 0
    endif
    if tlib#type#IsString(a:schema)
        " TLogVAR a:schema
        let schema = copy(s:schemas[a:schema])
    else
        let schema = copy(a:schema)
    endif
    if tlib#type#IsDictionary(schema)
        return tlib#assert#All(map(schema, 'has_key(a:val, v:key) && tlib#type#Is(a:val[v:key], v:val)'))
    else
        " TLogVAR keys(a:val), schema
        return tlib#assert#All(map(schema, 'has_key(a:val, v:val)'))
    endif
endf


function! tlib#type#Have(vals, schema) abort "{{{3
    return tlib#assert#Map(a:vals, 'tlib#type#Has(v:val,'. string(a:schema) .')')
endf


