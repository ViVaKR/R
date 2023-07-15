###### 백터 인덱싱 #####

num <- 0:30 # 인덱스는 1부터 시작

# 기본예시
prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
prime[1]
prime[3]
prime[4:6]
prime[c(1, 1, 5, 5)] # 중복선택가능
indices <- c(1, 3, 5, 7)
prime[indices]
prime[-1] # 음수는 해당 인덱스를 제외한 후 출력, 3  5  7 11 13 17 19
prime[-(1:3)] # 7 11 13 17 19
length(prime) # 마지막원소의 인덱스
prime[1:length(prime) - 1] # 마지막원소를 제외한 모든 원소
prime[-length(prime)] # 위와 동일

# 값변경
prime <- c(2, 4, 5, 7, 11, 14, 17, 18)
prime[2] <- 3
prime

prime[c(6,8)] <- c(13, 19)

# 값 추가
prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
length(prime)
prime[9] <- 23 # 없는 인덱스에 추가하면됨
prime
prime[c(10, 11)] <- c(29, 30) # 다수 추가
prime[15] <- 47 # 전체 백터에서 중간에 건터뛰고 추가 가능, 건터뛴 중간은 NA 값으로 채워짐

prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
prime < 10
prime[prime < 10] # 논리연산을 통한 원소 선택, 10보다 작은 원소
prime[prime %% 2 == 0] # 짝수인 원소선택

seq_along(prime) # 인수로 제공하는 숫자 만큼 일련번호를 생성함
prime[seq_along(prime) %% 2 == 0] # 매 2번째 원소 추출
prime[seq_along(prime) %% 3 == 0] # 매 3번째 원소 추출
prime[c(FALSE, TRUE)] # 재사용 규칙에 의하여 8개 원소를 반복해서 찾음, 매 2번째 원소추출 결과와 동일

which() # 참인결과의 인덱스를 반환
which.max()
which.min()

rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3, 327.9, 348.0, 137.6, 49.3, 53.0, 24.9) # 강수량
rainfall

which.max(rainfall) 
which(rainfall > 100)
which(rainfall == 23.6)
which.min(rainfall)
month.name
month.name[which.max(rainfall)] # 월이름 출력



























