test_that("Abbreviation works", {
  expect_null(graphics %as% gr)
  expect_identical(gr$plot, graphics::plot)
})
