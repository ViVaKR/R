############################## 백터 일반 ##############################
# 백터 생성 : 동일한 하나의 유형으로 구성
number <- c(1:10)
number

string <- c("we", "love", "data", "analytics")
boolean <- c(TRUE, FALSE, TRUE, TRUE)

odd <- c(1, 3, 5)
even <- c(2, 4, 6)
c(odd, even) # 결합된

# 3:9 == (3,4,5,6,7,8,9)
# 9:3 => 9 부터 1씩 감속하는 수열
# 5:-3 => 5  4  3  2  1  0 -1 -2 -3
d2 <- c(5:-3)
d2
? seq()

seq(from = 3, to = 9) # 3 4 5 6 7 8 9
seq(from = 3, to = 9, by = 2) # 3부터 9까지 2씩 증가하는 수열 -> 3 5 7 9
seq(from = 3.5, to = 1.5, by = -0.5) # 3.5 3.0 2.5 2.0 1.5

seq(from = 0,
    to = 100,
    length.out = 5) # 0  25  50  75 100, 0부터 10까지 5개 요소를 만들어줌

seq(from = -1,
    to = 1,
    length.out = 5)

# 반복
? rep()
rep(1, times = 3)
rep(c(1, 2, 3), times = 3) # 1 2 3 1 2 3 1 2 3
rep(c(1, 2, 3), each = 3) # 1 1 1 2 2 2 3 3 3
rep(c(1, 2, 3), times = c(1, 2, 3)) #1 2 2 3 3 3
rep(c(1, 2, 3), length.out = 8) # 1 2 3 1 2 3 1 2

# 숫자백터와 문자백터 혼합형일 때에는 숫자를 문자형으로 형변환
num <- c(1, 2, 3)
cha <- c("X", "Y", "Z")
c(num, cha) # "1" "2" "3" "X" "Y" "Z"

# 백터의 구조 파악 : 형식 [차원:인덱스] 원소의 고유 위치
str(num) # num [1:3] 1 2 3
str(cha) # chr [1:3] "X" "Y" "Z"

# 백터의 길이 : 원소의 갯수
length(num) # 3

# 미리 정의된 상수
LETTERS # "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
letters # "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
month.name # "January"   "February"  "March"     "April"     "May"       "June"      "July"      "August"    "September" "October"   "November"  "December"
month.abb # "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"
pi # 3.141593

# 해당 월만 가져오기
month <- c(12, 9, 3, 5, 1)
month
month.name[month] # "December"  "September" "March"     "May"       "January"

############################## 백터연산 ##############################

# 같은 길이 : 원소 대 원소를 연산하는 특징 (같은 길이의 요소)
"+"(1, 2) #-> 3
c(1, 2, 3) + c(4, 5, 6) #-> 5 7 9
c(1, 2, 3) * c(4, 5, 6) #-> 4 10 18
c(10, 20, 30) / c(2, 4, 6) #-> 5 5 5
c(10, 20, 30) %% c(3, 5, 7) # 나눈 후 나머지를 취함 -> 1 0 2
c(10, 20, 30) %/% c(3, 5, 7) # 나눈 후 몫을 취함 -> 3 4 4

# 다른 길이 : 재사용 규칙을 사용함, 길이가 짧은 쪽을 긴쪽에 맞춤
c(1, 2, 3) + c(4, 5, 6, 7, 8, 9) #-> 5  7  9  8 10 12
c(1, 3, 5) + 10 #-> 11 13 15
c(1, 2, 3) + c(4, 5, 6, 7, 8) # 원소의 차이가 배수가 아닐때는 계산은 하나 경고 메시지를 출력함

# 논리 연산자 ( ==, !=, <, >, <=, >=, !x, x | y, x & y, isTRUE() ), TRUE == 1, FASLE == 0
v <- pi
w <- 10 / 3

v == w
v != w
v > w
v < w
! (v > w)
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v == w)

y <- c(0, 25, 50, 75, 100)
z <- c(50, 50, 50, 50, 50)
y == z #-> FALSE FALSE  TRUE FALSE FALSE
y != z #-> TRUE  TRUE FALSE  TRUE  TRUE
y > z #-> FALSE FALSE FALSE  TRUE  TRUE
y < z #-> TRUE  TRUE FALSE FALSE FALSE
y == 50 #-> y == z 와 같은 결과

as.numeric(TRUE) # 가능한 경우 인수를 숫자로 변환 -> 1
as.numeric(FALSE) #-> 0
TRUE * TRUE #-> 1
TRUE + TRUE #-> 2

sum(y > 50) # 조건에 맞는 것의 갯수 구하기 응용 -> 2
any(-3:3 > 0) # 해당 요소가 하나라도 있으면 TRUE 를 반환 -> TRUE
all(-3:3 > 0) # 모든 요소가 조건에 맞을 때 TRUE 를 반환 -> FALSE

sqrt(2) ^ 2 #-> 2, 그러나 아래의 연산에 주의해야 함(부동소수점 수로 처리하는 오차 때문에 발생함)
sqrt(2) ^ 2 == 2 #-> FALSE
sqrt(2) ^ 2 - 2 #-> 4.440892e-16
identical(sqrt(2) ^ 2, 2) # 다르다는 의미 -> FALSE, 대안으로는...
all.equal(sqrt(2) ^ 2, 2) # 매우 작은 값은 무시함으로 -> TRUE, 이나 아래와 같이 명백히 다른 경우는 isTRUE 함수 사용을 권장
isTRUE(all.equal(sqrt(2) ^ 2, 3)) #

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie", "Juice", "Cake")
paste(fruit, food) # 문자열 합치기 함수 -> "Apple Pie" "Banana Juice" "Strawberry Cake"
paste(fruit, "Juice") # "Apple Juice"      "Banana Juice"     "Strawberry Juice" : 재사용 규칙 적용됨

############################## 백터 함수 ##############################

# 절대값
abs(-3:3)
log(1:5)
log(1:5, base = exp(1)) # 밑수 지정
log10(1:5)
log2(1:5)
exp(1:5) # 자연상수를 밑수로한 로그
y <- exp(1:5)
log(y)
factorial(1:5) #-> 1   2   6  24 120
choose(5, 2) # 경우의 수 (컴비네이션) #->10

sqrt(1:5) # 제곱근

options("digits") # 현재 유효자릿수 확인하기
pi #-> 3.141593
signif(456.789, digits = 2) # 유효자릿수 지정 -> 460
signif(456.789, digits = 4) #-> 456.8

round(456.789, digits = 2) # 반올림 -> 456.79, 지정하지 않으면 정수로 출력
round(456.789) #-> 457
round(sqrt(1:5), digits = 2)
round(456.789, digits = -2) #-> 500, 정수로의 자릿수는 음수 10^2
round(11.5) #-> 12, 5일 경우에는 가장 가까운 짝수로 반올림함으로 홀수는 반올림하나 아래와 같이...
round(12.5) #-> 12, 짝수에서 홀수로는 반올림 하지 않음
round(13.5) #-> 14
round(-3.5) #-> -4
round(-4.5) #-> -4 음수도 마찬가지로 5일때는 짝수에서 홀수로는 반올림 하지 않음

floor(456.78) #->456, 가까운 작은 정수로 내림
floor(-456.78) #-> -457
ceiling(456.34) #-> 457, 가까운 큰 정수로 올림
ceiling(-456.78) #-> 456
trunc(456.78) #-> 456, 0에 가장 가까운 정수로 반올림
trunc(-456.78)#-> -456

# 결측값 처리
# 0을 나눌때 : Inf(양의 무한데), -Inf(음의 무한대), NaN
3 / 0 #-> Inf
5 - Inf #-> Inf
Inf * Inf #-> Inf
Inf * (-Inf) #-> -Inf
Inf / Inf # NaN, Not a Number 계산결과를 정의 할 수 없음
Inf * 0 #-> NaN
log(-2) #-> Nan
NaN + 3 #-> NaN
is.nan(NaN + 3) #-> TRUE, NaN 테스트 함수, 체크하기
is.infinite(10 ^ (305:310)) # 무한대 일 경우 = TRUE, 무한대의 수 로 인식하는 수 => 1.8 * 10.^308

# NA (Not Abailable) : 결측값
k <- NA
k + 5
is.na(k) #-> TRUE
is.na(k + 5) #-> TRUE
is.na(NaN) #-> TRUE

z <- 1:5
sum(z)
max(z)
prod(z) #-> 120, 백터 요소들 모든 곱을 반환, Product of Vector



# 지식인 문의
data("mtcars")
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(
  wt,
  mpg,
  main = "중량-연비 산점도",
  xlab = "중량(wt)",
  ylab = "연비(mpg)",
  col = "blue",
  pch = 15
)

data("USArrests")
vars <- c("UrbanPop", "Murder", "Assault")
abc <- USArrests[, vars]
pairs(abc)


? data
help("USArrests")

tail(USArrests)
library(Urbanpop)
# 문의 끝
