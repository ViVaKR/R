# Get List : ls(), ls.str()
# Delete : rm(variable), delete all : rm(list = ls())
# 저장 : save.image() # nolint: commented_code_linter.

x <- 100
y <- c(2, 3, 5, 7)
f <- function(y) (y - 32) / 1.8

hero <- c("Superman", "Spiderman", "Goodman")

# 변수 저장
save(hero, file = "hero.rda")

# 변수 삭제
rm(hero)

# 파일로 부터 읽어 오기
load("hero.rda")

hero

# 명령어 히스토리
history()

library()

save.image()

library(lattice)
xyplot(dist ~ speed, data = cars)

install.packages("ggplot2")

# 패키지 설치 경로
.libPaths()

# 설치패키지 정보
help(package = "ggplot2")

help(package="tidyverse")

library(tidyverse)
ls("package:tidyverse")

ls("package:rvest")
library(help = ggplot2)

# 패키지 메모리 적재
library(ggplot2)

# 패키지의 함수목록
help(package="starwars")

search()

# 현재 사용할 수 있는 데이터 셋 정보보기
data()
head(AirPassengers) # 상위 6개
head(cars)
tail(cars, 10) # 끝에 10개
help(cars)

# view data set
data(package = "MASS")

data(Animals, package = "MASS")
head(Animals)

head(UScrime)

library(MASS)

head(Rabbit)

# Help
help.start()
# Packages, Search Engine

# 함수 도움말
help("median")
?median

## 인수정보 보기
args(median)
## - 함수명(소속된 패키지)

## 사용 예
example("median")

## 함수명의 일부만 알고 있을 때
help.search("xyplot")
??xyplot

library(rvest)
head(rvest)
help.search("startwars")

hero.vector <- c("A", "B", "C")

## Regular Expression 정규표현식 이용 검색가능
apropos("vector")
apropos("q$") # q 로 끝나는 변수 정보
apropos("[7-9]")
apropos("xy+")

## 정규표현식 도움말
?regex

f <- function(x) {
  n <- length(x)
  y <- vector(length = n)

  for (k in 1:n) {
    if (k == n) {
      y[k] <- 0
    } else {
      t1 <- mean(x[1:k])
      t2 <- mean(x[(k + 1):n])
      print("------------")
      print(t1)
      print(t2)
      y[k] <- abs(t1 - t2)
    }
  }
  return(y)
}

print(f(c(1:5)))

number <- c(1, 2, 3, 4, 5)
mean(number)

# 백터 인덱싱




