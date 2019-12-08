test_that("Define aliases at once", {
  importas(gr = graphics, st = stats)
  expect_identical(gr, getNamespace("graphics"))
  expect_identical(gr$plot, graphics::plot)
  expect_identical(st, getNamespace("stats"))
  expect_identical(st$median, stats::median)
})
