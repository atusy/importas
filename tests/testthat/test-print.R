test_that("Print exported objects", {
  stats %as% st
  expect_identical(
    capture.output(print(st)),
    capture.output(print(sort(getNamespaceExports("stats"))))
  )
})
