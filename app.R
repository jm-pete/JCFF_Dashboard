# -------------------------------------------------------------------------------------------------------
#
# Just Care for Families: Data Dashboard
#
# Allow users to view current numbers for:
#  - Recruitment
#  - Enrollment
#  - Retention
#  - Demographics
# 
# Features to build:
# Log in?
# Export IER table for RPPRs?
#
# -------------------------------------------------------------------------------------------------------


library(shiny)
library(bslib)
library(tidyverse)
library(REDCapR)
library(reactable)
library(gt)
library(plotly)

# source("./config/constants.R")
# source("./config/ref_tbls.R")


library(shiny)

# =========================================================
# UI
# =========================================================

ui <- fluidPage(
  
  title = "JCAP Recruitment, Enrollment Report",  # sets the browser tab's title, not shown on the page itself
  
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  
  # ---- Top banner: logo + title, always the first thing on the page ----
  div(class = "top-banner",
      tags$img(src = "Just Care Strapline + Reg Saffron Yellow RGB.png", alt = "Logo"),
      div(class = "banner-text",
          div(class = "banner-title", "Just Care App Project"),
          div(class = "banner-subtitle", "Recruitment | Enrollment | Retention")
      )
  ),
  
  # ---- Nav bar + content ----
  # tabsetPanel(type = "pills") renders both the row of tab buttons and
  # the content panel for whichever tab is active, as one unit. Wrapping
  # it in "content-wrap" is what lets the sticky-footer CSS work: this
  # div is told (in styles.css) to grow and fill any leftover vertical
  # space, which is what pushes the footer down to the bottom edge.
  div(class = "content-wrap",
      tabsetPanel(id = "main_nav", type = "pills",
                  
                  
                  # Home: Current study conditions x county, Screening & Baseline timeline, weekly check-ins
                  tabPanel("Home",
                           div(class = "main-container",
                               h2("Overview"),
                               p("Placeholder content — this tab's body will be filled in later.")
                           )
                  ),
                  
                  tabPanel("Recruitment & Enrollment",
                           div(class = "main-container",
                               h2("Details"),
                               p("Placeholder content — this tab's body will be filled in later.")
                           )
                  ),
                  
                  tabPanel("Retention",
                           div(class = "main-container",
                               h2("About"),
                               p("Placeholder content — this tab's body will be filled in later.")
                           )
                  )
      )
  ),
  
  # ---- Footer: always the last thing on the page; CSS pins it to the
  # bottom of the viewport even when a tab has very little content ----
  div(class = "bottom-banner",
      # tags$img(src = "Just Care Strapline + Reg Saffron Yellow RGB.png", alt = "Logo"),
      "\u00A9 2026 Chestnut Health Systems | Lighthouse Institute"
  )
)



# =========================================================
# Server
# ---------------------------------------------------------
# Empty for now -- this is where reactive logic (code that
# re-runs automatically when an input changes) will go once
# we start wiring up real content.
# =========================================================

server <- function(input, output, session) {
  
}

shinyApp(ui = ui, server = server)




# Define server logic required to draw a histogram
server <- function(input, output) {

  # Study Timeline
  previous_sunday <- Sys.Date() - (wday(Sys.Date())-1)
  study_tl_wk <- seq.Date(study_week1, previous_sunday, by = 7)
  
  this_month <- floor_date(Sys.Date(), unit = "month")
  study_tl_mo <- seq.Date(study_month1, this_month, by = "month")
  
  
  

}

# Run the application 
shinyApp(ui = ui, server = server)
