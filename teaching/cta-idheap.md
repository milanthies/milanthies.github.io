---
layout: page
title: Computational Text Analysis (IDHEAP)
permalink: /teaching/cta-idheap/
---

**Two-day workshop for PhD researchers**<br>
IDHEAP, University of Lausanne · 10–11 November 2026, 09:30–17:30<br>
Rooms: Tuesday 10 November, room 201 · Wednesday 11 November, room 003 ([map](https://maps.app.goo.gl/N6FC2kfn1VXcjAFz7))<br>
Instructor: Milan Thies ([milan.thies@unil.ch](mailto:milan.thies@unil.ch))

[Syllabus (PDF)](/files/cta-idheap/syllabus_cta_idheap.pdf)

## About the course

With vast amounts of administrative, legislative, political and news texts available, computational text analysis (text as data) has gained traction in social science research. This two-day workshop introduces PhD researchers to computational text analysis from a public policy and public administration perspective.

Whether you study policies, politics, economies, organisations or institutions, texts are traces of societal change and conflict. The workshop is hands-on: in exercises with R and the quanteda package, you implement methods from dictionaries to topic models, and you apply them to texts from your own research.

## Objectives

1. **Theoretical foundations.** Understand the assumptions behind text-as-data approaches and their place in social science research.
2. **Practical application.** Implement text-as-data methods in R through hands-on exercises.
3. **Transfer to your own research.** Develop a first analysis on data from your field, or critically assess text-as-data research in your field.

## Before the first day

1. Read Grimmer, Roberts & Stewart (2022), Chapter 1, and Martin (2018). See [Readings](#readings).
2. Install R, RStudio and the R package `quanteda`. A short guide: [Installing R and RStudio](https://rstudio-education.github.io/hopr/starting.html). If it does not work, write to me before the workshop.
3. Download the [scripts and data](#materials) into one folder and set it as your working directory.
4. Think about which texts you would like to analyse. You can bring your own data for the project on Day 2.

## Schedule

### Day 1 (Tuesday 10 November, room 201): Foundations and first steps in R

| Time | Session |
| --- | --- |
| 09:30–10:35 | Welcome; texts as traces of political conflict and policy change; group work on texts in your field |
| 10:50–11:45 | A newcomer's guide to computational text analysis; R, RStudio and R Markdown (Script 1) |
| 11:45–12:20 | Texts, tokens and the document-feature matrix (Script 2) |
| 12:20–13:20 | Lunch |
| 13:20–15:10 | Importing, pre-processing and describing texts: keywords in context, top features, word clouds, keyness (Script 3) |
| 15:25–16:30 | Word counts and dictionaries (Script 4) |
| 16:30–17:30 | Choosing texts; individual co-thinking on your own texts |

### Day 2 (Wednesday 11 November, room 003): Methods and your own project

| Time | Session |
| --- | --- |
| 09:30–10:25 | Recap; Martin (2018) in small groups |
| 10:40–11:25 | Dictionaries, continued: building your own dictionary (Script 4) |
| 11:25–12:30 | Supervised and unsupervised machine learning; topic models and seeded LDA |
| 12:30–13:30 | Lunch |
| 13:30–14:15 | Topic models in R (Script 5); the in-class project |
| 14:30–16:30 | In-class project on your own data or data provided |
| 16:30–17:30 | Project pitches, reflection and outlook |

Short breaks mid-morning and mid-afternoon.

## Materials

Download the files into one folder. Right-click and choose "Save link as" if a file opens in the browser.

**Slides**

Slides for Day 1 and 2 will be added here shortly.

**R scripts** (R Markdown, open in RStudio)

- [Script 1: R Markdown basics](/files/cta-idheap/scripts/1_rmarkdown.Rmd)
- [Script 2: Texts, tokens, DFM and top features](/files/cta-idheap/scripts/2_texts_tokens_dfm.Rmd)
- [Script 3: Pre-processing and descriptives](/files/cta-idheap/scripts/3_preprocessing_descriptives.Rmd)
- [Script 4: Dictionaries](/files/cta-idheap/scripts/4_dictionaries.Rmd)
- [Script 5: Topic models](/files/cta-idheap/scripts/5_topic_models.Rmd)

**Data**

| File | Used in | Size |
| --- | --- | --- |
| [eurydice.RDS](/files/cta-idheap/data/eurydice.RDS): Eurydice descriptions of European education systems | Scripts 3, 4, 5 | 10 MB |
| [us_election_2020_1st_presidential_debate.csv](/files/cta-idheap/data/us_election_2020_1st_presidential_debate.csv): first Trump–Biden debate, 2020 | Script 4 | 0.1 MB |
| [english.yml](/files/cta-idheap/data/english.yml): Newsmap geographical dictionary | Script 4 | 0.01 MB |
| [un-general-debates.csv](https://media.githubusercontent.com/media/RunestoneInteractive/httlads/master/Data/un-general-debates.csv): UN General Debate speeches, 1970–2015 (one row per speech: session, year, country, text). In R: `read.csv("https://media.githubusercontent.com/media/RunestoneInteractive/httlads/master/Data/un-general-debates.csv")` | Day 2 project | 129 MB |
| [get_student_datasets.R](/files/cta-idheap/data/get_student_datasets.R): downloads US regulatory comments, Swiss parliament speeches and Swiss party manifestos | Day 2 project | script |

## Readings

**Preparation (required)**

- Grimmer, J., Roberts, M. E., & Stewart, B. M. (2022). *[Text as Data: A New Framework for Machine Learning and the Social Sciences](https://press.princeton.edu/books/paperback/9780691207551/text-as-data)*. Princeton University Press. Chapter 1.
- Martin, C. J. (2018). Imagine All the People: Literature, Society, and Cross-National Variation in Education Systems. *World Politics*, 70(3). <https://doi.org/10.1017/S0043887118000023>

**Optional**

- Benoit, K. (2020). Text as data: An overview. In L. Curini & R. Franzese (Eds.), *The SAGE Handbook of Research Methods in Political Science and International Relations*. SAGE. <https://doi.org/10.4135/9781526486387>
- Blei, D. M., Ng, A. Y., & Jordan, M. I. (2003). Latent Dirichlet allocation. *Journal of Machine Learning Research*, 3, 993–1022.
- Watanabe, K., & Zhou, Y. (2022). Theory-Driven Analysis of Large Corpora: Semisupervised Topic Classification of the UN Speeches. *Social Science Computer Review*, 40(2), 346–366. <https://doi.org/10.1177/0894439320907027>
- Laurer, M., Van Atteveldt, W., Casas, A., & Welbers, K. (2024). Less Annotating, More Classifying: Addressing the Data Scarcity Issue of Supervised Machine Learning with Deep Transfer Learning and BERT-NLI. *Political Analysis*, 32(1), 84–100. <https://doi.org/10.1017/pan.2023.20>
- Denny, M., & Spirling, A. (2017). Text Preprocessing for Unsupervised Learning: Why It Matters, When It Misleads, and What to Do about It. <https://doi.org/10.2139/ssrn.2849145>

**Recent applications**

- Kittel, R. C. (2025). Simply Speaking? Language Complexity among (Non-)Populist Actors in Parliamentary Debates. *Government and Opposition*, 60(4), 1336–1366. <https://doi.org/10.1017/gov.2025.4>
- Hurka, S., Knill, C., & Steinebach, Y. (2024). Rules as policy data? Measuring and linking policy substance and legislative context. *Regulation & Governance*, 18(3), 724–739. <https://doi.org/10.1111/rego.12528>
- Thies, M. (2025). State Intervention in Vocational Education: Training for the Digital and Green Transitions. *Regulation & Governance*. <https://doi.org/10.1111/rego.70074>
- Carstensen, M. B., Ibsen, C. L., Jensen, I. M. N., & Lund-Sørensen, B. (2025). Mapping Green Skills in Collective Skill Formation Systems: A Natural Language Processing Analysis of Danish Vocational Education and Training. *Regulation & Governance*. <https://doi.org/10.1111/rego.70097>

If you cannot access a reading through your university library, write to me at [milan.thies@unil.ch](mailto:milan.thies@unil.ch).
