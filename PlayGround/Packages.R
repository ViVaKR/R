
# Get list Packages
library()

# Installed Packages
installed.packages()
colnames(installed.packages()) # only column name
installed.packages()[, c("Package", "Version")] # 

# 패키지를 사용하기 위해서는 메모리에 적재 되어 있어야 함.
search() # 현재 메모리에 적재된 패키지.
# GlobalEnv : 사용자가 설정한 함수 및 환경.
# 탐색경로
# -> search() 패키지 순서대로 탐색을 함.
# -> 작업공간을 우선 탐색.
# -> 중복될 때는 GlobalEnv 를 우선 실행.
# 네임스페이스 사용.

# 행렬
m <- matrix(1:6, 3,2)
m

# 전치행렬, base package function
t(m)
base::t(m) # with namespace

# 사용자 정의 함수.
temp <- function(x) x + 100
temp(m)

# e.g., 
# `xyplot` - `lattice` package
# load package to memory
library(lattice)
lattice::xyplot(dist ~ speed, data=cars)
# check, library path
search()
# Remove Package
detach(package:lattice)

# CRAN Package Site 

# Install Package example
install.packages("ggplot2")

.libPaths()
# "/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library"

# View library info
help(package="ggplot2")
library(help=ggplot2)
library(ggplot2)
ls("package:ggplot2")
search()

# Datasets : 기본 테스트 데이터 셋
# Get list default dataset
data()

# View Dataset
head(AirPassengers)
head(cars)
tail(cars)
head(cars, 10)
cars
help(cars)

# MASS Package
data(package="MASS")
head(Traffic, 20)

# Load Memory
library(MASS)
head(UScrime)
head(Rabbit)




















