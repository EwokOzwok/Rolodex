#' info UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList

mod_info_ui <- function(id){
  ns1 <- NS(id)
  tagList(
    tagList(
      textOutput(ns1("info2")),
      uiOutput(ns1("info3")),
      uiOutput(ns1("info4")),
      textOutput(ns1("info5")),
      textOutput(ns1("info9")),

    )
  )
}

#' info Server Functions
#'
#' @noRd
mod_info_server <- function(id, selector, data, rownametitle, phone, website){
  moduleServer( id, function(input, output, session){
    ns1 <- session$ns


    output$info2<- renderText({





      text<-c(data[data==rownametitle,2])
      text<-na.omit(text)
      text



    })

    if(phone==F){
      output$info3<- renderUI({})
    } else {
      output$info3<- renderUI({




        text<-c(data[data==rownametitle,3])
        text<-na.omit(text)
        f7Link("Call now", href=text)



      })
    }
    if(website==F){
      output$info4<- renderUI({})
    } else {

      output$info4<- renderUI({



        text<-c(data[data==rownametitle,4])
        text<-na.omit(text)
        f7Link(text, href=text)



      })
    }

    output$info5<- renderText({



      text<-c(data[data==rownametitle,5])
      text<-na.omit(text)
      text



    })

    output$info9<- renderText({


      text<-c(data[data==rownametitle,9])
      text<-na.omit(text)
      text



    })
  })
}
# mod_info_server <- function(id, selector, data, rownametitle, phone, website){
#   moduleServer( id, function(input, output, session){
#     ns1 <- session$ns
#
#
#     output$info2<- renderText({
#
#
#
#
#
#       text<-c(data[data==rownametitle,2])
#       text<-na.omit(text)
#       text
#
#
#
#     })
#
#     if(phone==F){
#       output$info3<- renderUI({})
#     } else {
#       output$info3<- renderUI({
#
#
#
#
#         text<-c(data[data==rownametitle,3])
#         text<-na.omit(text)
#         f7Link("Call now", href=text)
#
#
#
#       })
#     }
#     if(website==F){
#       output$info4<- renderUI({})
#     } else {
#
#       output$info4<- renderUI({
#
#
#
#         text<-c(data[data==rownametitle,4])
#         text<-na.omit(text)
#         f7Link(text, href=text)
#
#
#
#       })
#     }
#
#     output$info5<- renderText({
#
#
#
#       text<-c(data[data==rownametitle,5])
#       text<-na.omit(text)
#       text
#
#
#
#     })
#
#     output$info9<- renderText({
#
#
#       text<-c(data[data==rownametitle,9])
#       text<-na.omit(text)
#       text
#
#
#
#     })
#   })
# }

## To be copied in the UI
# mod_info_ui("info_1")

## To be copied in the server
# mod_info_server("info_1")
