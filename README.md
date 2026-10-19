# TAVCP Academy — Next.js source

Requires Node.js 20.9 or newer.

## Run locally

```sh
npm install
npm run dev
```

Open http://localhost:3000.

## Production

```sh
npm run build
npm start
```

Deploy to a Next.js-compatible host such as Vercel. No environment variables are required.

## Edit the site

- `app/page.jsx`: page content, video embeds, course overview, curriculum and FAQs.
- `app/globals.css`: desktop and mobile styling.
- `public/interactions.js`: project tabs, mobile navigation and creative-brief interactions, loaded with next/script after hydration.
- `public/assets/`: intro video, poster and course image.

The project uses the Next.js App Router. Page markup is JSX; the existing browser interactions are retained as a standalone script for visual and behavioral parity. No server or database is required.

Enrollment links point to https://nestuge.com/coachdami01. Google Drive videos retain their existing link-viewing permissions. Google Fonts and Unsplash moodboard images require an internet connection.

This standalone source package does not change the live website and contains no hosting credentials.
