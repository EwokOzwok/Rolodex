#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinyMobile
#' @importFrom stats na.omit
#' @import magrittr
#' @noRd
app_server <- function(input, output, session) {
  resources = data
  items <- reactiveVal(NULL)


  # shinyOptions(cache = cachem::cache_mem(max_size = 500e6))
  # Welcome Page ------------------------------------------------------------
  observeEvent(input$helppopup, {
    f7Popup(id="NewUserintro1", title= f7Align(h3("Quick Introduction"), side=c("center")), swipeToClose = T, closeButton = T,
            f7Block(
              f7Shadow(
                intensity = 30,
                hover = F,
                f7Card(f7BlockHeader(text="Navigating ACCESS"),
                       f7Align(h4("Use the buttons at the bottom of the screen to navigate to the different tabs"), side=c("center")),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE))),
            f7Block(
              f7Shadow(
                intensity = 30,
                hover = F,
                f7Card(f7BlockHeader(text="What do the buttons do?"),
                       h5(f7Icon("search"),"- Search for resources"),
                       h5(f7Icon("calendar_badge_plus"), "- Project ACCESS appointments"),
                       h5(f7Icon("logo_instagram"), "- Follow us on Instagram"),
                       # h5(f7Icon("money_dollar_circle"), "- Earn a $30 Amazon Gift Card"),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE)),
                       br(),
                       br(),
                       br(),
                       br(),
                       br(),
                       br(),
                       f7BlockFooter(f7Align(h4("Swipe up to close this popup"), side=c("center"))))
    )
  })
  observe({
    f7Popup(id="NewUserintro", title= f7Align(h3("Quick Introduction"), side=c("center")), swipeToClose = T, closeButton = T,
            f7Block(
              f7Shadow(
                intensity = 30,
                hover = F,
                f7Card(f7BlockHeader(text="Navigating ACCESS"),
                       f7Align(h4("Use the buttons at the bottom of the screen to navigate to the different tabs"), side=c("center")),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE))),
            f7Block(
              f7Shadow(
                intensity = 30,
                hover = F,
                f7Card(f7BlockHeader(text="What do the buttons do?"),
                       h5(f7Icon("search"),"- Search for resources"),
                       h5(f7Icon("calendar_badge_plus"), "- Project ACCESS appointments"),
                       h5(f7Icon("logo_instagram"), "- Follow us on Instagram"),
                       # run_h5(f7Icon("money_dollar_circle"), "- Earn a $30 Amazon Gift Card"),
                       hairlines = F, strong = T, inset =
                         F, tablet = FALSE)),
                       br(),
                       br(),
                       br(),
                       br(),
                       br(),
                       br(),
                       f7BlockFooter(f7Align(h4("Swipe up to close this popup"), side=c("center"))))
    )
  })


# NEW WELCOME & VIDEO BLOCK
  output$welcome <- renderUI({
    tagList(
      f7Accordion(id=NULL, multiCollapse = F,
                  f7AccordionItem(title = "About Us", open=F,
                                  f7Block(h3("Project ACCESS is an innovative translational research initiative at UAlbany funded by a grant from the federal government and our mission is to help you find and decide on what kind of resources and services might help you."),
                                          hr(),
                                          h4("We offer appointments with peer-navigators to explore free on- and off-campus resources,
                                            education events that help you thrive as a student and in life, and connections to confidential and anonymous on-campus STI testing provided by our community partners"),
                                          HTML('<center><iframe width="auto" height="auto" src="https://www.youtube.com/embed/mbkk2nPw8gY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>'),
                                          f7Align(div(f7Link(h3("Learn more about Project ACCESS"), href="https://www.albany.edu/education/research/behavioral-health-promotion#tab-project-access")),side=c("center")),
                                          f7Align(h6("DEVELOPED IN PART UNDER GRANT NUMBER 1H79SP082142-01 FROM THE SUBSTANCE ABUSE AND MENTAL HEALTH SERVICES ADMINISTRATION (SAMHSA) U.S. DEPARTMENT OF HEALTH AND HUMAN SERVICES (HHS)."), side=c("center")),
                                          # hr()
                                  )
                  ),


                  f7AccordionItem(title = "Project Leaders", open=F,
                                  f7Block(f7Align(h2("M. Dolores Cimini, PhD"), side=c("center")),
                                          HTML('<center><img src="https://www.albany.edu/sites/default/files/styles/person_page_thumbnail/public/2022-04/EDU_CiminiMDolores_2021.JPG?h=fdd95cf8&itok=bGHgRgGr" width=60%></center>'),
                                          h5("Dr. M. Dolores Cimini is a New York State licensed psychologist and Director of the Center for Behavioral Health Promotion and Applied Research and Senior Research Scientist in the Department of Educational and Counseling Psychology. She is the former Director of the nationally recognized Middle Earth Peer Assistance Program.
                                Dr. Cimini has led comprehensive efforts in research-to-practice translation at the University at Albany since 1990 with over $10 million in support from the National Institute on Alcohol Abuse and Alcoholism (NIAAA), National Institute on Drug Abuse (NIDA), Substance Abuse and Mental Health Services Administration (SAMHSA), U.S. Department of Education, U.S. Department of Justice’s Office on Violence Against Women, and New York State Office of Addiction Services and Supports."),
                                          hr(),
                                          f7Align(h2("Jessica L. Martin, PhD"), side=c("center")),
                                          HTML('<center><img src="https://www.albany.edu/sites/default/files/styles/person_page_thumbnail/public/2022-10/Martin.jpg?h=8c719d1f&itok=DZ_UoVte" width=60%></center>'),
                                          h5("Jessica L. Martin is a licensed psychologist, a Research Fellow for the School of Education at the University at Albany, SUNY, and a Senior Research Associate for the Research Foundation for SUNY. She was a tenured faculty member in Counseling Psychology at the University at Albany for 11 years before transitioning to research roles and clinical work in private practice.

Dr. Martin’s research expertise is in substance use and other health-risk behaviors among young adults and college students. Specifically, she investigates individual, psychosocial, cultural, and contextual risk and protective factors for substance use and co-occurring disorders and health-risk behaviors (e.g., disordered eating, risky sexual behavior) and health disparities as they relate to substance use."),
                                          hr(),

                                          f7Align(h2("Laura L. Longo, PhD"), side=c("center")),
                                          HTML('<center><img src="https://www.albany.edu/sites/default/files/styles/person_page_thumbnail/public/2023-02/Laura%20Longo.png?h=c4434bf3&itok=ookWO5g4" width=60%></center>'),
                                          h5("Laura M. Longo is a licensed psychologist, and a Senior Research Specialist for the Research Foundation for SUNY. Outside of the Center for Behavioral Health Promotion and Applied Research, Dr. Longo works in a private practice providing psychotherapy and evaluation services. Dr. Longo’s expertise is in the development, implementation, and evaluation of health communication campaigns, and prevention and early intervention services that address substance misuse and suicide prevention. Dr. Longo is passionate about understanding individual, sociocultural, and systemic factors that impact substance use, other areas of mental health, and recovery. Dr. Longo is a recovery ally and an avid social justice advocate."),
                                          # hr()
                                  )
                  ),


                  f7AccordionItem(title = "Join Project ACCESS", open=F,
                                  f7Block(br(),
                                          f7Align(h2("We're looking for student all stars with lived experience to join our Peer Advisory Board!"), side=c("left")),
                                          hr(),
                                          f7Align(h4(strong("What is the Peer Advisory Board?")), side=c("center")),
                                          f7Align(h5("The Peer Advisory Board is a group of undergraduate UAlbany students who attend meetings with members of the Project ACCESS team."), side=c("center")),
                                          f7Align(h4(strong("When are the meetings?")), side=c("center")),
                                          f7Align(h5("There are two meetings a month, and meetings last about one hour."), side=c("center")),
                                          f7Align(h4(strong("What are the meetings like?")), side=c("center")),
                                          f7Align(h5("In these meetings, we ask for your feedback about our work (e.g., merchandise design, tabling events, workshops, etc.) and offer opportunities to participate in our work."), side=c("center")),
                                          hr(),
                                          f7Align(h5("Being involved in the Peer Advisory Board is a great item to include on your resume and is a rewarding way to get involved on campus!"), side=c("center")),
                                          hr(),
                                          f7Align(div(f7Link("Join Now!", href="https://forms.gle/dMeVgC7zLxvEpXRk9")), side=c("center"))
                                  )
                  ),

                  f7AccordionItem(title = "C.A.R.E.S Training", open=F,
                                  f7Block(br(),
                                          f7Align(h3(strong("Community Awareness in Resource Engagement and Suicide Prevention (C.A.R.E.S.) Training")), side=c("center")),
                                          hr(),
                                          f7Align(h4("As a member of the campus community, you play a key role in responding to mental health concerns and risk for suicide among our students. We appreciate you taking the time to complete this training program that will provide you with valuable information to assist you in responding to students in distress. What follows are 5 Modules that take less than 1 hour to complete."), side=c("center")),
                                          br(),
                                          hr(),
                                          f7Align(h3("Start the training now!"), side=c("center")),
                                          f7Align(div(f7Link("Community Awareness in Resource Engagement and Suicide Prevention (C.A.R.E.S.) Training", href="https://albany.az1.qualtrics.com/jfe/form/SV_4IxSrFhgxJnz2Dk")), side=c("center")),
                                          # hr()
                                  )
                  ),


                  # f7AccordionItem(title = "New Training", open=F,
                  #                 f7Block(br(),
                  #                         f7Align(h3(strong("New Training Name")), side=c("center")),
                  #                         hr(),
                  #                         f7Align(h4("New Training Description"), side=c("center")),
                  #                         br(),
                  #                         hr(),
                  #                         f7Align(h3("Start the training now!"), side=c("center")),
                  #                         f7Align(div(f7Link("New Training Name", href="https://LinkToNewTraining.com")), side=c("center")),
                  #                         hr()
                  #                 )
                  # ),

      )
    )
  })

  output$videos <- renderUI({
    tagList(
      f7Accordion(id=NULL, multiCollapse = F,
                  f7AccordionItem(title = "HIV/STI Info", open=F,
                                  f7Block(br(),
                                          f7Align(h3("Check out the video below for up-to-date information about HIV and other STIs common on college campuses"), side=c("center")),
                                          hr(),
                                          br(),
                                          HTML('<center><iframe width="auto" height="auto" src="https://www.youtube.com/embed/PyGk5kYbU-E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>'),
                                          br(),
                                          # hr()
                                  )
                  ),


                  f7AccordionItem(title = "Fentanyl and Xylazine Info", open=F,
                                  f7Block(br(),
                                          f7Align(h3("Check out the video below for up-to-date information about Fentanyl and Xylazine"), side=c("center")),
                                          hr(),
                                          br(),
                                          HTML('<center><iframe width="auto" height="auto" src="https://www.youtube.com/embed/4skME5hVoig?si=zmn2UMQVUwkxX28v" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>'),
                                          br(),
                                          # hr()
                                  )
                  ),

                  f7AccordionItem(title = "Mental Health 101 (Grad Students)", open=F,
                                  f7Block(br(),
                                          f7Align(h3("Check out our new Mental Health 101 Workshop, specifically for graduate students."), side=c("center")),
                                          hr(),
                                          br(),
                                          HTML('<center><iframe width="auto" height="auto" src="https://www.youtube.com/embed/iUj-M1mcNUM?si=ULOZZiBMhiX-1xCS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>'),
                                          br(),
                                          # hr()
                                  )
                  ),
      )
    )
  })


# OLD WELCOME
#   output$welcome <- renderUI({
#     tagList(
#       f7Accordion(id=NULL, multiCollapse = F,
#                   f7AccordionItem(title = "About Us", open=F,
#                                   f7Block(h3("Project ACCESS is an innovative translational research initiative at UAlbany funded by a grant from the federal government and our mission is to help you find and decide on what kind of resources and services might help you."),
#                                           hr(),
#                                           h4("We offer appointments with peer-navigators to explore free on- and off-campus resources,
#                                             education events that help you thrive as a student and in life, and connections to confidential and anonymous on-campus STI testing provided by our community partners"),
#                                           HTML('<center><iframe width="auto" height="auto" src="https://www.youtube.com/embed/mbkk2nPw8gY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>'),
#                                           f7Align(div(f7Link(h3("Learn more about Project ACCESS"), href="https://www.albany.edu/education/research/behavioral-health-promotion#tab-project-access")),side=c("center")),
#                                           f7Align(h6("DEVELOPED IN PART UNDER GRANT NUMBER 1H79SP082142-01 FROM THE SUBSTANCE ABUSE AND MENTAL HEALTH SERVICES ADMINISTRATION (SAMHSA) U.S. DEPARTMENT OF HEALTH AND HUMAN SERVICES (HHS)."), side=c("center")),
#                                           hr()
#                                   )
#                   ),
#
#                   f7AccordionItem(title = "HIV/STI Info", open=F,
#                                   f7Block(br(),
#                                           f7Align(h3("Check out the video below for up-to-date information about HIV and other STIs common on college campuses"), side=c("center")),
#                                           hr(),
#                                           br(),
#                                           HTML('<center><iframe width="auto" height="auto" src="https://www.youtube.com/embed/PyGk5kYbU-E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>'),
#                                           br(),
#                                           hr()
#                                   )
#                   ),
#
#
#                   f7AccordionItem(title = "Project Leaders", open=F,
#                                   f7Block(f7Align(h2("M. Dolores Cimini, PhD"), side=c("center")),
#                                   HTML('<center><img src="https://www.albany.edu/sites/default/files/styles/person_page_thumbnail/public/2022-04/EDU_CiminiMDolores_2021.JPG?h=fdd95cf8&itok=bGHgRgGr" width=60%></center>'),
#                                   h5("Dr. M. Dolores Cimini is a New York State licensed psychologist and Director of the Center for Behavioral Health Promotion and Applied Research and Senior Research Scientist in the Department of Educational and Counseling Psychology. She is the former Director of the nationally recognized Middle Earth Peer Assistance Program.
#                                 Dr. Cimini has led comprehensive efforts in research-to-practice translation at the University at Albany since 1990 with over $10 million in support from the National Institute on Alcohol Abuse and Alcoholism (NIAAA), National Institute on Drug Abuse (NIDA), Substance Abuse and Mental Health Services Administration (SAMHSA), U.S. Department of Education, U.S. Department of Justice’s Office on Violence Against Women, and New York State Office of Addiction Services and Supports."),
#                                   hr(),
#                                   f7Align(h2("Jessica L. Martin, PhD"), side=c("center")),
#                                   HTML('<center><img src="https://www.albany.edu/sites/default/files/styles/person_page_thumbnail/public/2022-10/Martin.jpg?h=8c719d1f&itok=DZ_UoVte" width=60%></center>'),
#                                   h5("Jessica L. Martin is a licensed psychologist, a Research Fellow for the School of Education at the University at Albany, SUNY, and a Senior Research Associate for the Research Foundation for SUNY. She was a tenured faculty member in Counseling Psychology at the University at Albany for 11 years before transitioning to research roles and clinical work in private practice.
#
# Dr. Martin’s research expertise is in substance use and other health-risk behaviors among young adults and college students. Specifically, she investigates individual, psychosocial, cultural, and contextual risk and protective factors for substance use and co-occurring disorders and health-risk behaviors (e.g., disordered eating, risky sexual behavior) and health disparities as they relate to substance use."),
#                                   hr(),
#
#                                   f7Align(h2("Laura L. Longo, PhD"), side=c("center")),
#                                   HTML('<center><img src="https://www.albany.edu/sites/default/files/styles/person_page_thumbnail/public/2023-02/Laura%20Longo.png?h=c4434bf3&itok=ookWO5g4" width=60%></center>'),
#                                   h5("Laura M. Longo is a licensed psychologist, and a Senior Research Specialist for the Research Foundation for SUNY. Outside of the Center for Behavioral Health Promotion and Applied Research, Dr. Longo works in a private practice providing psychotherapy and evaluation services. Dr. Longo’s expertise is in the development, implementation, and evaluation of health communication campaigns, and prevention and early intervention services that address substance misuse and suicide prevention. Dr. Longo is passionate about understanding individual, sociocultural, and systemic factors that impact substance use, other areas of mental health, and recovery. Dr. Longo is a recovery ally and an avid social justice advocate."),
#                                   hr()
#                                   )
#                   ),
#
#
#                   f7AccordionItem(title = "Join Project ACCESS", open=F,
#                                   f7Block(br(),
#                                           f7Align(h2("We're looking for student all stars with lived experience to join our Peer Advisory Board!"), side=c("left")),
#                                           hr(),
#                                           f7Align(h4(strong("What is the Peer Advisory Board?")), side=c("center")),
#                                           f7Align(h5("The Peer Advisory Board is a group of undergraduate UAlbany students who attend meetings with members of the Project ACCESS team."), side=c("center")),
#                                           f7Align(h4(strong("When are the meetings?")), side=c("center")),
#                                           f7Align(h5("There are two meetings a month, and meetings last about one hour."), side=c("center")),
#                                           f7Align(h4(strong("What are the meetings like?")), side=c("center")),
#                                           f7Align(h5("In these meetings, we ask for your feedback about our work (e.g., merchandise design, tabling events, workshops, etc.) and offer opportunities to participate in our work."), side=c("center")),
#                                           hr(),
#                                           f7Align(h5("Being involved in the Peer Advisory Board is a great item to include on your resume and is a rewarding way to get involved on campus!"), side=c("center")),
#                                           hr(),
#                                           f7Align(div(f7Link("Join Now!", href="https://forms.gle/dMeVgC7zLxvEpXRk9")), side=c("center"))
#                                   )
#                   ),
#
#
#                   f7AccordionItem(title = "Save A Life Training", open=F,
#                                   f7Block(br(),
#                                           f7Align(h3(strong("Suicide Prevention - Save a Life Training")), side=c("center")),
#                                           hr(),
#                                           f7Align(h4("This module addresses myths related to suicide, barriers to well-being, and factors that increase a person’s risk for suicide. Participants who complete this training will be able to identify warning signs, relevant resources, and steps they can take to support a person they are concerned about."), side=c("center")),
#                                           br(),
#                                           hr(),
#                                           f7Align(h3("Start the training now!"), side=c("center")),
#                                           f7Align(div(f7Link("Suicide Prevention - Save A Life Training", href="https://albany.az1.qualtrics.com/jfe/form/SV_9ZwaUUgd9OobdSC")), side=c("center")),
#                                           hr()
#                                   )
#                   )
#
#       )
#     )
#   })



  # Install App Instructions Card -------------------------------------------
  output$installapp <- renderUI({
    tagList(
    f7Accordion(id=NULL,
                f7AccordionItem(title = "iPhone", open=F, multiCollapse=F,
                                f7Block(br(),
                                        h4("Step 1: Open the website in Safari"),
                                        h4("Step 2: Tap the share button", f7Icon("square_arrow_up"), "at the bottom of the screen"),
                                        h4("Step 3: Scroll down and click 'Add to Home Screen'"),
                                        h4("Step 4: Find the ACCESS app on your homescreen and open up the app"),
                                        f7Align(div(f7Link("Instructions with screenshots", href="https://www.cdc.gov/niosh/mining/content/hearingloss/installPWA.html")),side=c("center")))),


                f7AccordionItem(title = "Android", open=F, multiCollapse=F,
                                f7Block(br(),
                                        h4("Step 1: Open the website in Chrome"),
                                        h4("Step 2: Tap the menu in the upper right corner of the screen"),
                                        h4("Step 3: Scroll down and click 'Add to Home Screen', change the name to 'ACCESS'"),
                                        h4("Step 4: Find the ACCESS app on your homescreen and open up the app"),
                                        f7Align(div(f7Link("Instructions with screenshots", href="https://www.cdc.gov/niosh/mining/content/hearingloss/installPWA.html")),side=c("center"))

                                        )))

)
})


  # Navigator & STI Appointment Page ----------------------------------------------
  observeEvent(input$tab,{
    if(input$tab=="ApptTab"){
    output$appts<- renderUI({
      tagList(
        f7Accordion(id=NULL,
                    f7AccordionItem(title = "Navigator Appointments", open=F,
                                    f7Block(hr(),
                                            f7Align(h3("What can you expect in a Navigator Appointment?"), side=c("center")),
                                            hr(),
                                            f7Align(h5("A non-judgmental environment"), side=c("center")),
                                            f7Align(h5("To learn more about heatlh and wellbeing"), side=c("center")),
                                            f7Align(h5("To connect to on- and off-campus resources"), side=c("center")),
                                            f7Align(h5("To explore options and overcome barriers"), side=c("center")),
                                            f7Align(div(f7Link("Schedule a Navigator Appointment", href="https://qrco.de/NavAppts")),side=c("center")),
                                            br(),
                                            hr()

                                    )
                    ),


                    f7AccordionItem(title = "HIV/STI Testing Appointments", open=F,
                                    f7Block(hr(),
                                            f7Align(h3("How to Schedule"), side=c("center")),
                                            hr(),
                                            f7Align(h5("Click the link below"), side=c("center")),
                                            f7Align(h5("Pick an available date and time"), side=c("center")),
                                            f7Align(h5("Use a FAKE name, but a REAL Phone Number"), side=c("center")),
                                            f7Align(h5("Receive a video with the discrete Campus Center location via text 24 hours & 1 hour before your appointment"), side=c("center")),
                                            f7Align(div(f7Link("Schedule a Testing Appointment", href="https://calendly.com/ualbanyprojectaccess/testing")), side=c("center")),
                                            f7Align(h5("Appointments are free, confidential, and totally anonymous"), side=c("center")),
                                            hr()
                                    )
                    ),

                    f7AccordionItem(title = "PrEP Intake Appointments", open=F,
                                    f7Block(hr(),
                                            f7Align(h3("What is PrEP?"), side=c("center")),
                                            hr(),
                                            h5("Pre-exposure Prophylaxis (PrEP) is medicine people at risk for HIV take to prevent getting HIV from sex or injection drug use. PrEP can stop HIV from taking hold and spreading throughout your body. Currently, there are two FDA-approved daily oral medications for PrEP. A long-acting injectable form of PrEP has also been approved by the FDA."),
                                            f7Align(div(f7Link("Learn More about PrEP", href="https://www.hiv.gov/hiv-basics/hiv-prevention/using-hiv-medication-to-reduce-risk/pre-exposure-prophylaxis/")), side=c("center")),
                                            br(),
                                            hr(),
                                            f7Align(h3("How to Schedule a PrEP Intake Appointment on-campus with an Albany Medical Center Health Provider"), side=c("center")),
                                            hr(),
                                            f7Align(h5("Click the link below"), side=c("center")),
                                            f7Align(h5("Pick an available date and time"), side=c("center")),
                                            f7Align(h5("Use a FAKE name, but a REAL Phone Number"), side=c("center")),
                                            f7Align(h5("Receive a video with the discrete Campus Center location via text 24 hours & 1 hour before your appointment"), side=c("center")),
                                            f7Align(div(f7Link("Schedule a PrEP Intake Appointment", href="https://calendly.com/ualbanyprojectaccess/prep")), side=c("center")),
                                            f7Align(h5("PrEP Intakes are free, confidential, and totally anonymous"), side=c("center")),
                                            hr()
                                    )
                    )




          )
      )
    })
    output$events<- renderUI({
      tagList(
        f7Accordion(id=NULL,
                    f7AccordionItem(title = "Events on EngageUAlbany", open=F,
                                    f7Block(hr(),
                                            f7Align(div(f7Link("Click to View and Register for Upcoming Events", href="https://albany.galaxydigital.com/agency/detail/?agency_id=152179")),side=c("center")),
                                            hr()

                                    ))))

    })
}

  })



  # Instagram Link ----------------------------------------------------------
  observeEvent(input$tab,{
    if(input$tab=="Insta"){
    output$instalink<-renderUI({
      tagList(
        h3("What we post:"),
        h4("Updated information about Project ACCESS events"),
        h4("Tips on how to enhance your health and wellbeing"),
        h4("Important resources on- and off-campus"),
        h4("Alerts from the DEA and other agencies about dangerous and potentially deadly substances being sold in the Albany area"),
        f7Align(div(f7Link("Follow us on Instagram", href="https://www.instagram.com/ualbanyprojectaccess")),side=c("center"))
      )

    })
    }
  })























## 93% reduction in lines of codes by modularizing accordion displays
## Originally, 11,360 lines of code. Reduced to 832.

# Observe PMH selector ----------------------------------------------------

  output$selector <- renderUI({
    tagList(
      f7SmartSelect(
        inputId = "category",
        label = NULL,
        choices = sort(unique(data$Type)),  # This keeps Type alphabetical
        selected = NULL,
        type = "popup"
      )
    )
  })

  # 1. React to category
  observeEvent(input$category, {
    req(input$category)
    df <- subset(data, Type == input$category)

    # Sort so that Location == "On" comes first, then alphabetically by Name
    df <- df[order(df$Location != "On", df$Name), ]

    if (nrow(df) > 0 && length(unique(df$Location)) > 1) {
      output$offcampus_toggle <- renderUI({
        f7Toggle("offcampus", "Show Off-Campus Resources", checked = T)
      })
    } else {
      output$offcampus_toggle <- renderUI({})
    }
    items(df)  # set items to the base subset
  })

  # 2. React to offcampus toggle
  observeEvent(input$offcampus, {
    req(input$category)   # make sure category is chosen
    df <- subset(data, Type == input$category)  # Note: using 'data' instead of 'resources'

    if (!is.null(input$offcampus) && input$offcampus == FALSE) {
      df <- df[df$Location == "On", ]
    }

    # Sort so that Location == "On" comes first, then alphabetically by Name
    df <- df[order(df$Location != "On", df$Name), ]

    items(df)  # update items based on toggle
  })

  output$accordions <- renderUI({
    req(input$category)
    items_df <- items()
    if (nrow(items_df) == 0) return(NULL)

    f7Accordion(
      id = paste0("acc_", gsub("\\s", "_", input$category)),
      multiCollapse = TRUE,
      lapply(seq_len(nrow(items_df)), function(i) {
        f7AccordionItem(
          title = items_df[i, "Name"],
          f7Block(
            tagList(
              # Address - only show if not NA
              if ("Address" %in% names(items_df) && !is.na(items_df[i, "Address"])) items_df[i, "Address"],

              # Phone - only show if not NA
              if ("Phone" %in% names(items_df) && !is.na(items_df[i, "Phone"])) br(),
              if ("Phone" %in% names(items_df) && !is.na(items_df[i, "Phone"])) f7Link(href = paste0("tel:", items_df[i, "Phone"]), label = "Call Now"),

              # Hours - only show if not NA
              if ("Hours" %in% names(items_df) && !is.na(items_df[i, "Hours"])) br(),
              if ("Hours" %in% names(items_df) && !is.na(items_df[i, "Hours"])) items_df[i, "Hours"],

              # Website - only show if not NA
              if ("Website" %in% names(items_df) && !is.na(items_df[i, "Website"])) br(),
              if ("Website" %in% names(items_df) && !is.na(items_df[i, "Website"])) f7Link(href = items_df[i, "Website"], label = items_df[i, "Website"]),

              # Info - only show if not NA
              if ("Info" %in% names(items_df) && !is.na(items_df[i, "Info"])) br(),
              if ("Info" %in% names(items_df) && !is.na(items_df[i, "Info"])) br(),
              if ("Info" %in% names(items_df) && !is.na(items_df[i, "Info"])) items_df[i, "Info"]
            )
          )
        )
      })
    )
  })
#
#   output$selector <- renderUI({
#     tagList(
#       f7SmartSelect(
#         inputId = "category",
#         label = NULL,
#         choices = sort(unique(data$Type)),
#         selected = NULL,
#         type = "popup"
#       )
#     )
#   })
#
#   # 1. React to category
#   observeEvent(input$category, {
#     req(input$category)
#
#     df <- subset(data, Type == input$category)
#
#     if (nrow(df) > 0 && length(unique(df$Location)) > 1) {
#       output$offcampus_toggle <- renderUI({
#         f7Toggle("offcampus", "Show Off-Campus Resources", checked = T)
#       })
#     } else {
#       output$offcampus_toggle <- renderUI({})
#     }
#
#     items(df)  # set items to the base subset
#   })
#
#   # 2. React to offcampus toggle
#   observeEvent(input$offcampus, {
#     req(input$category)   # make sure category is chosen
#
#     df <- subset(resources, Type == input$category)
#
#     if (!is.null(input$offcampus) && input$offcampus == FALSE) {
#       df <- df[df$Location == "On", ]
#     }
#
#     items(df)  # update items based on toggle
#   })
#
#
#
#   output$accordions <- renderUI({
#     req(input$category)
#
#
#     items_df <- items()
#     if (nrow(items_df) == 0) return(NULL)
#
#     f7Accordion(
#       id = paste0("acc_", gsub("\\s", "_", input$category)),
#       multiCollapse = TRUE,
#       lapply(seq_len(nrow(items_df)), function(i) {
#         f7AccordionItem(
#           title = items_df[i, "Name"],
#           f7Block(
#             tagList(
#               if ("Address" %in% names(items_df)) items_df[i, "Address"],
#               if ("Phone" %in% names(items_df)) br(),
#               if ("Phone" %in% names(items_df)) f7Link(href = paste0(items_df[i, "Phone"]), label = "Call Now"),
#               if ("Hours" %in% names(items_df)) br(),
#               if ("Hours" %in% names(items_df)) items_df[i, "Hours"],
#               if ("Website" %in% names(items_df)) br(),
#               if ("Website" %in% names(items_df)) f7Link(href = items_df[i, "Website"], label = items_df[i, "Website"]),
#               br(), br(),
#               if ("Info" %in% names(items_df)) items_df[i, "Info"]
#             )
#           )
#         )
#       })
#     )
#   })


}





