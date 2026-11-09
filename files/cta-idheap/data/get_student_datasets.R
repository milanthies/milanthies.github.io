# Downloads three teaching datasets and saves them as CSV files for students.
# Run section by section in RStudio. Files are written to the working directory.

pkgs <- c("jsonlite", "dplyr", "tidyr", "swissparl", "manifestoR")
install.packages(setdiff(pkgs, rownames(installed.packages())))
library(dplyr)

## 1. US public comments on federal regulations --------------------------------
# Source: https://huggingface.co/datasets/ro-h/regulatory_comments
# One JSON list of dockets; each docket holds a nested list of comments.
url <- "https://huggingface.co/datasets/ro-h/regulatory_comments/resolve/main/docket_comments_v6.json"
download.file(url, "docket_comments_v6.json", mode = "wb")
dockets <- jsonlite::fromJSON("docket_comments_v6.json")

collapse <- function(x) vapply(x, function(k) paste(k, collapse = "; "), character(1))
if ("keywords" %in% names(dockets)) dockets$keywords <- collapse(dockets$keywords)

us_comments <- dockets %>%
  as_tibble() %>%
  rename(docket_id = id, docket_title = title) %>%
  tidyr::unnest(comments, keep_empty = TRUE) %>%   # one row per comment
  filter(!is.na(text))

write.csv(us_comments, "us_regulatory_comments.csv", row.names = FALSE, fileEncoding = "UTF-8")
nrow(us_comments)

## 2. Swiss Parliament speeches, 2023 ------------------------------------------
# Source: Swiss Parliament web services via the swissparl package.
library(swissparl)

as_year <- function(d) {
  if (inherits(d, c("Date", "POSIXt"))) return(as.integer(format(d, "%Y")))
  d <- as.character(d)
  ms <- suppressWarnings(as.numeric(sub("^/Date\\((-?\\d+).*$", "\\1", d)))
  ifelse(grepl("^/Date", d),
         as.integer(format(as.POSIXct(ms / 1000, origin = "1970-01-01"), "%Y")),
         as.integer(substr(d, 1, 4)))
}

sessions <- get_data("Session", Language = "DE")
sessions_2023 <- sessions[as_year(sessions$StartDate) %in% 2023, ]
sessions_2023[, intersect(c("ID", "SessionName", "StartDate", "EndDate"), names(sessions_2023))]

# One download per session (several minutes in total)
speeches <- bind_rows(lapply(sessions_2023$ID, function(id) {
  message("Session ", id)
  get_data("Transcript", Language = "DE", IdSession = id)
}))

keep <- c("ID", "IdSession", "MeetingDate", "CouncilName", "SpeakerFullName",
          "ParlGroupAbbreviation", "CantonAbbreviation", "SpeakerFunction",
          "LanguageOfText", "VoteBusinessTitle", "IdSubject", "Text")

swiss_speeches <- speeches %>%
  filter(!is.na(SpeakerLastName), !is.na(Text)) %>%   # drop procedural rows
  select(any_of(keep)) %>%
  mutate(Text = clean_text(Text))                      # strip HTML markup

write.csv(swiss_speeches, "swiss_parliament_speeches_2023.csv", row.names = FALSE, fileEncoding = "UTF-8")
nrow(swiss_speeches)

## 3. Manifesto Project ----------------------------------------------------------
# Needs a free account: https://manifesto-project.wzb.eu -> Profile -> generate API key,
# save the key as manifesto_apikey.txt in the working directory.
# Check the Manifesto Project terms before sharing the texts.
library(manifestoR)
mp_setapikey("manifesto_apikey.txt")

corp <- mp_corpus(countryname == "Switzerland" & date > 199900)
manifestos <- as.data.frame(corp, with.meta = TRUE)   # one row per quasi-sentence

write.csv(manifestos, "manifestos_switzerland.csv", row.names = FALSE, fileEncoding = "UTF-8")
nrow(manifestos)
