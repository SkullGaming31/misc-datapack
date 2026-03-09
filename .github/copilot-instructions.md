# Copilot Instructions — Misc Datapack

## Overview

This is a Minecraft Java Edition datapack targeting **pack format 48 (MC 1.21.1)** — it is intended for Minecraft 1.21.1 only. The primary namespace is `skullgaminghq`. The datapack adds several independent gameplay features through mcfunction, recipes, advancements, and predicates.

## Architecture

### Load / Tick Entry Points

`minecraft:tags/function/load.json` and `minecraft:tags/function/tick.json` are the actual entry points — they reference `skullgaminghq:load` and `skullgaminghq:tick`. **Do not add new features directly to these tag files without also wiring the function into the main dispatcher.**

`skullgaminghq:tick` is the **main dispatcher** — it detects feature triggers (entities, items in frames, etc.) and delegates to each feature's own functions. New tick-based features should be called from here.

### Feature Folders

Each feature lives in its own subfolder under `data/skullgaminghq/function/`:

| Folder | Feature |
|---|---|
| `charcoal/` | Logs on lit campfire → charcoal after ~6 seconds |
| `strip/` | Right-click stripped oak log with axe → oak planks |
| `phantom_pickup/` | Phantoms carry players (3–6 s, then cooldown) |
| `blade/` | Sword in item frame deals directional damage |
| `fan/` | Wind charge in item frame pushes nearby entities |
| `path/` | Speed boost while walking on `#skullgaminghq:fast_blocks` |
| `torch_arrow/` | Tipped arrow (custom color 5373952) placed in ground → torch |

Advancements, predicates, and recipes follow the same folder-per-feature pattern in their respective directories.

### Scoreboard Conventions

| Objective | Purpose |
|---|---|
| `skull_cf_ticks` | Campfire tick counter for charcoal conversion |
| `skull_timer` | General scheduling timer |
| `skull_stack_count` | Tracks item stack size before conversion |
| `carry_time` | How long a phantom has been carrying a player |
| `cooldown` | Per-phantom cooldown after dropping a player |

All objectives are created in `skullgaminghq:load`. Custom objectives use the `skull_` prefix; feature-specific ones (e.g., `carry_time`) are named plainly.

### Entity Tag Conventions

Entity tags follow this pattern:

- `processed` — phantom has been evaluated this session
- `id_grabber` — phantom has been converted to a grabber
- `skull_strip_target` — interaction entity placed on a stripped oak log
- `skull_new_charcoal` — temporary tag on charcoal items mid-conversion
- `blade_target` — entities within blade damage range

### Advancement-as-Trigger Pattern

Several features use advancements with **impossible triggers** to drive function calls (rather than direct tick detection). For example:
- `strip_again_oak.json` triggers `strip/on_click` when a player uses an axe on a stripped log
- Charcoal and torch-arrow advancements use `impossible` as root nodes for tree structure only

When adding a feature that reacts to a player action, check if an advancement trigger is more appropriate than polling in `tick`.

### Interaction Entity Pattern

The `strip/` feature places **invisible interaction entities** (size 1.2×1.2, `response:1b`) on stripped oak log surfaces to capture right-clicks. Use `spawn_nearby.mcfunction` as a reference when implementing clickable world-space targets.

### Tick Throttling

The charcoal system is throttled to run every 5 ticks using a `$tick` dummy score. Use the same pattern for any feature that doesn't need to run every game tick.

## File Naming

- Functions: `snake_case` — helpers prefixed with `_` (e.g., `_give.mcfunction`)
- Recipes: `descriptive_name` (e.g., `slabs_to_oak_planks`, `torch_arrow`)
- Scoreboards: `skull_` prefix for datapack-specific objectives
- Entity tags: short, lowercase descriptors; `skull_` prefix where collision is a risk

## Namespace Usage

- `skullgaminghq` — all custom content
- `minecraft` — recipe overrides and vanilla tag/loot table overrides only
- `modern_industrialization` — recipe integration stub for the MI mod

When overriding vanilla behavior, place files under `data/minecraft/` mirroring the vanilla path (e.g., `data/minecraft/recipe/charcoal.json`).

## Testing

Load the datapack in a world with `/reload`. Use `/datapack list` to confirm it's enabled. The load function prints a chat message with a GitHub link confirming successful initialization.
