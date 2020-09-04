test_that("Define aliases at once", {
  expect_null(importas(gr = graphics, st = stats))
  expect_identical(gr$plot, graphics::plot)
  expect_identical(st$median, stats::median)
})

test_that("Arguments must be named", {
  expect_error(importas(foo))
})
