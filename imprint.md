---
layout: page
title: "Imprint and privacy"
permalink: /imprint/
description: "Imprint and privacy notice for the website of Milan Thies."
---

## Imprint

Responsible for the content of this website:

{{ site.data.profile.name }}  
{% for line in site.data.profile.address %}{{ line }}  
{% endfor %}[{{ site.data.profile.email }}](mailto:{{ site.data.profile.email }})

This is my personal academic website. The views expressed here are my own and not those of my employer. I check external links when I add them, but I am not responsible for the content of other websites.

## Privacy

This website sets no cookies and uses no analytics, tracking or embedded content from other providers. Fonts and styles are served from this site.

The site is hosted on GitHub Pages. When you open a page, GitHub, as the hosting provider, processes technical data such as your IP address in order to deliver the page and to keep the service secure. I have no access to these data. Details are in the [GitHub privacy statement](https://docs.github.com/en/site-policy/privacy-policies/github-general-privacy-statement).

If you write to me by email, I use your message only to answer it.

## Credits

The site is set in Vollkorn by Friedrich Althausen and Fira Sans by Carrois Apostrophe and Erik Spiekermann, both published under the SIL Open Font License.
{%- if site.data.profile.portrait_credit and site.data.profile.portrait_credit != "" %} {{ site.data.profile.portrait_credit }}.{% endif %}
