#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinyMobile
#' @import htmltools
#' @noRd
app_ui <- function(request) {

  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    f7Page(
      title = "Resource Rolodex",
      options = list(theme=c("auto"), dark=TRUE, preloader = T,  pullToRefresh=TRUE),
      allowPWA=TRUE,
      f7TabLayout(
        # panels are not mandatory. These are similar to sidebars


        navbar = f7Navbar(
          tags$body(HTML('<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M39QN8M"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>')),

          # tags$body(includeHTML("GA-body.html")),
          title= "Project ACCESS Resource Rolodex"),
        # f7Tabs is a special toolbar with included navigation
        f7Tabs(
          animated = TRUE,
          id = "tab",

# Home Page Tab -----------------------------------------------------------


          f7Tab(
            tabName = "WelcomeTab",
            icon = f7Icon("house_fill"),
            active = TRUE,
            f7Block(
              f7Shadow(
                intensity = 5,
                hover = TRUE,
                f7Card(title="What is Project ACCESS?",
                       uiOutput("welcome"),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE))),
            f7Block(
              f7Shadow(
                intensity = 5,
                hover = TRUE,
                f7Card(title="Project ACCESS Videos",
                       uiOutput("videos"),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE))),

            f7Block(
              f7Shadow(
                intensity = 5,
                hover = TRUE,
                f7Card(title="Adding the app to your device",
                       uiOutput("installapp"),
                       footer=f7Button(inputId ="helppopup", label = "Quick Introduction", color= "darkorchid3", fill=T, shadow=T, rounded = T, size = "small"),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE))),

            f7Align(div(f7Link("Report a bug or issue with the app", href="https://forms.gle/e74AyNsW7jvMqsSt6")), side=c("center"))
          ),


# Resources Tab -----------------------------------------------------------


            f7Tab(
              tabName = "Tab1",
              icon = f7Icon("search"),
              active = F,


              f7Shadow(
                intensity = 5,
                hover = TRUE,
                f7Card(
                  f7Block(
                    f7Align(h2("Search for on- and off-campus resources and services"), side=("center")),
                    strong = T, inset = T, tablet = FALSE))),


              f7Shadow(
                intensity = 5,
                hover = TRUE,
                f7Card(title = "Select a resource category below",
                       f7Block(
                         uiOutput("selector"),
                         # f7SmartSelect("PMHselector", NULL, type = c("popup"), choices=c("Physical Health",
                         #                                                                       "Mental Health (MH)",
                         #                                                                       "MH Resources (Black Communities)",
                         #                                                                       "MH Resources (Hispanic Communities)",
                         #                                                                       "LGBTQ+ Resources",
                         #                                                                       "Sexual Health",
                         #                                                                       "Interpartner Violence",
                         #                                                                       "Sexual Violence Related",
                         #                                                                       "Alcohol and Other Drugs",
                         #                                                                       "Problem Gambling",
                         #                                                                       "Academic Resources",
                         #                                                                       "International Student Resources",
                         #                                                                       "Food, Housing, & Financial",
                         #                                                                       "Legal Resources",
                         #                                                                       "Hotlines"),
                         #                     selected=NULL, class = "select smart"),

                               # conditionalPanel("input.PMHselector != 'Community Specific Resources'
                               #   & input.PMHselector != 'MH Resources (Black Communities)'
                               #   & input.PMHselector != 'MH Resources (Hispanic Communities)'
                               #   & input.PMHselector != 'Academic Resources'
                               #   & input.PMHselector != 'Problem Gambling'
                               #   & input.PMHselector != 'Food, Housing, & Financial'
                               #   & input.PMHselector != 'Hotlines'" ,f7Toggle("OffCampus", "Show Off-Campus Resources", checked=F, color=NULL))
                         ),
                       br(),
                       br()






                )
              ),

# All Acordions ---------------------------------------------------------

          f7Card(
            f7Block(
              uiOutput("selector"),
              uiOutput("offcampus_toggle"),
              strong = T, inset = T, tablet = FALSE)),


          f7Card(
            f7Block(
              uiOutput("accordions"),
              strong = T, inset = T, tablet = FALSE)),






            ),




# Appointments Tab --------------------------------------------------------


          f7Tab(
            tabName = "ApptTab",
            icon = f7Icon("calendar_badge_plus"),
            active = FALSE,

            f7Shadow(
              intensity = 5,
              hover = TRUE,
              f7Card(
                f7Block(
                  f7Align(h2("Project ACCESS offers three types of appointments and a variety of Events!"), side=("center")),
                  strong = T, inset = T, tablet = FALSE))),

            f7Shadow(
              intensity = 5,
              hover = TRUE,
              f7Card(
                title = "Appointments Categories",
                uiOutput("appts"),
                hairlines = F, strong = T, inset =
                  F, tablet = FALSE)),
            f7Shadow(
              intensity = 5,
              hover = TRUE,
              f7Card(title = "Events Schedule",
                     uiOutput("events"),

                     hairlines = F, strong = T, inset =
                       F, tablet = FALSE))
          ),

# Instagram Tab -----------------------------------------------------------


          f7Tab(tabName="Insta",
                active = FALSE,
                icon = f7Icon("logo_instagram"),


                f7Shadow(
                  intensity = 5,
                  hover = TRUE,
                  f7Card(
                    f7Block(
                      f7Align(h2("Stay up to date!"), side=c("center")),
                      strong = T, inset = T, tablet = FALSE))),

                f7Shadow(
                  intensity = 5,
                  hover = TRUE,
                  f7Card(f7Align(h3("Follow us on Instagram!"), side=c("center")),
                         hr(),
                         uiOutput("instalink"),
                         hairlines = F, strong = T, inset =
                           F, tablet = FALSE)
                )
          )


# Survey Incentives Tab ---------------------------------------------------



          # f7Tab(tabName="money",
          #       active = FALSE,
          #       icon = f7Icon("money_dollar_circle"),
          #
          #
          #       f7Shadow(
          #         intensity = 5,
          #         hover = TRUE,
          #         f7Card(
          #           f7Block(
          #             f7Align(h2("3-steps to earn a $30 Amazon Gift Card"), side=c("center")),
          #             strong = T, inset = T, tablet = FALSE))),
          #
          #       f7Shadow(
          #         intensity = 5,
          #         hover = TRUE,
          #         f7Card(f7Align(h3("Step 1"), side=c("left")),
          #                f7Align(h4("Schedule and attend an appointment with a Navigator"), side=c("left")),
          #                f7Align(div(f7Link("Schedule a Navigator Appointment", href="https://ualbanyprojectaccess.shinyapps.io/ACCESSLandingPage")),side=c("left")),
          #                hr(),
          #                f7Align(h3("Step 2"), side=c("left")),
          #                f7Align(h4("Complete the 10-minute survey sent via email before your appointment"), side=c("left")),
          #                hr(),
          #                f7Align(h3("Step 3"), side=c("left")),
          #                f7Align(h4("Complete a 10-minute follow-up survey after the appointment"), side=c("left")),
          #                hr(),
          #                f7Align(h3("Thats all!"), side=c("center")),
          #                f7Align(h5("Your responses on the survey are never connected to your name or identifying information. You'll receive 3 automated reminder emails with the follow-up survey link 25 days after you complete first survey and an appointment with a Project ACCESS Navigator"), side=c("center")),
          #                f7Align(h5("Last semester we gave out over $2,000 in Amazon Gift Cards to UAlbany students!"), side=c("center")),
          #                hairlines = F, strong = T, inset =
          #                  F, tablet = FALSE)
          #       )
          # )


        )
      )
    )




  )


}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @import htmltools
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  # add_resource_path(
  #   "www",
  #   app_sys("app/www")
  # )

  tags$head(
    # includeHTML("google-analytics.html"),
    HTML("<script async src='https://www.googletagmanager.com/gtag/js?id=G-5XH47X1P8M'></script>
            <script>
            window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'G-5XH47X1P8M');
          </script>"),
    HTML('<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({"gtm.start":
        new Date().getTime(),event:"gtm.js"});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!="dataLayer"?"&l="+l:"";j.async=true;j.src=
          "https://www.googletagmanager.com/gtm.js?id="+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,"script","dataLayer","GTM-M39QN8M");</script>'),

    HTML('<link rel="stylesheet" type="text/css" href="https://ewokozwok.github.io/myexternalresources/shinyMobile2.0.1.min.css">'),

    # Fix Install button to Upper right of screen
    tags$style("
    .custom-toast {
    position: fixed !important;
    top: 20px !important;
    right: 20px !important;
    z-index: 9999 !important;
    width: auto !important; /* Ensure it doesn't span unnecessarily */
    height: auto !important; /* Keep it concise */
    box-shadow: none; /* Optional: Remove toast shadow */
    background: transparent !important; /* Optional: Remove toast background */
    }

    .custom-toast .toast-button {
        background-color: green; /* Retain the button color */
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
    }
    "),
    # includeCSS("www/framework7.bundle.min.css")
    # bundle_resources(
    #   path = app_sys('app/www'),
    #   app_title = 'Rolodex'
    #   )

    # favicon(),

    # bundle_resources(
    #   path = app_sys("app/www"),
    #   app_title = "SkinnyRolodex"
    # )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
