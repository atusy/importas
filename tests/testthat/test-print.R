test_that("Print exported objects", {
  expect_identical(
    capture.output(print(stats %as% st)),
    capture.output(print(sort(getNamespaceExports("stats"))))
  )
})
