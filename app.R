library(shiny)
library(shinydashboard)
library(tidyverse)
library(shinythemes)
library(shinyBS)
library(shinybusy)

ui <- fluidPage(
  theme = shinytheme(theme = "darkly"),
  HTML(strrep(br(), 1)),
  navbarPage(
    title = "dylan ganz",
    id = "main_tabs",
    navbarMenu(
      title = "menu",
      
      tabPanel(
        title = "work",
        HTML(strrep(br(), 1)),
        wellPanel(h4("work"), style = "padding: 0px; text-align: center"),
        HTML(strrep(br(), 1)),
        
        tabsetPanel(
          id = "work_experience_tabs",
          type = "pills",
          
          tabPanel(
            title = "data analyst",
            fluidRow(
              column(
                width = 4,
                HTML(strrep(br(), 2)),
                
                h4("EMPLOYER"),
                wellPanel(img(src = 'Telus_International.jpeg', height = "100%", width = "100%")),
                HTML(strrep(br(), 1)),
                
                h4("SUMMARY"),
                h5("2021 - Present"),
                h5("I help corporate teams across different projects organize, visualize, and manipulate their data. 
                   Data cleaning and manipulation is achieved using R, and visualization is achieved using R Shiny Apps.
                   This work has also lead to research on machine learning and predictive modeling using R."),
                HTML(strrep(br(), 1)),
                
                h4("SKILLS"),
                h6("- R / R Shiny"),
                h6("- Google Apps Script"),
                h6("- HTML / CSS"),
                h6("- UX Design"),
                h6("- SQL Integration"),
                offset = 4
              )
            )
          ),
          tabPanel(
            title = "data collection moderator",
            fluidRow(
              column(
                width = 4,
                HTML(strrep(br(), 2)),
                
                h4("EMPLOYER"),
                wellPanel(img(src = 'Lionbridge.jpeg', height = "100%", width = "100%")),
                HTML(strrep(br(), 1)),
                
                h4("SUMMARY"),
                h5("2018 - 2021"),
                h5("I ran data collection projects for clients developing and improving their AI systems. 
                   This involved setting up data collection equipment (including pro audio and video hardware), sourcing contributors, scheduling their recording sessions, 
                   executing the collection, editing / cleaning the data, 
                   and performing the first round of Quality Assurance."),
                HTML(strrep(br(), 1)),
                
                h4("SKILLS"),
                h6("- Avid Pro Tools"),
                h6("- Cockos Reaper"),
                h6("- Python"),
                h6("- Apple Script Editor"),
                h6("- Google Sheets"),
                offset = 4
              )
            )
          ),
          tabPanel(
            title = "voice-over engineer",
            fluidRow(
              column(
                width = 4,
                HTML(strrep(br(), 2)),
                
                h4("EMPLOYER"),
                wellPanel(img(src = 'Lionbridge.jpeg', height = "100%", width = "100%")),
                HTML(strrep(br(), 1)),
                
                h4("SUMMARY"),
                h5("2018 - 2021"),
                h5("I recorded voice-over for clients localizing their spoken media. This involved setting up pro audio recording equipment, scheduling voice talents,
                   executing the recordings, editing the audio, and performing the first round of Quality Assurance on Spanish, French, Italian, and German recordings."),
                HTML(strrep(br(), 1)),
                
                h4("SKILLS"),
                h6("- Avid Pro Tools"),
                h6("- Apple Script Editor"),
                h6("- Google Sheets"),
                offset = 4
              )
            )
          ),
          tabPanel(
            title = "event production tech",
            fluidRow(
              column(
                width = 4,
                HTML(strrep(br(), 2)),
                
                h4("EMPLOYER"),
                wellPanel(img(src = 'High_Output.jpeg', height = "100%", width = "100%")),
                HTML(strrep(br(), 1)),
                
                h4("SUMMARY"),
                h5("2016 - 2018"),
                h5("I helped build and deploy events at Boston's Museum of Fine Art, Symphony Hall, HUBweek, and Hynes Convention Center. 
                   This involved working with a team to set up staging, lights, audio, and video."),
                HTML(strrep(br(), 1)),
                
                h4("SKILLS"),
                h6("- Electrics"),
                h6("- Audio Engineering"),
                offset = 4
              )
            )
          )
        ),
      ),
      
      tabPanel(
        title = "music",
        HTML(strrep(br(), 1)),
        wellPanel(h4("music"), style = "padding: 0px; text-align: center"),
        HTML(strrep(br(), 1)),
        
        tabsetPanel(
          id = "music_experience_tabs",
          type = "pills",
          
          tabPanel(
            title = "mixing",
            fluidRow(
              column(
                width = 4,
                HTML(strrep(br(), 2)),
                
                h4("13 MILLION PLAYS AND COUNTING"),
                HTML(strrep(br(), 1)),
                
                tags$iframe(
                  style="border-radius:12px", 
                  src="https://open.spotify.com/embed/playlist/4kDNyO3A39zCmZiILpNiJV?utm_source=generator", 
                  width="100%", 
                  height="380", 
                  frameBorder="0", 
                  allowfullscreen="", 
                  allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture", 
                  loading="lazy"),
              
                HTML(strrep(br(), 2)),
                h4("Over the last several years, I have mixed and mastered music for festival headliners, certified-platinum artists, and close friends."),
                offset = 4
              )
            )
          ),
          tabPanel(
            title = "premises",
            
          ),
          tabPanel(
            title = "personal"
          ),
          tabPanel(
            title = "studio"
          )
        )
      ),
      
      tabPanel(
        title = "art",
        HTML(strrep(br(), 1)),
        wellPanel(h4("art"), style = "padding: 0px; text-align: center"),
        HTML(strrep(br(), 1)),
        
        fluidRow(
          column(
            width = 10,
            h4("a day in the life of a hallucinating jellyfish"),
            wellPanel(img(src = "A_Day_In_The_Life_of_a_Hallucinating_Jellyfish.jpeg", height = "100%", width = "100%")),
            
            offset = 1
          )
        )
      )
      
    )
    
  )
  
)

server <- function(input, output, session){
}

shinyApp(ui, server)
# shinyAppDir(".")

