# 벡터 : 동일한 원소, 1차원 집합
c(1, 2, 3, 4, 5, 8, 9, 10)
c("we", "love", "data", "analytics")










ds <- c("FALL","SUMMER","SPRING", "WINTER")
ts <- c(ds[3], ds[2], ds[1], ds[4])
ts































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

# which, month
rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3, 327.9, 348.0, 137.6, 49.3, 53.0, 24.9) # 강수량.

which(rainfall > 100)
month.name[which(rainfall > 100)]
month.abb[which(rainfall > 100)]

which.max(rainfall)
month.name[which.max(rainfall)]
month.name[which.min(rainfall)]

rainfall[rainfall > 100]
rainfall[which.min(rainfall)]
rainfall[which.max(rainfall)]

traffic.death <- c(842, 729, 786, 751, 844, 851, 702)
names(traffic.death) <-c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat","Sun")
traffic.death
traffic.death["Sat"]
traffic.death[c("Tue", "Thu", "Sun")]
weekend <- c("Fri", "Sat", "Sun")
traffic.death[weekend]
traffic.death > 800
traffic.death[traffic.death > 800]
names(traffic.death[traffic.death > 800]) # 이름만 추출

# [ 팩터 ] #
# 레벨을 원소로 하는 벡터, 범주형 데이터 형식
review <- c("Good", "Good", "Indifferent", "Bad", "Good", "Bad")
review
review.factor <- factor(review)
review.factor
str(review.factor)
as.numeric(review.factor)
eventday <- c("Mon", "Mon", "Tue", "Wed", "Mon", "Wed", "Thu", "Fri", "Tue")
eventday.factor <- factor(eventday)
eventday.factor
eventday.factor <- factor(eventday, levels = c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))
eventday.factor
levels(review.factor)
levels(review.factor) <- c("B", "G", "I")
review.factor
nlevels(review.factor)
length(levels(review.factor))

# Ordered Factor, 서열벡터
eval <- c("Medium", "Low", "Hight", "Medium", "Hight")
eval.factor <- factor(eval)
eval.factor
eval.ordered <- factor(eval, levels = c("Low", "Medium", "Hight"), ordered = TRUE)
eval.ordered
table(eval.factor)
table(eval.ordered)

sex <- c(2, 1, 2, 2, 1, 0)
sex.factor <- factor(sex, levels = c(1, 2), labels = c("Male", "FeMale"))
table(sex.factor)

# factor, forcats #
install.packages("forcats") # install forcats package
library(forcats) # load package

temp <- c("Vegetables", "Fruits", 
          "Vegetables", "Grains", 
          "Fruits", "Vegetables", 
          "Dairy", "Fruits", 
          "Protenins", "Fruits")

food <- factor(temp)

fct_inorder(food) # 그대로 순서대로
fct_infreq(food) # 출현 빈도
fct_relevel(food, "Fruits", "Vegetables", "Grains", "Protenins", "Dairy") # 순서 재조정
fct_relevel(food, "Protenins", after = 2) # 특정위치
fct_relevel(food, "Dairy", after=Inf) # 끝으로 

value <- c(1000, 1500, 1200, 700, 2000, 2000, 1350, 2500, 15000, 3000)
food

# 중복된 대표값은 중위수로 결정.
fct_reorder(food, .x = value) # 오름 차순.

# 중복된 대표값은 평균으로 결정.
fct_reorder(food, .x = value, .fun = mean)

# 내림차순
fct_reorder(food, .x = value, .desc = TRUE)

# Rename
fct_recode(food, Fats="Protenins", Fats="Dairy")
food

# 랜덤
rnd <- runif(9) * 10
round(rnd)

# 행렬, matrix

v <- 1:12
dim(v) <- c(3,4)# 3행, 4열 2차원 행렬.

m <- 1:12
m

temp = matrix(data = m, nrow = 3, ncol = 4)               # 열방향으로 채워짐.
temp
matrix(data = m, nrow = 3, ncol = 4, byrow = TRUE) # 행의 방향으로 채워짐.


rnames <- c("R1", "R2", "R3")
cnames <- c("C1", "C2", "C3", "C4")
matrix(data = m, nrow = 3, ncol = 4, byrow = TRUE, dimnames = list(rnames, cnames))




# 첫번째 질문에 대한 답변 파트
# 모두 선택 후 -> CMD( or Control) + Enter
cols <- c("SPRING", "SUMMER", "FALL", "WINTER")
rows <- c("Value")
nums <- c(3, 4, 2, 1)
mtrx <- matrix(data = nums, nrow=1, ncol = 4, byrow = TRUE, dimnames = list(rows, cols))
mtrx

# 두번째 질문에 대한 답변 파트 
n <- 12
type <- '-'
if (n %% 2 == 1) {
  type <- 'odd'
}else {
  type <- 'even'
}
print(type)


















matrix(data = 0, 3, 4) # 0으로 채워진 행렬
?matrix
matrix(NA, 3, 4)
mat <- matrix(m, ncol = 4)
str(mat)
dim(mat) # 행과 열의 수량 
dim(mat)[1] # 행의 수
dim(mat)[2] # 열의 수
nrow(mat) # 행의 수 
ncol(mat) # 열의 수 
length(mat) # 행렬의 셀의 갯수

# 벡터 결합으로 행렬 만들기
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(6, 7, 8, 9, 10)
rbind(v1, v2)
cbind(v1, v2)
cbind(1:3, 4:6, matrix(7:12, 3, 2))
rbind(matrix(1:6, 2, 3), matrix(7:12, 2, 3))

# 행렬 연산
mtx <- matrix(1:6, 2, 3)
mtx
mtx + 1
mtx - 1
mtx * 2
mtx / 2
a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 2, 3)
a
b
a + b
a - b
a * b
a / b
c <- matrix(6:1, 3,2)
c
a <- matrix(1:6, 2, 3)
a
b <- matrix(1:6, 3, 2)
b
a %*% b # 행렬 곱
c <- matrix(1:6, 2, 3)
c
a
a %*% c

# 벡터와 행렬 곱
mtx <- matrix(1:6, 2, 3)
mtx
mtx %*% 1:3

1:2 %*% mtx
mtx <- matrix(1:6, 2, 3)
mtx
mtx + 1:3 # 재사용 규칙, 열 방향.

mtx
rowSums(mtx)
colSums(mtx)
rowMeans(mtx)
colMeans(mtx)

# 전치행렬 (행->열, 열->행)
mtx
t(mtx)
t(1:5) # 열에서 행으로 전치
mtx
mtx[2,]
t(mtx[2,])

# 행렬인덱싱
v <- 1:12
mat <- matrix(v, 3, 4)
mat
str(mat)
mat[1,1]
mat[2,2]
mat[2,]
mat[,3] # 벡터로 출력 됨.가급적 차원을 줄임으로 행렬을 예상하는 오류가 발생함.
mat[1,, drop= FALSE] # 행렬 차원 유지 됨
mat[,3, drop = FALSE]
mat[2:3,] # 2번째 부터 3번째 
mat[,3:4] # 3번째 부터 4번째 열
mat
mat[c(1,3),] # 1번 3번 행
mat[, -c(2,3)] # 2, 3번 열 제외
mat
mat[1,3] <-77
mat
mat[2,] <-c(22, 55) # 재사용 규칙
mat
mat[2:3, 3:4] <-c(1, 2, 3, 4) # 특별한 옵션을 지정하지 않으면 열방향으로 값을 채움.
city.distance <- c(0, 331, 238, 269, 195, 
                   331, 0, 95, 194, 189, 
                   238, 95, 0, 171, 130, 
                   269, 194, 171, 0, 77, 
                   195, 189, 130, 77,0)

city.distance
city.distance.mat <- matrix(city.distance, 5, 5, byrow = TRUE)
city.distance.mat
# 행렬에 이름지정
colnames(city.distance.mat) <- c("Seoul", "Busan", "Daegu", "Gwangju", "Jeonju")
rownames(city.distance.mat) <- c("Seoul", "Busan", "Daegu", "Gwangju", "Jeonju")
city.distance.mat
colnames(city.distance.mat)
rownames(city.distance.mat)
city.distance.mat["Seoul", "Busan"] # Seoul - Busan distance
city.distance.mat[, "Seoul"]
city.distance.mat[c("Seoul", "Gwangju"), ]

# [ 배열 ]
#--> 벡터(1차원)와 행렬(2차원)은 배열의 한 특별한 유형에 해당됨.
#--> 배열은 세개 이상의 차원을 갖는 데이터 구조를 말함.
#--> 벡터에 차원을 부여 하여 만듦

# 3차원 배열
a <- 1:24
a
dim(a) <- c(3, 4, 2) # 3차원 배열 생성.
a


array(1:12, c(2, 3, 2))

# 값 추출
arr <- array(1:12, c(2, 3, 2))
arr
arr[1, 3, 2] # 2번째 테이블의 1행 3열.
arr[,1,2] # 2번째 테이블에서 첫번째 열의 모든 열, 차원수가 줄어듬, 벡터로 출력.
arr[,1,2, drop = FALSE] # 배열 형식 유지.
arr[2,,] # 행이 열로 변경됨.


# [ 리스트 ]
# 서로 다른 유형의 데이터를 수용가능함.
# list 함수
# 활용도가 매우 높은 데이터 구조.
list(0.6826, 0.9544, 0.9974)
list(1.23, "Apple", c(2,3,5,7), matrix(1:6, ncol = 3), mean)

lst <- list()
lst
lst[[1]] <-1.23
lst[[2]] <- "Apple"
lst[[3]] <- c(2,3,5,7)
lst[[4]] <- matrix(1:6, ncol = 3)
lst[[5]] <- mean
lst

lst <- list(0.6826, 0.9544, 0.9974)
lst
names(lst) <- c("sigma1", "sigma2", "sigma3") # namming : names 함수
lst
names(lst)
length(lst)

hello <- list("Brazil", "Africa", "Germany")
world <- list("Korea", "France", "USA")
hello
world
c(hello, world) # 합치기

a <- list(1,2,3,4,5,6,7)
a

mean(unlist(a)) # 벡터로 만듬.
min(unlist(a))
max(unlist(a))

# 리스트 인덱싱.
# [[]] : 자루 내에 포함된 데이터
# []   :  자루 자체 추출 (원소)

product <- list("A002", "Mouse", 30000)
product

product[[3]] #-> 30000
product[[2]] #-> "Mouse"
product[3]  #-> 자루 자체를 다 추출함.
product[2]

class(product[[3]]) # -> numeric
class(product[3])   # -> list

product[[3]] * 0.9
product[c(1,2)]

product[c(FALSE, TRUE, TRUE)] # 2, 3 번째 원소만 추출
product[-1] # 첫번째 원소 제거 

# naming
product <- list(id = "A002", name = "Mouse", price = 30000)
product
product[["name"]]
product$name
product[c("name", "price")]

# 오류발생 상화들.
product[["fourth"]] # NULL
product$fourth # NULL
product[[4]] # Error
product[c(4,2,5)] # NULL Mouse NULL, no error
product[c("fourth", "name", "fifth")]

lst <- list(one= 1, two=2, three=list(alpha=3.1, beta=3.2)) # 중첩 구조
lst

lst[["three"]]
lst$three$beta
lst[["three"]][["beta"]]

# 값변경
prod <- list(id="A001", name="Mouse", price="30000")
prod
prod[[3]] <- 35000
prod
prod$price <- 400000
prod
prod$price <- 33000
prod$price
prod[3] <- 37500
prod
prod["price"] <- 39000
prod$price

# 여러개의 값을 할당할 때
# 대괄호 2개를 사용하는 방법
prod[[3]] <- c(30000, 35000)
# 대괄호 1개를 사용하는 방법
prod[3] <- list(c(31000, 37500))
prod

prod[1:3] <- list("A002", "Keyboard", "90000")
prod


prod[[4]] <- c("Demestic", "Export")
prod

prod$madein <- c("Korea")
prod[[""]]
prod


# [ 데이터 프레임 ] #

v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)

data.frame(v1, v2, v3) # 열로 구성,

# 벡터 중 하나를 행이름으로 사용하기
data.frame(row.names = v1, v2, v3)
# 의미있는 이름으로 지정 하기
product <- data.frame(id=v1, name=v2, price=v3, stringsAsFactors = FALSE)
product
str(product)

# from matrix
mat <- matrix(c(1, 3, 5, 7, 9,
                2, 4, 6, 8, 10,
                2, 3, 5, 7, 11), ncol = 3)
mat
as.data.frame(mat)

number <- as.data.frame(mat)
colnames(number) <-c("odd", "even", "prime")
number

# from list
v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
lst <- list(v1, v2, v3)
lst

prod = as.data.frame(lst)
colnames(prod) <- c("id", "name", "price")
prod

nrow(prod)
ncol(prod)
length(prod) # count of cells

# 데이터 프레임 확장 (rbind, cbind)
id <- c("A001", "A002", "A003")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
product <- data.frame(id, name, price,
                      stringsAsFactors = FALSE)

product

# rbind : 행추가
product <- rbind(product, c("A004", "Monitor", "250000"))
product

new.rows <- data.frame(id = c("A005", "A006"),
                       name = c("Memory", "CPU"),
                       price = c(35000, 330000))

new.rows
product <- rbind(product, new.rows)
product

# cbind : 열방향 추가
product <- cbind(product,
                 madein = c("Korea", "USA", "Africa", "Korea", "Korea", "USA"))

product$madein <- c("Korea", "USA", "Africa", "Korea", "Korea", "USA")
product

new.cols <- data.frame(manufacturer = c("Logitech", 
                                        "Samsung", 
                                        "Samsung", 
                                        "Samsung", 
                                        "Intel", 
                                        "Logitech"),
                       quantity = c(20, 15, 50, 30, 40, 10))

new.cols
product <- cbind(product, new.cols)
product

# 같은 열 이름을 채크하지 않음.
cols1 <- data.frame(x = c("a", "b", "c"),
                    y = c(1, 2, 3))
cols1

cols2 <- data.frame(x = c("alpha", "beta", "gamma"),
                    y = c(100, 200, 300))
cols2
cbind(cols1, cols2)

df1 <- data.frame(sex = "female", months = 1, weight = 3.5) # 신생아의 정보 
df2 <- data.frame(sex = "male", months = 3, weight = 4.8) # 신생아의 정보 
df3 <- data.frame(sex = "male", months = 4, weight = 5.3) # 신생아의 정보 
df4 <- data.frame(sex = "female", months = 9, weight = 9.4) # 신생아의 정보 
df5 <- data.frame(sex = "female", months = 7, weight = 8.3) # 신생아의 정보 

lst <- list(df1, df2, df3, df4, df5)
lst

str(lst)
lst[[1]]
lst[[2]]

rbind(lst[[1]], lst[[2]])


do.call(rbind, lst)

# 데이터프레임 인덱싱
?state
state.abb
state.area

us.state  <- data.frame(state.abb, state.name,
                         state.region, state.area,
                        stringsAsFactors = FALSE)

us.state
str(us.state)
us.state[[2]]
str(us.state[[2]])
us.state[2] # 데이터 프레임 형식.
us.state[c(2,4)]
us.state[,2] # vector type
us.state[,2, drop = FALSE] # origin
us.state[,c(2,4)] # dataframe type, cols 2, 4
us.state[["state.name"]] # string vector
us.state$state.name
us.state[,"state.name"]

us.state[c("state.name", "state.area")] # dataframe type, list indexing
us.state[,c("state.name", "state.area")] # dataframe type, matrix indexing

state.x77
str(state.x77)
head(state.x77)

states <- data.frame(state.x77)
str(states)
row.names(states)
states$Name <- row.names(states)
row.names(states) <- NULL
head(states)

# --> 부자 동네
rich.states <- states[states$Income > 5000, c("Name", "Income")]
rich.states

# --> 큰 동네
large.state <- states[states$Area > 100000, c("Name", "Area")]
large.state

# --> 부자이면서 땅이 넓은 동네.
 merge(rich.states, large.state)
?merge

merge(rich.states, large.state, all=TRUE) # 합집합



















cat('Hi\nHello\nHow Are You?\nFineThanks\nAnd\nYou?')

message <- c("Hello", "World", "How", "Are", "You?")
writeLines(message)


sum <- 0
i <- 1
while(TRUE) {
  sum = sum + i
  if(i > 100)
  {
    break;
  }
  i <- i + 1
}

cat("1 + 2 + 3...", i, "=", sum)


num1 = 5
num2 = 9
m <- num1 + num2 * nchar("computing")
print(m)

size <- nchar("computing")
size
9 * 9 + 5

t = "981214"
d = as.Date("1998-12-24")
print(d+2000)

format(d+1000, "%Y년 %m월 %d일")

















