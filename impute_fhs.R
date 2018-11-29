library(mice)
md.pattern(fhs)

fhs_impute = mice(fhs, m=1, maxit = 100, method = "pmm", seed = 123)

densityplot(fhs_impute)

fhs_imputec = complete(fhs_impute,1)