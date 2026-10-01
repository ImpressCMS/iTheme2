# iTheme 2.0

iTheme was the original theme that shipped with ImpressCMS 1.0. Now, 10 years later the web has evolved considerably, and this is the follow-up version, based on the Bootstrap 5 framework.

## How to use

Download a release, or build the theme yourself (see below), and copy the theme folder to
`htdocs/themes/iTheme2` of your ImpressCMS site. Then select it in *System Admin > Preferences > General Settings*.

## Development

The sources live in `src/`; the installable theme is built into `dist/`.

| Path | Contents |
| --- | --- |
| `src/theme.html`, `src/templates/` | Smarty templates of the theme |
| `src/modules/` | Module template overrides |
| `src/js/theme.js` | Entry point: Bootstrap JS, Bootstrap Icons and the theme styles |
| `src/scss/theme.scss`, `src/css/` | Theme styles (Bootstrap is compiled from its Sass sources) |
| `src/index*.html` | Static mockups, only used by the dev server |

Requires Node.js 20.19+ or 22.12+.

```bash
npm install
```

Build the theme into `dist/` (bundled and minified CSS/JS, minified templates):

```bash
npm run build
```

Rebuild on every change, straight into a local ImpressCMS installation:

```bash
ICMS_THEME_OUT_DIR=/path/to/htdocs/themes/iTheme2 npm run watch
```

Preview the static mockups with hot reloading on http://localhost:8080:

```bash
npm run dev
```

Run the tests and a build:

```bash
npm test
```

Templates include the bundles with an asset directive, which the build replaces with the hashed
`<link>`/`<script>` tags:

```html
<!-- vite: js/theme.js -->
```

The build is done by a generic Vite plugin in [`build/vite-plugin-icms-theme`](build/vite-plugin-icms-theme/README.md)
that other ImpressCMS themes can reuse.
