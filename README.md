# R

---

## To Get Started with R in `Visual Studio Code (VSCode)`

1. Open VSCode
2. Install `R` Extensions Marketplace
3. Create New File (e.g, "main.R")
4. First Code...

```R
fah <- readline("Input (Fahrenheit) : ")
fah <- as.numeric(fah)
cel <- (fah - 32) / 1.8
print(paste("Celsius =", cel))
```

5. View -> Terminal -> Select `R` Termianl from dropdown list
6. Run -> $ `source("main.R")`
7. `Input (Fahrenheit) : ` 

---

## 주요 명령어

- Set Working Directory : `setwd("/Users/Viv/WorkingDiredtory")`
  - Set Auto Working Directory
- Get Working Directory : `getwd()`
- Excute : `source("/workingdirectory/filename.R")`
- help : `? `
- quit : `q()`
- WorkSpace Save To Data : `.RData`

## 단축키

- `CTRL + L` : 콘솔지우기

---

## 변수 / 함수 명명규칙

- 문자 또는 마침표로 시작
- 문자, 마침표, 숫자, 밑줄(_) 사용
- 사용할 수 없는 키워드
  - break, else, FALSE, for, function, if, lnf, NA, NaN, next, NULL, repeat, return, TRUE, while
- 대문자와 소문자 구분
- 명명법
  - Camel case style : computeAveragePrice
  - Dotted style : stock.price

---


