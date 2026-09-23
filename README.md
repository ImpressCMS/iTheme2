# iTheme 2.0

iTheme was the original theme that shipped with ImpressCMS 1.0. Now, 10 years later the web has evolved considerably, and this is the follow-up version, based on the Bootstrap 5 framework.

## How to use

... coming soon ...

## Template components

All reusable pieces live in `src/templates/` and are pulled in with
`<{includeq file="$theme_name/templates/<file>" param=value}>`. Every file starts with a
`<{* ... *}>` comment listing its parameters and defaults.

Module and block templates render before `theme.html`, so they must start with
`<{assign var=theme_name value=$xoTheme->folderName}>` before using components.

| Component | Purpose |
|---|---|
| `head`, `header`, `footer` | Page chrome |
| `page_column`, `page_zone_row` | Layout: side columns and top/bottom block rows |
| `blockszone`, `blockszone_menu` | Render a zone of blocks as cards / as navbar items |
| `components/card` | Bootstrap card with optional header/footer |
| `components/link`, `components/nav_links` | Links with active state, link lists |
| `components/button` | Bootstrap button |
| `components/form_field`, `form_check`, `form_hidden`, `form_row` | Form building blocks |
| `components/login_form` | Login form shared by the login block and login page |

Smarty 2 include parameters are inherited by nested includes, so when a component calls another
one it passes every parameter explicitly (`param=''` to reset).
