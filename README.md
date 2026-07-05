# 4C Documentation Site

Documentation for the 4C programming language and utilities, built with
[Hugo](https://gohugo.io/) and the [Hextra](https://github.com/imfing/hextra)
theme. Full-text search is the primary feature.

## Requirements

- **Hugo Extended** `0.163.3` or newer (the `extended` build is required for
  Hextra's SCSS)
- **Go** (Hextra is imported as a Hugo module, so Go must be installed to
  fetch it)

Check your install:

```bash
hugo version   # must show "+extended"
go version
```

## Local Development

```bash
hugo server
```

Open http://localhost:1313/. The site rebuilds automatically as you edit.

> First build can take ~1 minute because of the page count; subsequent
> edits are near-instant thanks to Fast Render Mode.

## Building the Static Site

```bash
hugo --minify
```

Output goes to `public/`. Preview it the correct way (opening the HTML files
directly breaks relative paths):

```bash
cd public && python3 -m http.server 8000   # then open http://localhost:8000
```

## Project Structure

```
content/docs/     # documentation pages (Markdown) — sidebar is built from this
assets/           # custom CSS/JS
static/           # images, favicon, CNAME
i18n/en.yaml      # footer copyright text
layouts/          # theme overrides (optional)
hugo.yaml         # site configuration
go.mod            # Hextra module dependency
```

The left sidebar is generated automatically from the folder structure under
`content/docs/`. Use `_index.md` files for section landing pages and the
`weight` front-matter field to control ordering.

## Converting Legacy HTML Docs

Legacy 4C HTML pages are converted to Hugo Markdown with `4c_to_hugo.py`.
It auto-detects the page format (PCL `<DL>` pages, labeled-line Util pages,
and free-form prose), preserves all text, and rewrites internal links as
Hugo `{{< ref >}}` shortcodes.

```bash
pip install beautifulsoup4
python3 4c_to_hugo.py /path/to/legacy-html content/docs
```

After conversion, review any pages the parser flagged:

```bash
grep -rl "Additional Notes" content/docs
```

Check for unresolved internal links:

```bash
HUGO_REFLINKSERRORLEVEL=warning hugo --minify 2>&1 | grep -i "ref"
```

## Search

Full-text search (FlexSearch) is configured in `hugo.yaml` under
`params.search`. It indexes full page content with prefix matching. To keep a
page out of the index, add `excludeSearch: true` to its front matter.

## Front Matter

Each page uses:

```yaml
---
title: "Page Title"
description: "Short summary"
weight: 1
draft: false
---
```

Useful per-page overrides: `toc: false`, `excludeSearch: true`,
`sidebar: { exclude: true }`, `contextMenu: false`.

## Deployment (GitHub Pages)

Deployment is automated via GitHub Actions (`.github/workflows/hugo.yaml`).
On every push to `main`, the site is built and published to GitHub Pages.

Setup checklist:

1. Repo **Settings → Pages → Source** = **GitHub Actions**
2. The workflow installs Hugo Extended **and Go** (required for the Hextra
   module) and injects the correct `baseURL` automatically
3. Push to `main`; watch the **Actions** tab; the live URL appears under
   Settings → Pages

The `.nojekyll` file must remain in the repo root so GitHub Pages serves
Hugo's output without Jekyll processing.

For a custom domain, add a `CNAME` file in `static/` containing the domain
and configure it under Settings → Pages.

