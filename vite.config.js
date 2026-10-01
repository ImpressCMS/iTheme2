import { defineConfig } from 'vite'
import icmsTheme from './build/vite-plugin-icms-theme/index.js'

export default defineConfig({
    plugins: [
        icmsTheme({
            entries: ['js/theme.js'],
            exclude: ['index.html', 'index_admin.html', 'index_content.html'],
        }),
    ],
    css: {
        preprocessorOptions: {
            scss: {
                quietDeps: true,
                silenceDeprecations: ['import', 'global-builtin', 'color-functions', 'if-function'],
            },
        },
    },
    server: {
        port: 8080,
    },
})
