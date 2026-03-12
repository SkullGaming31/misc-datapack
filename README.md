# Misc Datapack

Small Minecraft Java Edition datapack containing various small features.

Usage
- Put this folder in your world's `datapacks/` directory.
- In-game run `/datapack available file/misc_datapack` to load the datapack.

Create & push to GitHub (recommended name: `misc-datapack`)
Using GitHub CLI (`gh`) — run from this folder:

```bash
git init
git add .
git commit -m "Initial commit: Misc Datapack"
git branch -M main
gh repo create misc-datapack --public --source=. --remote=origin --push
```

If you prefer the GitHub website, create a repo there and then run:

```bash
git init
git add .
git commit -m "Initial commit: Misc Datapack"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git push -u origin main
```

Notes
- Recommended repo name: `misc-datapack` (no spaces).
- Add a license file if you want to publish the datapack publicly.
