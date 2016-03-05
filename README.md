Small test project for testing how to use [`packrat`](https://rstudio.github.io/packrat/)

1. Clone this repo
1. Set working directory to this project

  ```r
  setwd('./rr-test')
  ```
1. Turn on packrat mode and restore

  ```r
  source("packrat/init.R")
  ```
  This will install packrat (if you don't already have it) and this project's dependencies into the `./packrat/` directory.

1. If you have all dependencies and packrat is working,

  ```r
  knitr::spin('./test-spin.R')
  ```
  should be able to run all code blocks and output them into `./test-spin.md` and `./test-spin.html`.

1. Remember to turn packrat off when switching between projects

  ```r
  packrat::off()
  ```
