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

test_that("import_sdtm expected errors", {
  expect_error(
    import_sdtm(path = "foo"),
    regexp = 'The following were not found as directories or files: "foo"'
  )
  expect_error(
    suppressMessages(import_sdtm(path = test_path("example-sdtm/suppdm.xpt"), auto_supp = TRUE)),
    regexp = "Domain DM was not found when trying to auto-combine --SUPP data with SUPPDM"
  )
})

test_that("import_sdtm auto_supp automatically merges --SUPP domains", {
  expect_message(
    ld_sdtm <- import_sdtm(path = test_path("example-sdtm")),
    regexp = "Detected domain SUPPDM from data."
  )
  expect_named(ld_sdtm, c("DM", "SUPPDM"))

  expect_message(
    ld_sdtm <- import_sdtm(path = test_path("example-sdtm"), auto_supp = TRUE),
    regexp = "Detected domain SUPPDM from data."
  )
  expect_named(ld_sdtm, "DM")
})

