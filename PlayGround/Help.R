# Help

help.start()
# Reference
# Search Engine

# View help
help("median") # 중앙값을 계산
?median
median(1:11) # 1, 2, 3, 4, 5, 6, 7, 8, 9 , 10, 11 -> 6

# 인수 정보만 볼때
# function(x, na.rm = FALSE, ...) 
# na.rm : 결측값 제거 여부.
# 일반적으로 는 na.rm = TRUE 로 사용함.
args(median)
example("median")

# 함수의 이름 일부만 으로 찾기
help.search("xyplot")
??xyplo

# 사용자 변수 찾기
hero.vector <- c("viv", "kr", "thanks")
apropos("vector")
apropos("q$") # 정규 표현식, q 로 끝나는...
apropos("[7-9]")
apropos("xy+")
?regex # 정규표현식 도움말

# 외부 검색 사이트
# search.r-project.org #
# rseek.org #
RSiteSearch("topicmodel")

# 테이블 형식으로 검색 결과를 보여줌. 
install.packages("sos") # 설치 
library(sos) # 적재

findFn("social network analysis")













