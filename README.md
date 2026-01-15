# Project ACCESS Resource Rolodex

A mobile-first Shiny application providing UAlbany students with comprehensive on- and off-campus resources to support mental health, physical health, academic success, and overall wellbeing.

## 🎓 About

The Project ACCESS Resource Rolodex is part of an innovative translational research initiative at the University at Albany, funded by a federal grant from the Substance Abuse and Mental Health Services Administration (SAMHSA). Our mission is to help students find and access resources and services that support their success and wellbeing.

**Access the app at: [https://ualbanyprojectaccess.shinyapps.io/Rolodex](https://ualbanyprojectaccess.shinyapps.io/Rolodex)**

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
   git clone https://github.com/ewokozwok/project-access-rolodex.git
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

**Lead Developer**:
- **Evan E. Ozmat** - PhD Candidate & Senior Researcher, Center for Behavioral Health Promotion and Applied Research

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
