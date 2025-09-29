import { defineConfig } from 'vite';
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  root: './',
  build: {
    outDir: 'dist',
  },
  server: {
    open: true,
  },
  plugins: [
    tailwindcss(),
  ],
});