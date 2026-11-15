# milanthies.github.io

Source of [milanthies.github.io](https://milanthies.github.io). GitHub Pages builds the site from this repository; there is nothing to install and no build step to run.

This file is the manual. You can change everything on the site from the GitHub website, in the browser.

## How to change something

1. Open the file on github.com (the table below says which one).
2. Click the pencil icon, top right of the file.
3. Change the text.
4. Click **Commit changes**. Write a few words about what you changed and confirm.

The site rebuilds by itself, usually within a minute or two. Every change is recorded, so nothing can be lost: under **History** you can look at earlier versions of a file and bring them back.

## Where things are

| To change | Open |
| --- | --- |
| Name, position, email, address, profile links, CV file | `_data/profile.yml` |
| The large sentence and the bio on the home page | `index.md` |
| Research themes (titles and texts) | `_data/research.yml` |
| Publications, working papers, policy publications | `_data/publications.yml` |
| Courses | `_data/teaching.yml` |
| Talks | `_data/talks.yml` |
| Policy roles and work in government | `_data/policy.yml` |
| Positions, education, grants, service on the CV page | `_data/cv.yml` |
| Introductions on the Research, Teaching and Policy pages; short bio on the CV page | `research.md`, `teaching.md`, `policy.md`, `cv.md` |
| Imprint and privacy text | `imprint.md` |
| The menu | `_data/navigation.yml` |
| The workshop page | `teaching/cta-idheap.md` |
| Downloads (CV, course materials) | `files/` |

Each list exists once. A paper you add to `_data/publications.yml` appears on the Research page and on the CV page; with `selected: true` it also appears on the home page. A talk you add to `_data/talks.yml` appears on the CV page; with `audience: policy` it also appears on the Policy page.

## Three rules for the files in `_data`

These files are lists in a format called YAML. It is easy to read, but strict about three things:

1. **Keep the quotation marks.** Text goes between straight double quotes: `title: "My Paper"`.
2. **Keep the indentation.** Two spaces per level, never tabs. Lines that belong to the same entry start in the same column.
3. **Copy an existing entry.** Do not type a new one from scratch. Copy a whole entry, from its `- ` line to the line before the next `- `, paste it and change the text.

Every file starts with a comment that explains its fields. In titles, venues and status lines, `*asterisks*` give italics.

## Recipes

### Add a publication

Open `_data/publications.yml`, copy an entry of the same kind and paste it above the first one of that kind. The order in the file is the order on the site.

```yaml
- title: "Title of the Paper"
  authors: "First Author, Milan Thies and Third Author"
  year: 2030
  type: article
  venue: "Name of the Journal"
  theme: eu
  selected: true
  summary: >-
    Two or three plain sentences about the paper.
  links:
    - label: "Article"
      url: "https://doi.org/..."
```

- `authors`: leave the line out for single-authored work. Your own name is set in bold automatically.
- `type`: `article`, `chapter`, `thesis`, `review` or `report`. Reports are the policy publications on the Policy page. Reviews are listed on the CV page only.
- `theme`: `state`, `adult`, `eu` or `government` (the ids in `_data/research.yml`). The theme decides under which heading on the Research page the paper appears and which colour marks it. Without a theme it goes to "Thesis and book contributions".
- `selected: true` puts the paper on the home page. Three or four is a good number.
- `summary`: your own words for readers outside the subfield. To show the full abstract as well, add an `abstract:` field in the same form; it appears behind an "Abstract" toggle.
- The first link is also the link on the title.

### Add a working paper, or mark one as published

A paper with a `status` line is listed under "Work in progress":

```yaml
- title: "Title of the Working Paper"
  with: "Co-Author Name"
  type: article
  status: "Revise and resubmit, *Journal of X*"
  theme: adult
```

When it is published: delete the `status` line, add `year`, `venue` and `links`, and move the entry up to the published papers.

### Add a talk

Open `_data/talks.yml` and add an entry anywhere. Talks are sorted by date automatically.

```yaml
- date: "2030-09-01"
  title: "Title of the Talk"
  event: "Name of the Conference"
  place: "City, Country"
```

Optional lines: `invited: true`, `audience: policy` (also lists the talk on the Policy page), `url: "https://..."` (slides or abstract).

### Add or update a course

Open `_data/teaching.yml`. Newest first; the first three courses are also shown on the home page.

```yaml
- title: "Course Title"
  kind: "Master's seminar"
  where: "Department, University"
  when: "Spring 2030"
```

To link a syllabus, upload the PDF to `files/` and add `url: "/files/syllabus.pdf"` and `link_label: "Syllabus"`.

### Add a page for a course

Copy `teaching/cta-idheap.md` to a new file in the same folder, for example `teaching/my-course.md`. At the top of the new file change `title`, `permalink` (for example `/teaching/my-course/`) and `description`, then write the page in Markdown. The list under `sections` is the table of contents in the margin; the `id` of each entry is the heading in lower case with hyphens instead of spaces. Put the materials in a folder under `files/` and link the page from `_data/teaching.yml` with `url`.

### Replace the CV

Upload the new PDF into `files/` under the same name, `cv-milan-thies.pdf` (**Add file → Upload files**, then commit). The download button keeps working because the name is the same. The CV page itself is built from the data files, so it is up to date whenever they are.

### Add a portrait

Upload a photo named `portrait.jpg` into `assets/img/`. It appears on the home page automatically. A portrait format works best (about 4:5, at least 800 pixels wide); the page crops it to that shape. To credit the photographer, fill in `portrait_credit` in `_data/profile.yml`. To remove the photo, delete the file.

### Change the home page

`index.md` holds the large sentence (`statement`, at the top) and the three paragraphs of the bio. The lists below them come from the data files: research themes from `_data/research.yml`, selected publications from `_data/publications.yml`, courses from `_data/teaching.yml`, roles from `_data/policy.yml`.

### Change a research theme, or add one

Open `_data/research.yml`. Each theme has an `id`, a `colour` (`blue`, `green`, `violet`, `red` or `brown`), a `title`, a one-sentence `teaser` for the home page and a `text` for the Research page. Papers point to a theme with `theme: <id>`. If you rename an `id`, rename it in `_data/publications.yml` too.

### Show languages on the CV page

`_data/cv.yml` ends with a commented-out `languages` block. Remove the `# ` in front of its lines, then add these two lines to the `sections` list at the top of `cv.md`:

```yaml
  - id: languages
    title: "Languages"
```

### Change the menu

`_data/navigation.yml` lists the menu entries in order. Four or five entries fit comfortably on a phone.

## When you move

If your position or university changes, update `_data/profile.yml` (role, unit, institution, email, address), the first paragraph of `index.md`, the short bio in `cv.md`, the `positions` list in `_data/cv.yml` and the `description` in `_config.yml`. The address on the imprint page follows `_data/profile.yml`.

## If something goes wrong

**The site does not change after a commit.** Wait two minutes and reload the page with a hard refresh. If it still shows the old version, the build failed, almost always because of a slip in a `_data` file (a missing quotation mark or a wrong indentation). GitHub marks the commit with a red cross and sends you an email. Open the **Actions** tab, click the failed run and look at the build log: it names the file and roughly the line. While a build fails, the live site keeps showing the last version that worked, so visitors do not see anything broken.

**To undo a change.** Open the file, click **History**, open the earlier version and copy its content back, or use **Revert** on the commit.

**To try something without touching the live site.** Create a branch (the branch menu at the top left of the file list), make your changes there and open a pull request when you are happy. Only the `main` branch is published.

## Looking at the site on your own computer (optional)

You do not need this. If you want to preview changes before they go live, install Ruby, then run in this folder:

```
bundle install
bundle exec jekyll serve
```

and open `http://localhost:4000`. The `Gemfile` exists only for this.

## How the site is put together

- Pages are Markdown files in the main folder (`index.md`, `research.md`, ...). The block between the `---` lines at the top of each holds its settings.
- Lists are in `_data/`.
- `_layouts/` and `_includes/` turn pages and lists into HTML. You only need them to change how something is displayed.
- `assets/css/main.css` is the whole design. Colours, typefaces and measures are defined at the very top, under "Settings"; change them there and they change everywhere.
- `assets/fonts/` holds the typefaces (Vollkorn and Fira Sans, SIL Open Font License), so the site loads nothing from other servers.
- `assets/img/` holds the favicon, the portrait and `social-card.png`, the picture shown when someone shares a link to the site. Its source is `_dev/social-card.html`.
- The site uses no JavaScript, no cookies and no analytics, and it needs no plugins: GitHub Pages builds it as it is.

## Course materials

`files/cta-idheap/` holds the slides, scripts, solutions and data for the Computational Text Analysis workshop. Large data (UN General Debates, 129 MB) is not stored in the repository.
