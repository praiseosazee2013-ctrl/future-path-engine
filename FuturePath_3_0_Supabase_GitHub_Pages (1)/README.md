# FuturePath 3.0 — Supabase + GitHub Pages

This is a plain HTML/CSS/JavaScript version. No Next.js, React or npm is required.

## Files
- index.html — website
- style.css — design
- app.js — Supabase auth/database logic
- config.js — Supabase project URL + publishable key
- supabase_schema.sql — reference schema

## Before uploading
Open `config.js` and replace:
`PASTE_YOUR_SB_PUBLISHABLE_KEY_HERE`
with your Supabase `sb_publishable_...` key.

Do NOT use an `sb_secret_...` or `service_role` key in this site.

The Project URL is already configured for your FuturePath Supabase project.

## Database
The app uses the tables you already created:
- profiles
- revision_progress
- saved_careers
- achievements

RLS policies should remain enabled.

## Supabase Auth
If email confirmation is enabled, students must confirm their email before logging in. Add your GitHub Pages address to Supabase Auth URL/redirect settings.

Your GitHub Pages address will be:
`https://YOUR-GITHUB-USERNAME.github.io/future-path-engine/`

## Upload
Upload these files to the root of your GitHub repository. Make sure `index.html` is exactly that name.

## Security
RLS restricts rows to the signed-in user's ID. FuturePath avoids asking for full names or dates of birth by default.

This starter lets the browser update a student's own XP. For a production school deployment, XP awards should eventually be moved to a server-side function/RPC so users cannot manipulate their own XP.
