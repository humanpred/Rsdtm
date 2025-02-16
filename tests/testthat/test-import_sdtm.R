# This is how the example SDTM data were created
# rio::export(x = pharmaversesdtm::dm, file = test_path("example-sdtm/dm.xpt"))
# rio::export(x = pharmaversesdtm::suppdm, file = test_path("example-sdtm/suppdm.xpt"))

test_that("import_sdtm", {
  # Automatically import a directory
  expect_message(
    import_sdtm(path = test_path("example-sdtm")),
    regexp = "Detected domain SUPPDM from data."
  )

  # Import a single file
  expect_message(
    import_sdtm(path = test_path("example-sdtm/dm.xpt")),
    regexp = "Detected domain DM from data."
  )
})
