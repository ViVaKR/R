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














