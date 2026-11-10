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

With vast amounts of administrative, legislative, political and news texts available, computational text analysis has gained traction in social science research. This two-day workshop introduces PhD researchers to computational text analysis from a public policy and public administration perspective. The workshop is hands-on: in exercises with R and the quanteda package, you implement methods from dictionaries to topic models. At the end of the seminar, you apply them to texts from your own research.

## Objectives

1. **Theoretical foundations.** Understand the assumptions behind text-as-data approaches and their place in social science research.
2. **Practical application.** Implement text-as-data methods in R through hands-on exercises.
3. **Transfer to your own research.** Develop a first analysis on data from your field, or critically assess text-as-data research in your field.

## Before the first day

1. Read Grimmer, Roberts & Stewart (2022), Chapter 1, and Martin (2018). See [Readings](#readings).
2. Install R, RStudio and the R package `quanteda`. A short guide: [Installing R and RStudio](https://rstudio-education.github.io/hopr/starting.html). If it does not work, write to me before the workshop.

## Schedule

<div class="schedule">
  <div class="day-card">
    <div class="day-label">Day 1</div>
    <h3>Foundations &amp; first analyses</h3>
    <div class="day-meta">Tuesday 10 November · Room 201 · <span style="white-space:nowrap">09:30–17:30</span></div>
    <ol class="sessions">
    <li><span class="num">01</span><span>Finding and selecting the right texts for analysis / Texts as Traces of Political Conflict and Policy Change</span></li>
    <li><span class="num">02</span><span>A Newcomer’s Guide to Computational Text Analysis</span></li>
    <li><span class="num">03</span><span>Working with R: Introduction to R &amp; Quanteda</span></li>
    <li><span class="num">04</span><span>Workflow &amp; Descriptive Analyses</span></li>
    <li><span class="num">05</span><span>Word Counts and Dictionaries</span></li>
    <li><span class="num">06</span><span>Selecting Text for Your Mini-Project</span></li>
    </ol>
  </div>
  <div class="day-card">
    <div class="day-label">Day 2</div>
    <h3>Text-as-data methods &amp; application</h3>
    <div class="day-meta">Wednesday 11 November · Room 003 · <span style="white-space:nowrap">09:30–17:30</span></div>
    <ol class="sessions">
    <li><span class="num">01</span><span>Word Frequencies: How Simple Methods Can Trump Complex Ones (Martin 2018)</span></li>
    <li><span class="num">02</span><span>Supervised and Unsupervised Machine Learning: Focus on Topic Modelling</span></li>
    <li><span class="num">03</span><span>In-Class Project: Applied Computational Text Analysis</span></li>
    <li><span class="num">04</span><span>Pitching your projects</span></li>
    </ol>
  </div>
</div>

## Materials

Download the files into one folder. Right-click and choose "Save link as" if a file opens in the browser.

**Slides**

- [Slides Day 1 (PDF)](/files/cta-idheap/slides/cta_idheap_slides_day1.pdf)
- [Slides Day 2 (PDF)](/files/cta-idheap/slides/cta_idheap_slides_day2.pdf)

**R scripts** (R Markdown, open in RStudio)

- [Script 1: R Markdown basics](/files/cta-idheap/scripts/1_rmarkdown.Rmd)
- [Script 2: Texts, tokens, DFM and top features](/files/cta-idheap/scripts/2_texts_tokens_dfm.Rmd)
- [Script 3: Pre-processing and descriptives](/files/cta-idheap/scripts/3_preprocessing_descriptives.Rmd)
- [Script 4: Dictionaries](/files/cta-idheap/scripts/4_dictionaries.Rmd)
- [Script 5: Topic models](/files/cta-idheap/scripts/5_topic_models.Rmd)
- [Script 6: In-class project](/files/cta-idheap/scripts/6_project.Rmd)

**Data**

| File | Used in | Size |
| --- | --- | --- |
| [eurydice.RDS](/files/cta-idheap/data/eurydice.RDS): Eurydice descriptions of European education systems | Scripts 3, 4, 5, 6 | 10 MB |
| [us_election_2020_1st_presidential_debate.csv](/files/cta-idheap/data/us_election_2020_1st_presidential_debate.csv): first Trump–Biden debate, 2020 | Scripts 4, 6 | 0.1 MB |
| [english.yml](/files/cta-idheap/data/english.yml): Newsmap geographical dictionary | Script 4 | 0.01 MB |
| [un-general-debates.csv](https://media.githubusercontent.com/media/RunestoneInteractive/httlads/master/Data/un-general-debates.csv): UN General Debate speeches, 1970–2015 (one row per speech: session, year, country, text). In R: `read.csv("https://media.githubusercontent.com/media/RunestoneInteractive/httlads/master/Data/un-general-debates.csv")` | Script 5 (bonus), Script 6 | 129 MB |
| [brexit.RData](/files/cta-idheap/data/brexit.RData): House of Commons debates on the EU (Withdrawal) Bill, Sep 2017–Jun 2018, 4,437 speeches (date, speaker, party, terms = word count, text). In R: `load("brexit.RData")` creates the data frame `brexit_bill` | Script 6 | 1.3 MB |
| [us_regulatory_comments.csv](/files/cta-idheap/data/us_regulatory_comments.csv): public comments to US federal agencies on their regulatory proposals: 1,593 comments (FDA, DEA, EPA and others), 1996–2024, with agency, docket title, date and text | Script 6 | 2.8 MB |

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
