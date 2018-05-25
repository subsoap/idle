local M = {}

M.growth_functions = {
	example = function (base, rate) return base * rate end,
	
}

function M.display_number(num, type)
	type = type or 2
	local suffixes = { 
	{"", " K", " M", " B", " T", "Qa", "Qt", "Sx", "Sp", "Oc", "Nn", "Dc", "UDc", "DDc", "TDc", "QaDc", "QtDc", "SxDc", "SpDc", "ODc", 
	"NDc", "Vi", "UVi", "DVi", "TVi", "QaVi", "QtVi", "SxVi", "SpVi", "OcVi", "NnVi", "Tg", "UTg", "DTg", "TTg", "QaTg", "QtTg", "SxTg", "SpTg", "OcTg", 
	"NnTg", "Qd", "UQd", "DQd", "TQd", "QaQd", "QtQd", "SxQd", "SpQd", "OcQd", "NnQd", "Qq", "UQq", "DQq", "TQq", "QaQq", "QtQq", "SxQq", "SpQq", "OcQq", 
	"NnQq", "Sg"}, 
	{"", " K", " M", " B", " T", "aa", "bb", "cc", "dd", "ee", "ff", "gg", "hh", "ii", "jj", "kk", "ll", "mm", "nn", "oo", "pp", "qq",
	"rr", "ss", "tt", "uu", "vv", "ww", "xx", "yy", "zz", "Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", 
	"Qq", "Rr", "Ss", "Tt", "Uu", "Vv", "Ww", "Xx", "Yy", "Zz", "AA", "BB", "CC", "DD", "EE", "FF", "GG", "HH", "II", "JJ", "KK", "LL", "MM", "NN", "OO", 
	"PP", "QQ", "RR", "SS", "TT", "UU", "VV", "WW", "XX", "YY", "ZZ"},
	{"", " thousand ", " million ", " billion ", " trillion ", " quadrillion ", " quintillion ", " sextillion ", " septillion ", " octillion ", " nonillion ", 
	" decillion ", " undecillion ", " duodecillion ", " tredecillion ", " quattuordecillion ", " quindecillion ", " sedecillion ", " septendecillion ", 
	" octodecillion ", " novemdecillion  ", " vigintillion ", " unvigintillion ", " duovigintillion ", " trevigintillion ", " quattuorvigintillion ", 
	" quinvigintillion ", " sexvigintillion ", " septenvigintillion ", " octovigintillion ", " novemvigintillion ", " trigintillion ", " untrigintillion ", 
	" duotrigintillion ", " tretrigintillion ", " quattuortrigintillion ", " quintrigintillion ", " sextrigintillion ", " septentrigintillion ", 
	" octotrigintillion ", " novemtrigintillion ", " quadragintillion ", " unquadragintillion ", " duoquadragintillion ", " trequadragintillion ", 
	" quattuorquadragintillion ", " quinquadragintillion ", " sexquadragintillion ", " septenquadragintillion ", " octoquadragintillion ", 
	" novemquadragintillion ", " quinquagintillion ", " unquinquagintillion ", " duoquinquagintillion ", " trequinquagintillion ", " quattuorquinquagintillion ", 
	" quinquinquagintillion ", " sexquinquagintillion ", " septenquinquagintillion ", " octoquinquagintillion ", " novemquinquagintillion ", " sexagintillion ", 
	" unsexagintillion ", " duosexagintillion ", " tresexagintillion ", " quattuorsexagintillion ", " quinsexagintillion ", " sexsexagintillion ", 
	" septsexagintillion ", " octosexagintillion ", " octosexagintillion ", " septuagintillion ", " unseptuagintillion ", " duoseptuagintillion ", 
	" treseptuagintillion ", " quinseptuagintillion"," sexseptuagintillion"," septseptuagintillion"," octoseptuagintillion"," novemseptuagintillion",
	" octogintillion"," unoctogintillion"," duooctogintillion"," treoctogintillion"," quattuoroctogintillion"," quinoctogintillion"," sexoctogintillion",
	" septoctogintillion"," octooctogintillion"," novemoctogintillion"," nonagintillion"," unnonagintillion"," duononagintillion", " trenonagintillion ",
	" quattuornonagintillion "," quinnonagintillion "," sexnonagintillion "," septnonagintillion "," octononagintillion "," novemnonagintillion ", " centillion"}
	}


	local place = 1

	while num >= 1000 do
		num = num / 1000
		place = place + 1
	end

	num = math.floor(num * 10 ) / 10

	if suffixes[type][place] == nil then 
		return tostring(num) .. " I+" .. tostring(place - #suffixes[type])
	end
	
	return tostring(num) .. suffixes[type][place]

end

return M