# BRFSS Project Summary

## Objectives:
1. Develop Data Scientist core competencies in R, Git, and Markdown
2. Pilot GitHub as a collaborative public health Data Scientist project platform
3. Demo automated annual public health report production

Dataset: [2022 US BRFSS](https://www.cdc.gov/brfss/annual_data/annual_2022.html)

### *Categories variables*: age, sex, household incomes, race and ethnicity, education, disability
-	*Age*: age, 19-24, 25-44, 45-64, 65+
-	*Sex*: sexvar
-	*Household incomes*: income3
-	*Education*: _educag
-	*Race and ethnicity*: _RACEGR4
-	*Disability*: blind,  decide,  diffwalk,  diffdres,  diffalon,  deaf

### Health status indicator;
-	*Fair or poor health*: _rfhlth 
-	*Poor physical health*: at leat 14 days in past month: physhlth
-	*Poor mental health*: at least 14 days in past month: menthlth
-	*BMI*: _bmi5cat
-	*Adults with at least one regular doctor*: persdoc3

### Risk behavior;
-	*Leisure time physical activity*:  _TOTINDA
-	*Current smoker*: _RFSMOK3 
-	*Heavy drinking*: _RFDRHV8
-	*Binge drinking*: _Rfbing6

### Clinical preventive practice;
-	*Routine checkup in past year*: checkup1
-	*Adults aged 65+ who have had a flu shot within the past year*: _FLSHOT7
-	*All adults who had flu shot in past year*: FLUSHOT7
-	*Ever had a pneumonia shot, all ages*: PNEUVAC4
-	*Adults who were ever tested for HIV*: _AIDTST4
-	*Received a tentanus shot in the past 10 years*: TETANUS1
-	*Had a blood test for high blood sugar or diabetes in past 3 years*: PDIABTS1

### Chronic Conditions;
- *Adults with current asthma*: _ASTHMS1
-	*Adults ever told they have COPD*: CHCCOPD3
-	*Adults ever told they have arthriti*s: _DRDXAR2
-	*Adults with heart attack, coronary heart disease, or stroke*: CVDINFR4, CVDCRHD4, CVDSTRK3
-	*Adults ever diagnosed with cancer*: CHCOCNC1, CHCSCNC1
-	*Adult ever told they have pre-diabetes*: PREDIAB
-	*Adult ever told they have diabetes*: DIABETE4
-	*Adult ever told they have kidney disease*: CHCKDNY2
-	*Adult ever told they have depression*: ADDEPEV3

  ### Analysis variables:
  - *weighting variable*:_llcpwt
  - *stratefier*: _ststr 


### Devcontainer

This repository makes use of a devcontainer setup for R inside of VSCode.
The container has R, Quarto, and Air installed.  On container creation
it will initialize the `renv` package and/or invoke `renv::restore()`
to set up all the dependancies. It will also install the R package
`languageserver` to enable to setup Microsoft's LSP.

- [`renv`](https://rstudio.github.io/renv/articles/renv.html?_gl=1*1utovle*_ga*MTc3Mzg0OTUwOS4xNzE5NTE4MDk3*_ga_2C0WZ1JHG0*czE3NDc4NDM5NDgkbzI5JGcwJHQxNzQ3ODQzOTQ4JGowJGwwJGgw): 
Helps you create reproducible environments for your R projects. 
- [Quarto](https://quarto.org/): An open-source scientific and technical publishing system that works with multiple programming languages.
- [Air](https://posit-dev.github.io/air/): A blazing fast code formatter written in Rust that will format your code as you save your files.
