test_that("Abbreviation works", {
  graphics %as% gr
  expect_identical(gr$plot, graphics::plot)
})