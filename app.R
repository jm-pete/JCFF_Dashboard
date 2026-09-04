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

ui <- navbarPage(
  
  # navbarPage()'s `title` argument is normally just plain text for the
  # nav bar's brand slot -- but it also accepts a tag object, which is
  # what lets us put the logo + title there instead, so they render
  # inline in the same bar as the tabs rather than above them.
  title = tags$div(class = "brand-block",
                   tags$img(src = "Just Care Strapline Full RGB + Reg.png", alt = "Logo"),
                   tags$div(class = "banner-text",
                            tags$div(class = "banner-title", tags$b("JCAP"))
                   )
  ),
  
  # windowTitle sets the browser tab's title -- title= above no longer can,
  # since it's now a tag object rather than plain text.
  windowTitle = "JCAP Recruitment, Enrollment Report",
  
  id = "main_nav",
  collapsible = TRUE,   # collapses the tabs into a hamburger menu on narrow screens
  inverse = FALSE,      # navbar-default's dark-on-light text scheme now that the bar is light
  
  # tags$head() is hoisted into the real document <head> by Shiny no
  # matter where it appears in the UI tree, so it's fine to drop it in
  # here alongside the tabPanel()s.
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  
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
  ),
  
  # ---- Footer: always the last thing on the page; CSS pins it to the
  # bottom of the viewport even when a tab has very little content ----
  footer = div(class = "bottom-banner",
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