// Ch4. Intro to Stata

use "$data/nerlove.dta", clear

// string time var to num
gen newvar=date(varname, "YMD")
format newvar %td

gen newvar=monthly(varname, "YM")
format newvar %tm

gen newvar=monthly(varname, "YQ")
format newvar %tq

// combine Y M D
gen newvar = mdy(M,D,Y)

pwcorr pl pf pk, sig star(.05)

predict lntchat

predict el, residual