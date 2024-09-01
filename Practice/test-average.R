if(FALSE){
  source("average.R")
  
  test_average <- function(){
    if(average(c(1, 2, 3)) == 2) {
      cat("`average` passed the test :)", "\n")
    }else{
      cat("`average` failed the test :(", "\n")
    }
    if(average(c(-1, -2, -3)) == -2) {
      cat("`average` passed the test :)", "\n")
    }else{
      cat("`average` failed the test :(", "\n")
    }
    if(average(c(-1, 0, 1)) == 0) {
      cat("`average` passed the test :)", "\n")
    }else{
      cat("`average` failed the test :(", "\n")
    }
  }
  
  test_average()
}

source("average.R")

test_that("`average` calculates mean", {
  expect_equal(average(c(1, 2, 3)), 2)
  expect_equal(average(c(-1, -2, -3)), -2)
  expect_equal(average(c(-1, 0, 1)), 0)
  
})
#test driven development and behavior driven
