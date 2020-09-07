test_that("Abbreviation works", {
  expect_null(graphics %as% gr)
  expect_identical(gr$plot, graphics::plot)
  if ("MASS" %in% rownames(installed.packages())) {
    expect_false("package:MASS" %in% search())
    expect_null(MASS %as% mass)
    expect_identical(mass$area, MASS::area)
  }
})
