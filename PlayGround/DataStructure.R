# 벡터 : 동일한 원소, 1차원 집합
c(1, 2, 3, 4, 5, 8, 9, 10)
c("we", "love", "data", "analytics")
c(TRUE, FALSE, TRUE, FALSE)
odd <- c(1, 3, 5)
even <- c(2, 4, 6)

# 팩터 : 범주형, 카테고리
c("A", "B", "C", "A", "B")
factor(c("A", "B", "C", "A", "B")) # 쿼테이션 마크 사라짐.

# 행렬 : 2차원 벡터, (행렬)
matrix(1:12, 3, 4) # colon : 연속된 숫자 2차원

# 배열 : 행렬의 확장 , 3차원 4차원 ...
array(1:12, c(2, 3, 2)) # 2행 3열의 행렬 2개


# 데이터프레임 : 행렬과 유사한 구조 (가장 많이 사용됨), 각 열마다 다른 유형 가능. 데이터베이스 
data.frame(product=c("A", "B", "C"), 
           price=c(100, 200, 300))

# 리스트 : 객체들의 집합 ( 벡터, 행열, 배열, 데이터프레임, 리스트 )등을 포함 할수 있는 데이터 구조, 가장 유연함.
list(x=c("A", "B", "C", "A", "B"),
     y=matrix(1:12, 3, 4),
     z=data.frame(product=c("A", "B", "C"), 
                  price=c(100, 200, 300)))

# 결합
odd <- c(1, 3, 5)
even <- c(2, 4, 6)
odd
even
c(odd, even) # 원래의 순서 유지

# 수열생성
3:9
9:3
5:-3

# seq 함수
seq(from=3, to=9)
seq(from=3, to=9, by=2)
seq(from=3.5, to=1.5, by=-0.5)
seq(from=0, to=100, length.out=5) # 전체 원소의 갯수 5개 1 - 100 사이 
seq(from=-1, to=1, length.out=5)

rep(1, times=3)
rep(c(1,2,3), times=3) # 전체 백터 반복
rep(c(1,2,3), each=3) # 각 구성 원소 반복
rep(c(1,2,3), times=c(3, 5, 2)) # 각 원소 별 반복 회숫 지정
rep(c(1,2,3), length.out=8)

# 서로 다른 데이터 타입 숫자 + 문자 -> 문자로 통일
number <- c(1, 2, 3)
char <- c("X", "Y", "Z")
c(number, char)

# 백터의 정보 보기
str(number) # num
str(char) # chr [차원:인덱스]

# 벡터의 길이
length(number)

# 내장된 상수 벡터
LETTERS
letters
month.name
month.abb
pi
month <- c(12, 9, 3, 5, 1)
month
month.name[month]

# 벡터연산 1
1 + 2
"*"(3,5)
c(1, 2, 3, 4) * c(4, 5, 6, 7)
c(10, 20, 30) / c(2, 4, 6)     # div
c(10, 20, 30) %% c(3, 5, 7)    # mod, 나머지 연산
c(10, 20, 30) %/% c(3, 5, 7)   # 몫을 구하는 연산

# 벡터 연산 2 
# Recycling Rule (재사용 규칙, 벡터의 길이가 서로 다를 때 벡터연산 규칙)
c(1, 2, 3) + c(4, 5, 6, 7, 8, 9) # 짧은 쪽을 반복하여 길이를 맞춰 연산.
c(1, 3, 5) + 10
c(1, 2, 3) + c(4, 5, 6, 7, 8) # 갯수가 배수가 아닐 때, 연산은 수행 하지만 경고 출력.

# 논리연산자 : ==, !=, <, >, <=, >=, !, |, &, isTRUE()
v <- pi
w <- 10/3
v == w
v != w
v > w
v < w
!(v > w)
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v == w)

y <- c(0, 25, 50, 75, 100)
z <- c(50, 50, 50, 50, 50)
y == z
y != z
y >= z
y == 50
y > 50 # y == z 와  같은 의미
as.numeric(TRUE)
as.numeric(FALSE)
TRUE * TRUE
TRUE * FALSE
TRUE + TRUE

sum(y > 50) # 50 보다 큰 원소의 갯수
any(-3:3 > 0) # 0 보다 큰수 가 있는 지 확인
all(-3:3 > 0) # 모두 0 보다 큰지 확인

sqrt(2)^2 == 2 # FALSE, 부동소수점 오차
sqrt(2) ^ 2 - 2 # FALSE
identical(sqrt(2)^2, 2) # FALSE
all.equal(sqrt(2)^2, 2) # TRUE, 매우 작은 값은 무시 함.
all.equal(sqrt(2)^2, 3) # FALSE 가 아닌 설명이 주절 주절 나옴.
isTRUE(all.equal(sqrt(2)^2, 3)) # FALSE

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie", "Juice", "Cake")
paste(fruit, food) # 문자열벡터 연산
paste(fruit, "Juice")

# [ 벡터 함수 ]
abs(-3:3)
log(1:5) # 밑수가 e 인 자연로그 값.
log(1:5, base=exp(1))
log2(1:10)
log10(1:10)
exp(1:5) # 자연상수
y <- exp(1:5)
y
log(y)
factorial(1:5)
factorial(80)
choose(5, 2) # 5개에서 2개를 뽑는 방법, 경우의 수.
sqrt(1:5)
options("digits") # 유효 자릿수. 확인.
pi
pi*100
signif(456.789, digits = 4)

round(456.789, digits = 2)
round(456.789) # 정수로 출력.
round(sqrt(1:5), digits = 2)
round(456.789, digits = -2)
round(456.789,digits = -1)
round(11.5) # 가장 가까운 짝수로 반올림함. 12
round(12.5) # 12
round(13.5)
round(-3.5) # -4
round(-4.5) # -4

floor(456.789)  # 456
ceiling(456.789) # 457
trunc(456.789) # 456, 0 에 가까운 정수

# Inf, -Inf : 무한대, 컴퓨터가 다룰수 있는 수보다 큰수. (1.8x10의 308승)
3/0
5 - Inf
Inf * Inf 
Inf * (-Inf)
is.infinite(1/0)

is.infinite(1.8*10^308) # 무한대
is.infinite(10^(305:310))

# NaN
Inf / Inf # NaN (Not a Number)
Inf * 0  # NaN
log(-2) # NaN
NaN + 3 
is.nan(NaN + 3)

# NA ( 결측값, Not Available )
k <- NA
k + 5
sqrt(k)
is.na(k) # check NA
is.na(k + 5)
is.na(NaN) # TRUE

z <- 1:5
z
sum(z)
prod(z) # 모두 곱한 값.
max(z)
min(z)

mean(z) # 평균.
median(z)
range(z) # 최대 최소 값.
var(z) # 분산.
sd(z) # 표준편차.

w <- c(1, 2, 3, 4, 5, NA) # 결측값이 있는 벡터.
sum(w) # NA
sum(w, na.rm = TRUE) # 15 Except NA
sum(na.omit(w)) # 15

# 미리 정의된 값 출력 예시.
v <- c(NA, NA, NA, NA, NA)
sum(v, na.rm = TRUE) # 0, 차라리 오류가 나은데 0이 나오는 문제 발생.
prod(v, na.rm = TRUE) # 1
max(v, na.rm = TRUE) # -Inf
min(v, na.rm = TRUE) # Inf

# 누적함수.
traffic.death <- c(842, 729, 786, 751, 844, 851, 702)
cumsum(traffic.death) # 누적 합계.
cumprod(traffic.death)
cummax(traffic.death)
cummin(traffic.death)
cumsum  (c(3,5,6,7,NA,2,9)) # 결측 제거 방법 없음.

diff(traffic.death) # 인접한 인수간의 차.
diff(c(3,5,6,7,NA,2,9))
diff(1:5, lag = 2)

# 집합
p <- 1:10
q <- 6:15
union(p,q) # 합집합 
intersect(p,q) # 교집합
setdiff(p,q) # 차집합
setdiff(q,p)
setequal(p, q) # 동일성 여부
is.element(setdiff(p,q), p) # 각각의 p 원소가 q에 포함 되어 있는 지 여부

# [ 벡터 인덱싱] #
# --> 특정 인덱스를 선택하는 방법 : 1 부터 시작함.

num <-0:30 # 1 ~ 31 까지 인덱스.
num
prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
prime
prime[3]
prime[1]
prime[2:5]
prime[-2] # 해당 인덱스에 원소를 제거한 수 나머지 출력
prime[-1:-3]
prime[-(1:3)]
length(prime)
prime[1:(length(prime) -1)] # 마지막 원소 제거.
prime[-length(prime)]
prime[c(1,1,5,5)]
prime[c(1,3,5, 7)]
prime[c(7,5,3,1)]
indices <- c(1, 3, 5, 7) # index 의 복수형.
prime[indices]

# 원소수정
prime <- c(2, 4, 5, 7, 11, 14, 17, 18)
prime[2] <- 3
prime[c(6,8)] <- c(13, 19)

# 원소추가
prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
length(prime)
prime[9] <- 23
prime
prime[c(10, 11)] <- c(29, 31)
prime
prime[15] <- 47 # 한참 건너뛰고 원소추가 가능 중간은 NA 로 체워짐.

# 논리 연산으로 추출 
prime <- c(2,3,5,7, 11, 13, 17, 19)
prime < 10
prime[prime < 10] # 조건으로 원소 추출
prime[prime %% 2 == 0]
seq_along(prime) # 인수로 제공된 벡터의 원소 갯수 까지 1 부터 새로운 벡터 생성.
seq_along(prime) %% 2 == 0
prime
prime[seq_along(prime) %%2 == 0] # 매 2번째 원소 추출
prime[seq_along(prime) %% 3 == 0]
prime[c(FALSE, TRUE)] # 재사용 규칙으로 추출
prime[c(FALSE, FALSE, TRUE)]


rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3, 327.9, 348.0, 137.6, 49.3, 53.0, 24.9) # 강수량.

rainfall






















































