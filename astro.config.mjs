// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://ichem30.github.io',
  base: '/site',
  output: 'static',
  build: {
    assets: '_astro'
  }
});
