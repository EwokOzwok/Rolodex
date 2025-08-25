# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

pkgload::load_all(export_all = F,helpers = F,attach_testthat = FALSE)
options("golem.app.prod" = TRUE)
Rolodex::run_app() # add parameters here (if any)

# install.packages(shinyMobile, url="https://cran.r-project.org/src/contrib/Archive/shinyMobile/shinyMobile_1.0.1.tar.gz")

