start <- proc.time()
result <- grepl("(a+)*b$", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba", perl = TRUE)
elapsed <- proc.time() - start
cat(sprintf("result: %s\n", result))
cat(sprintf("elapsed: %.6fs\n", elapsed["elapsed"]))
