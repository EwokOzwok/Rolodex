

import { useState, useEffect } from 'react'; import { Coffee, Sparkles, Download, AlertCircle, X } from 'lucide-react'; import axios from 'axios'; const WelcomeTab = ({ appicData, recommendations, setRecommendations, programType, setProgramType, degreeType, setDegreeType,

pasted


import { useState, useEffect } from 'react'; import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet'; import L from 'leaflet'; import 'leaflet/dist/leaflet.css'; // Fix Leaflet marker icons delete L.Icon.Default.prototype._getIconUrl; L.Icon.Default.mergeOptions({ iconRetin

pasted


import { useState, useEffect } from 'react'; import { Home, MapPin } from 'lucide-react'; import WelcomeTab from './components/WelcomeTab'; import MapTab from './components/MapTab'; import { parseCSV } from './utils/csvParser'; function App() { const [activeTab, setActiveTab] = useState('w

pasted

Write me a high quality readme file for my app:

Use this readme from the RShiny version of the app (somewhat different) as a base. Except I do not include the backend in the public repo... so make note of that and remove the instructions for using the backend. 

APPIC Site Recommender

Project Description
The APPIC Site Recommender is a powerful tool designed to help users identify APPIC internship sites that closely resemble their selections. By leveraging a cosine similarity algorithm, the app analyzes site descriptions to recommend similar sites. Additionally, the app incorporates recommendations from previous users. For instance, if a prior user searched sites 1, 2, 3, 4, and 5, and a current user searches sites 3, 4, and 5, the system will recommend sites 1 and 2.
To access the app for free online, visit to __https://ewokozwok.shinyapps.io/appic__.
To support my work, use the Buy Me A Coffee button to donate!
Installation Instructions
Step 1: Clone the Repository
Download the repository and extract it to your desktop.
Step 2: Set Up Conda Environment
1. Install Anaconda from __https://www.anaconda.com/__.
2. Navigate to the project directory in your terminal:

cd /path/to/repo
Create the Conda environment using the provided environment.yml file:
conda env create -f environment.yml -n appic
Activate the environment:
conda activate appic
Step 3: Run the Flask App
Run the recommender app using the following command:

python recommender_flask.py
The Flask app will run on port 9090.
Step 4: Configure Firewall Exceptions
To access the app, you must allow incoming connections on port 9090. Below are instructions for enabling this on Windows 11:
1. Open the Start Menu and search for Windows Defender Firewall with Advanced Security.
2. Select Inbound Rules and click New Rule.
3. Choose Port and click Next.
4. Select TCP and specify port 9090.
5. Allow the connection and assign it to the necessary network types.
6. Finish the configuration and test the app access.
Step 5: Run the App Locally in RStudio
1. Open RStudio and execute the following commands:

install.packages("remotes")
library(remotes)
install_github("EwokOzwok/appicrecommender")
run_app(options = list(port = 3838))
Usage Instructions
For a demonstration, view the "Usage Example.gif" included in the repository.
Features
* Cosine similarity-based site recommendations
* User-driven recommendation system based on previous searches
* Search all or only recommended sites on a map
* Compatibility with Flask and R environments
Project Status
This project is stable.
Contributing
Contributions are welcome! Please reach out via email before submitting pull requests.
License
This project is licensed under the Apache License.
Credits & Acknowledgments
Created by Evan E. Ozmat.
Contact Information
For questions, feedback, or support, please contact:
* Email: __eozmat@albany.edu__

Show more
8:43 PM
APPIC Site Recommender
A modern web application designed to help doctoral students find the best APPIC internship sites using advanced similarity algorithms and collaborative filtering.

🎓 About
The APPIC Site Recommender helps psychology doctoral students identify internship sites that match their preferences. Using a cosine similarity algorithm, the app analyzes site characteristics to recommend similar programs. The system also incorporates collaborative filtering—if previous users searched sites 1, 2, 3, 4, and 5, and you search sites 3, 4, and 5, the app will suggest sites 1 and 2 as potential matches.

Access the app for free at: https://evanozmat.com

✨ Features
Smart Recommendations: Cosine similarity algorithm analyzes multiple site characteristics
Collaborative Filtering: Learn from other users' site selections
Interactive Map: Visualize all APPIC sites or filter to show only your recommendations
Advanced Filtering: Filter by program type (Clinical, Counseling, School), degree type (PhD, PsyD, EdD), and site type (VAMC, UCC, Consortia, etc.)
Export Results: Download your recommendations as CSV for easy reference
Modern UI: Clean, responsive interface built with React and Tailwind CSS
🚀 Installation
Prerequisites
Node.js (v16 or higher)
npm or yarn
Setup Instructions
Clone the repository
bash
   git clone https://github.com/yourusername/appic-recommender.git
   cd appic-recommender
Install dependencies
bash
   npm install
Start the development server
bash
   npm run dev
Build for production
bash
   npm run build
Note: This repository contains only the frontend application. The backend recommendation service is hosted separately and not included in this public repository.

📖 Usage
Configure Your Search
Select your program type (Clinical, Counseling, or School)
Choose your degree type (PhD, PsyD, or EdD)
Optionally filter by site type (VAMC, UCC, Community Mental Health, etc.)
Select Sites
Choose at least 2 sites you're interested in
Use the search box to quickly find specific programs
Selected sites appear as pills above the list for easy reference
Get Recommendations
Toggle "Include User Recommendations" to enable collaborative filtering
Click "Get Site Recommendations!" to receive your personalized matches
Explore Results
View your top 10 recommended sites in a sortable table
Download results as CSV for further analysis
Switch to the Map tab to visualize site locations
🗺️ Map Features
Interactive Visualization: See all APPIC sites plotted on an interactive map
Filter by Recommendations: Toggle to show only your recommended sites
Site Details: Click markers to view program information, locations, and application deadlines
Direct Links: Access program websites directly from map popups
🛠️ Technology Stack
Frontend: React 18, Vite
Styling: Tailwind CSS
Mapping: Leaflet, React Leaflet
HTTP Client: Axios
Icons: Lucide React
📊 Data
The app uses APPIC directory data including:

Site information and characteristics
Geographic coordinates for mapping
Program types and degree requirements
Application deadlines and contact information
🤝 Contributing
Contributions are welcome! Please reach out via email before submitting pull requests to discuss proposed changes.

📄 License
This project is licensed under the Apache License 2.0.

👨‍💻 Author
Created by Evan E. Ozmat

📧 Contact
For questions, feedback, or support:

Email: eozmat@albany.edu
💖 Support
If you find this tool helpful, consider supporting the project:

☕ Buy Me A Coffee

Free for all doctoral students — Made possible by our sponsors at CliniciansFirst

Can you make it so I can just copy-paste the the content into my README.md file?

8:43 PM
markdown
# APPIC Site Recommender

A modern web application designed to help doctoral students find the best APPIC internship sites using advanced similarity algorithms and collaborative filtering.

## 🎓 About

The APPIC Site Recommender helps psychology doctoral students identify internship sites that match their preferences. Using a cosine similarity algorithm, the app analyzes site characteristics to recommend similar programs. The system also incorporates collaborative filtering—if previous users searched sites 1, 2, 3, 4, and 5, and you search sites 3, 4, and 5, the app will suggest sites 1 and 2 as potential matches.

**Access the app for free at: [https://evanozmat.com](https://evanozmat.com)**

## ✨ Features

- **Smart Recommendations**: Cosine similarity algorithm analyzes multiple site characteristics
- **Collaborative Filtering**: Learn from other users' site selections
- **Interactive Map**: Visualize all APPIC sites or filter to show only your recommendations
- **Advanced Filtering**: Filter by program type (Clinical, Counseling, School), degree type (PhD, PsyD, EdD), and site type (VAMC, UCC, Consortia, etc.)
- **Export Results**: Download your recommendations as CSV for easy reference
- **Modern UI**: Clean, responsive interface built with React and Tailwind CSS

## 🚀 Installation

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Setup Instructions

1. **Clone the repository**
```bash
   git clone https://github.com/yourusername/appic-recommender.git
   cd appic-recommender
```

2. **Install dependencies**
```bash
   npm install
```

3. **Start the development server**
```bash
   npm run dev
```

4. **Build for production**
```bash
   npm run build
```

> **Note**: This repository contains only the frontend application. The backend recommendation service is hosted separately and not included in this public repository.

## 📖 Usage

1. **Configure Your Search**
   - Select your program type (Clinical, Counseling, or School)
   - Choose your degree type (PhD, PsyD, or EdD)
   - Optionally filter by site type (VAMC, UCC, Community Mental Health, etc.)

2. **Select Sites**
   - Choose at least 2 sites you're interested in
   - Use the search box to quickly find specific programs
   - Selected sites appear as pills above the list for easy reference

3. **Get Recommendations**
   - Toggle "Include User Recommendations" to enable collaborative filtering
   - Click "Get Site Recommendations!" to receive your personalized matches

4. **Explore Results**
   - View your top 10 recommended sites in a sortable table
   - Download results as CSV for further analysis
   - Switch to the Map tab to visualize site locations

## 🗺️ Map Features

- **Interactive Visualization**: See all APPIC sites plotted on an interactive map
- **Filter by Recommendations**: Toggle to show only your recommended sites
- **Site Details**: Click markers to view program information, locations, and application deadlines
- **Direct Links**: Access program websites directly from map popups

## 🛠️ Technology Stack

- **Frontend**: React 18, Vite
- **Styling**: Tailwind CSS
- **Mapping**: Leaflet, React Leaflet
- **HTTP Client**: Axios
- **Icons**: Lucide React

## 📊 Data

The app uses APPIC directory data including:
- Site information and characteristics
- Geographic coordinates for mapping
- Program types and degree requirements
- Application deadlines and contact information

## 🤝 Contributing

Contributions are welcome! Please reach out via email before submitting pull requests to discuss proposed changes.

## 📄 License

This project is licensed under the Apache License 2.0.

## 👨‍💻 Author

Created by **Evan E. Ozmat**

## 📧 Contact

For questions, feedback, or support:
- **Email**: eozmat@albany.edu

## 💖 Support

If you find this tool helpful, consider supporting the project:

[☕ Buy Me A Coffee](https://buymeacoffee.com/evanozmat)

---

**Free for all doctoral students** — Made possible by our sponsors at CliniciansFirst

import React, { useState, useCallback } from "react"; import { Upload, Download, FileText, Palette, Smartphone, Database, Code, CheckCircle2, ArrowRight, Settings, Eye, } from "lucide-react"; import JSZip from "jszip"; import { saveAs } from "file-saver"; cons

pasted

Now do the same for this app:

The Resource Rolodex Generator

8:46 PM
markdown
# Resource Rolodex Generator

A no-code tool that transforms CSV data into beautiful, mobile-first Shiny applications for organizing and sharing resources.

## 🎯 About

The Resource Rolodex Generator empowers clinicians, educators, and community organizations to create professional mobile apps without writing a single line of code. Simply upload your CSV data, configure your app's appearance, and download a fully functional Shiny application ready for deployment.

**Try it live at: [https://rolodexgenerator.com](https://rolodexgenerator.com)**

## ✨ Features

- **No-Code Interface**: Build complete Shiny apps through an intuitive 5-step wizard
- **CSV-Powered**: Transform any CSV/TSV file into an interactive mobile app
- **Mobile-First Design**: Built with shinyMobile for native-like mobile experiences
- **Customizable Theming**: Choose from 6 pre-built color templates or create your own
- **Rich Content Support**: Add accordion sections, embedded videos, and custom welcome screens
- **Resource Categories**: Organize resources by type with automatic filtering
- **Contact Integration**: Include addresses, phone numbers (click-to-call), websites, and hours
- **PWA-Ready**: Generated apps can be installed on home screens like native apps
- **Docker Support**: Includes Dockerfile and deployment instructions
- **Complete Documentation**: Step-by-step guides with video tutorials included

## 🚀 Installation

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Setup Instructions

1. **Clone the repository**
```bash
   git clone https://github.com/yourusername/rolodex-generator.git
   cd rolodex-generator
```

2. **Install dependencies**
```bash
   npm install
```

3. **Start the development server**
```bash
   npm run dev
```

4. **Build for production**
```bash
   npm run build
```

> **Note**: This repository contains only the frontend generator interface. The generated Shiny apps are standalone and do not require this generator to run.

## 📖 Usage

### Step 1: Upload Data
- Prepare a CSV or TSV file with your resource data
- Download the example CSV template to see the required format
- Upload your file to begin

### Step 2: Map Fields
- Map your CSV columns to app fields:
  - **Resource Name**: Main heading for each resource
  - **Category**: For filtering and grouping resources
  - **Description**: Detailed information about the resource
  - **Address**: Physical location (optional)
  - **Phone**: Click-to-call phone numbers (optional)
  - **Website**: URLs to resource websites (optional)
  - **Hours**: Operating hours (optional)

### Step 3: Customize Home Screen
- Set your app title
- Create accordion sections for your welcome screen
- Add headers, text content, and embedded YouTube videos
- Configure 1-5 accordion items to introduce your app

### Step 4: Style Your App
- Choose from 6 professionally designed color templates:
  - Ocean Blue
  - Forest Green
  - Sunset
  - Midnight
  - Rose Garden
  - Slate Modern
- Or customize colors manually (Primary, Secondary, Accent, Text)
- Toggle search functionality

### Step 5: Generate & Download
- Download a complete ZIP package containing:
  - `app.R` - Your generated Shiny application
  - `Dockerfile.txt` - For containerized deployment
  - `Docker Build.txt` - Build instructions
  - `embed-app.txt` - Instructions for embedding in websites
  - `IMPORTANT - README.html` - Complete setup guide with videos
  - `www/` folder - All assets, icons, and service workers for PWA functionality

## 📱 Generated App Features

Your generated Shiny app includes:

- **Two-Tab Interface**: 
  - Home tab with customizable welcome content
  - Resources tab with category filtering
- **Progressive Web App (PWA)**: 
  - Installable on iOS and Android devices
  - Offline capability via service workers
  - App icons and manifest
- **Mobile-Optimized UI**:
  - Responsive design
  - Touch-friendly controls
  - Native-like animations
- **Resource Management**:
  - Category-based filtering
  - Expandable accordion items
  - Integrated contact options (call, visit, web)

## 🛠️ Technology Stack

- **Frontend Generator**: React 18, Vite
- **Styling**: Tailwind CSS
- **Icons**: Lucide React
- **File Handling**: JSZip, FileSaver.js
- **Generated Apps**: R, Shiny, shinyMobile

## 📊 CSV Format

Your CSV should include these columns (all optional except Name and Type):
```csv
Name,Type,Info,Address,Phone,Website,Hours
Resource Name,Category,Description,123 Main St,tel:555-0100,https://example.com,Mon-Fri 9-5
```

**Notes**:
- Phone numbers should use `tel:` prefix for click-to-call functionality
- Categories will appear as filter options in the app
- All fields except Name and Type are optional

## 🚢 Deployment Options

Generated apps can be deployed via:

1. **Local Deployment**: Run directly in RStudio
2. **Docker**: Use included Dockerfile for containerized deployment
3. **shinyapps.io**: Deploy to Posit's hosting platform
4. **Self-Hosted**: Deploy on your own Shiny Server

Complete instructions are included in the downloaded package.

## 🎨 Color Templates

Pre-built themes for instant professional styling:

- **Ocean Blue**: Modern, trustworthy blues and purples
- **Forest Green**: Calming, natural greens
- **Sunset**: Warm oranges and reds
- **Midnight**: Professional dark slate tones
- **Rose Garden**: Vibrant pinks and reds
- **Slate Modern**: Neutral grays with blue accents

## 🤝 Contributing

Contributions are welcome! Please reach out via email before submitting pull requests to discuss proposed changes.

## 📄 License

This project is licensed under the Apache License 2.0.

## 👨‍💻 Author

Created by **Evan E. Ozmat** and the **CliniciansFirst** team

## 📧 Contact

For questions, feedback, or deployment assistance:
- **Email**: contact@cliniciansfirst.org
- **Website**: [https://cliniciansfirst.org](https://cliniciansfirst.org)

## 💼 Professional Deployment Services

Need help deploying your app? CliniciansFirst offers:
- Expert deployment assistance
- Custom feature development
- Hosting solutions
- Technical support

**We're clinicians who code—we understand your workflow.**

Visit [cliniciansfirst.org/rolodex](https://cliniciansfirst.org/rolodex) for more information.

---

**Free to use** — Sponsored by CliniciansFirst

#' The application server-side #' #' @param input,output,session Internal parameters for {shiny}. #' DO NOT REMOVE. #' @import shiny #' @import shinyMobile #' @importFrom stats na.omit #' @import magrittr #' @noRd app_server <- function(input, output, session) { resources = data i

pasted


#' The application User-Interface #' #' @param request Internal parameter for `{shiny}`. #' DO NOT REMOVE. #' @import shiny #' @import shinyMobile #' @import htmltools #' @noRd app_ui <- function(request) { tagList( # Leave this function for adding external resources golem

pasted

Can you do this again for my RShiny app?

Its built using golem and shinyMobile and provides on and off-campus resources for UAlbany students to support Project ACCESS a translational research initiative that aims to support student success by screening for mental health and substance use concerns, offering 1-on-1 meetings with Peer Prevention Navigators, and providing timely referrals to services.

9:03 PM
markdown
# Project ACCESS Resource Rolodex

A mobile-first Shiny application providing UAlbany students with comprehensive on- and off-campus resources to support mental health, physical health, academic success, and overall wellbeing.

## 🎓 About

The Project ACCESS Resource Rolodex is part of an innovative translational research initiative at the University at Albany, funded by a federal grant from the Substance Abuse and Mental Health Services Administration (SAMHSA). Our mission is to help students find and access resources and services that support their success and wellbeing.

**Access the app at: [https://cliniciansfirst.online](https://cliniciansfirst.online)**

## ✨ Features

- **Comprehensive Resource Database**: Browse mental health, physical health, sexual health, academic, and community resources
- **Smart Filtering**: Filter resources by category and toggle between on-campus and off-campus options
- **Mobile-First Design**: Built with shinyMobile for native-like mobile experiences
- **Progressive Web App (PWA)**: Install on your home screen like a native app on iOS and Android
- **Direct Action Links**: Click-to-call phone numbers, instant website access, and location information
- **Navigator Appointments**: Schedule 1-on-1 meetings with Peer Prevention Navigators
- **STI Testing**: Access confidential, anonymous on-campus HIV/STI testing appointments
- **PrEP Services**: Connect with healthcare providers for Pre-Exposure Prophylaxis (PrEP) consultations
- **Educational Content**: Video resources on HIV/STI prevention, fentanyl awareness, and mental health
- **Social Integration**: Stay updated through Instagram with tips, events, and important alerts

## 🚀 Installation

### Prerequisites

- R (>= 4.0.0)
- RStudio (recommended)

### Required R Packages
```r
install.packages(c(
  "shiny",
  "shinyMobile",
  "golem",
  "magrittr",
  "htmltools"
))
```

### Setup Instructions

1. **Clone the repository**
```bash
   git clone https://github.com/yourusername/project-access-rolodex.git
   cd project-access-rolodex
```

2. **Install dependencies**
```r
   # In R console
   install.packages("remotes")
   remotes::install_deps()
```

3. **Run the app locally**
```r
   # In R console
   golem::run_dev()
```

4. **Deploy to shinyapps.io** (optional)
```r
   # Configure your shinyapps.io account first
   rsconnect::deployApp()
```

## 📖 Usage

### For Students

1. **Browse Resources**
   - Navigate to the Resources tab (search icon)
   - Select a resource category from the dropdown menu
   - Toggle "Show Off-Campus Resources" to expand your options
   - Click on any resource to view details including address, phone, hours, and website

2. **Schedule Appointments**
   - Navigate to the Appointments tab (calendar icon)
   - Choose from three appointment types:
     - **Navigator Appointments**: Get guidance on resources and overcome barriers
     - **HIV/STI Testing**: Schedule confidential, anonymous testing
     - **PrEP Intake**: Meet with healthcare providers about HIV prevention

3. **Stay Connected**
   - Follow Project ACCESS on Instagram for updates, tips, and alerts
   - Access the Quick Introduction popup for a tour of the app
   - Report bugs or issues via the feedback link

4. **Install as App**
   - On iPhone: Open in Safari → Share → Add to Home Screen
   - On Android: Open in Chrome → Menu → Add to Home Screen

### Resource Categories

- **Physical Health**: Medical services, wellness resources
- **Mental Health**: Counseling, therapy, support groups
- **Community-Specific Resources**: Tailored support for Black, Hispanic, and LGBTQ+ communities
- **Sexual Health**: Testing, prevention, education
- **Interpersonal Violence**: Support for relationship and sexual violence
- **Alcohol and Other Drugs**: Prevention, treatment, recovery resources
- **Problem Gambling**: Support and counseling
- **Academic Resources**: Tutoring, study support, accessibility services
- **International Student Resources**: Immigration, cultural adjustment, community
- **Food, Housing, & Financial**: Basic needs support
- **Legal Resources**: Legal aid and consultation
- **Hotlines**: 24/7 crisis and support lines

## 🛠️ Technology Stack

- **Framework**: Shiny (R web application framework)
- **UI**: shinyMobile (Framework7-based mobile UI)
- **Architecture**: Golem (production-grade Shiny app framework)
- **Analytics**: Google Analytics & Google Tag Manager
- **PWA**: Service workers, web manifest, app icons
- **Styling**: Custom CSS with Framework7 components

## 📊 Data Structure

Resources are stored in CSV format with the following fields:
```csv
Name,Type,Location,Address,Phone,Website,Hours,Info
Resource Name,Category,On/Off,Physical Address,tel:555-0100,https://example.com,Mon-Fri 9-5,Description
```

**Required Fields**:
- `Name`: Resource name
- `Type`: Resource category
- `Location`: "On" (on-campus) or "Off" (off-campus)

**Optional Fields**:
- `Address`: Physical location
- `Phone`: Phone number (use `tel:` prefix for click-to-call)
- `Website`: URL to resource website
- `Hours`: Operating hours
- `Info`: Detailed description

## 🏗️ Project Structure
```
project-access-rolodex/
├── R/
│   ├── app_ui.R          # UI definition
│   ├── app_server.R      # Server logic
│   └── run_app.R         # App launcher
├── inst/
│   └── app/
│       └── www/          # Static assets
│           ├── icons/    # PWA icons
│           ├── manifest.json
│           └── service-worker.js
├── data/
│   └── resources.csv     # Resource database
├── DESCRIPTION           # Package metadata
└── README.md
```

## 🎨 Customization

### Theming

The app uses a custom purple/gold color scheme. To modify:

1. Edit `/inst/app/www/shinyMobile2.0.1.min.css`
2. Replace hex color codes:
   - Primary: `#46166B` (purple)
   - Secondary: `#5B2F7B` (lighter purple)
   - Accent: `#EEB211`, `#EEB221` (gold)

### Adding Resources

1. Edit the CSV data file
2. Ensure all required fields are populated
3. Use `tel:` prefix for phone numbers
4. Test the app locally before deploying

### Adding New Tabs

1. Edit `R/app_ui.R` to add new `f7Tab()` components
2. Edit `R/app_server.R` to add corresponding logic
3. Follow the existing pattern for consistency

## 📱 PWA Features

The app includes Progressive Web App capabilities:

- **Installable**: Add to home screen on iOS and Android
- **Offline Ready**: Service worker enables offline functionality
- **App Icons**: Multiple icon sizes for different devices
- **Splash Screens**: Native-like launch experience

## 🔒 Privacy & Security

- Navigator and testing appointments use fake names for privacy
- Real phone numbers are required only for appointment reminders
- Location information sent via text 24 hours before appointments
- All testing is confidential and anonymous
- Survey responses are never connected to identifying information

## 🤝 Contributing

This is a research initiative app. For contributions or questions, please contact the Project ACCESS team directly.

## 📄 License

This project is licensed under the MIT License.

## 👥 Team

**App Developer**:
- **Evan E. Ozmat - PhD Candidate - Senior Researcher, Center for Behavioral Health Promotion and Applied Research

**Project Leaders**:
- **M. Dolores Cimini, PhD** - Director, Center for Behavioral Health Promotion and Applied Research
- **Jessica L. Martin, PhD** - Research Fellow, School of Education
- **Laura L. Longo, PhD** - Senior Research Specialist

## 📧 Contact

For questions, feedback, or support:
- **Email**: eozmat@albany.edu
- **Instagram**: [@ualbanyprojectaccess](https://www.instagram.com/ualbanyprojectaccess)
- **Website**: [www.albany.edu/education/research/behavioral-health-promotion](https://www.albany.edu/education/research/behavioral-health-promotion#tab-project-access)

## 🙏 Acknowledgments

Developed in part under Grant Number 1H79SP082142-01 from the Substance Abuse and Mental Health Services Administration (SAMHSA), U.S. Department of Health and Human Services (HHS).

The views, policies, and opinions expressed are those of the authors and do not necessarily reflect those of SAMHSA or HHS.

## 📞 Crisis Resources

If you or someone you know is in crisis:
- **National Suicide Prevention Lifeline**: 988
- **Crisis Text Line**: Text HOME to 741741
- **UAlbany Counseling Center**: (518) 442-5800

---

**Supporting student success through accessible, compassionate care** 💜💛





Claude is AI and can make mistakes. Please double-check responses.
Claude