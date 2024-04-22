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

# 벡터연산
1 + 2
"*"(3,5)
c(1, 2, 3, 4) * c(4, 5, 6, 7)
c(10, 20, 30) / c(2, 4, 6)     # div
c(10, 20, 30) %% c(3, 5, 7)    # mod, 나머지 연산
c(10, 20, 30) %/% c(3, 5, 7)   # 몫을 구하는 연산

# Recycling Rule (재사용 규칙, 벡터의 길이가 서로 다를 때 벡터연산 규칙)
c(1, 2, 3) + c(4, 5, 6, 7, 8, 9) # 짧은 쪽을 반복하여 길이를 맞춰 연산.

































