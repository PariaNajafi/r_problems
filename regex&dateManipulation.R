#string manipulation

"salaaaaaaaaam
salllaaaam
slm
ssssaaaalllaaaam"

#Larry Wall , Peri creator
#idea: regular expressions(regex)
#bad idea: dictionarry

"anchor
^:start
$:end
^s : alsalam *
m$ : salamaleykom *
"

"
char{quantifier}
{n,m}: min=n, max=m
ex: s{1,5}
if not said {1,1}: sa= s{1,1}a= s{1}a
sa{0,5}: s, sa, saa, saaa, saaaa, saaaaa
sa{2,}: saa,..
"
#regex101.com 

"
white card
*:{0,inf}
+:{1,inf}
.:{anychar}hadeahgal yedune hast
?:{0,1}ya nist ya haddeaksar yedune hast
sa?:s, sa
"

#charclass
"
s[a b c]= sa,sb, sc
"
#negated charclass:
"
[^abc]
"
"
[a-i]:a,b,c,d,...,i
[A-Z]
[0-9] = \d != \D
[a-zA-Z0-9]=alphanumeric=\w != \W
space = \s !=\S
\T = tabs
\n = new line
"

"
scaping char:\
ex:\.
ex:ip: \d{,3}\.\d{,3}\.\d{,3}
"
#grep, grepl
#sub, gsub

words <- c("noob", "book", "spook","amber", "beach", "peach", "speech", "look", "trick")

words[grep(pattern = "^b", x=words)]

words[grep(pattern = "b$", x=words)]

words[grep(pattern = "e(e|a)", x=words)]
grepl(pattern = "^b", x=words)

sub(pattern = "o{2}", replacement = "*", x= words)
# faqat o avval! default:gready
sub(pattern = "o", replacement = "*", x= words)
#not greedy
gsub(pattern = "o", replacement = "*", x= words)

#Date time regulation

#data time global standard : iso 8601
#yyyy-mm-dd
#yyyy-mm-dd HH:MM:SS (tz)
# iso is convertable

#as.* cast
as.numeric("12")
as.character(12)
#is.* check
is.character(12)
is.character("12")

bdate <- "1988-08-28"
class(bdate)

class(as.Date(bdate))

dated <- as.Date(bdate)
dated - 1
dated + 1
dated + 1:365

unclass(dated)
# tedade ruzha az epock data time computer ,date 
#julian
#1970-01-01
#age ba time saro kar dashtim tedade second, date time

as.Date("11/21/2025")

#strptime: string parse as time

strptime(x= "11/21/2025", format = "%m%d%Y")

parsed <- strptime(x= "11/21/2025", format = "%m%d%Y") + 1

class(parsed)
# time in computer language : POSIXt, POZIXct, POZIX, POZIXlt
"
date
------------
%Y  sale 4 raqami
%y sale 2 raqami
%m adade mahe sal
%B name kamele mah
%b mokhafafe name mah
%d adade rooz az mah 
%A name rooze hafte
%a mokhafafe name rooze hafte

"
"
time
-------------
%H  sa@ dar mabnaye 24
%I  sa@ dar mabnaye 12
%M  daqiqe
%S  sanie
%T  HH:MM:SS
%z  time zome
%p  am/pm
"

strptime(x= "11/21 2025", format = "%m/%d %Y")

timed <- strptime(x= "11/21-2025", format = "%m%d-%Y")

#strftime : string from time
strftime(x = timed, format = "%Y, %B, %d, %A")

savehistory("c:/users.....")




