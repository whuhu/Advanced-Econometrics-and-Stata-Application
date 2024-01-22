// Ch4. Intro to Stata

use "$data/nerlove.dta", clear

gen newvar=date(varname, "YMD")
format newvar %td

gen newvar=monthly(varname, "YM")
format newvar %tm

gen newvar=monthly(varname, "YQ")
format newvar %tq