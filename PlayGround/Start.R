# Start

# HotKey #
# cmd + enter : execute line
# cmd + backspace : remove line
# ctrl + shift + c : comment

# Workspace #
a <- getwd()
y <- c(2, 3, 5, 7)
f <- function(y) (y-32)/1.8
hero <- c("Hello", "World", "Fine", "Thanks", "And", "You")
ls() # 저장된 변수 목록

# # locale
Sys.getlocale()
# 
Sys.setlocale("LC_ALL", "en_US.UTF-8")
Sys.setenv(LANG = "en_US.UTF-8")
# 
Sys.setlocale("LC_ALL", "ko_KR.UTF-8")
Sys.setenv(LANG = "ko_KR.UTF-8")

# Return to default locale
Sys.setlocale()

# View Saved Workspace
ls() 
ls.str() # details

# Remove from workspace
rm(z)
rm(f, hero)   # 
rm(list=ls()) # Remove All

# (1) Save to file 
save(hero, file="hero.rda")
rm(hero)
# (2) Load from file
load("hero.rda")
hero

# Get History
history()

# Naming Convention #
# 1. 문자 또는 마침표로 시작
# 2. 대문자와 소문자 구분
# 3. 문자, 마침표, 숫자, 밑줄(_) 가능.
# 4. 사용금지 키워드 : break, else, FALSE, for, function, if, Inf, NA, NaN, next, NULL, repeat, return, TRUE, while
# 5. Camel case style : computerAveragePrice, stock.price

ls()

# Save Session 
save.image()

# getwd()
# getOption("encoding")
# options(encoding = "utf-8")
# localeToCharset()
q()
