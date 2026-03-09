# Crafting Recipes

This page documents every recipe added or modified by the **misc-datapack** (pack format 48, Minecraft 1.21.1).

---

## Table of Contents

- [Vanilla Recipe Overrides](#vanilla-recipe-overrides)
  - [Logs to Planks (Nerfed)](#logs-to-planks-nerfed)
  - [Charcoal via Smelting (Disabled)](#charcoal-via-smelting-disabled)
  - [Torch via Campfire](#torch-via-campfire)
  - [Snad](#snad)
- [Custom Recipes](#custom-recipes)
  - [Chainmail Armor](#chainmail-armor)
  - [Campfire Cooking](#campfire-cooking)
  - [Slabs to Planks / Blocks (2-slot)](#slabs-to-planks--blocks-2-slot)
  - [Slabs to Planks / Blocks (2×2)](#slabs-to-planks--blocks-22)
  - [Planks to Sticks](#planks-to-sticks)
  - [Stripped Oak Log to Planks](#stripped-oak-log-to-planks)
- [Modern Industrialization Compatibility](#modern-industrialization-compatibility)

---

## Vanilla Recipe Overrides

These recipes replace vanilla defaults and are stored under `data/minecraft/recipe/`.

### Logs to Planks (Nerfed)

Vanilla converts 1 log into 4 planks. This datapack **overrides** all log-to-planks recipes to yield only **2 planks** per log, making wood a more scarce resource.

| Input | Output | Type |
|-------|--------|------|
| Any Acacia Log (tag `#minecraft:acacia_logs`) | 2× Acacia Planks | Crafting (Shapeless) |
| Bamboo | 1× Bamboo Planks | Crafting (Shapeless) |
| Any Birch Log (tag `#minecraft:birch_logs`) | 2× Birch Planks | Crafting (Shapeless) |
| Any Cherry Log (tag `#minecraft:cherry_logs`) | 2× Cherry Planks | Crafting (Shapeless) |
| Any Crimson Stem (tag `#minecraft:crimson_stems`) | 2× Crimson Planks | Crafting (Shapeless) |
| Any Dark Oak Log (tag `#minecraft:dark_oak_logs`) | 2× Dark Oak Planks | Crafting (Shapeless) |
| Any Jungle Log (tag `#minecraft:jungle_logs`) | 2× Jungle Planks | Crafting (Shapeless) |
| Any Mangrove Log (tag `#minecraft:mangrove_logs`) | 2× Mangrove Planks | Crafting (Shapeless) |
| Any Oak Log (tag `#minecraft:oak_logs`) | 2× Oak Planks | Crafting (Shapeless) |
| Any Spruce Log (tag `#minecraft:spruce_logs`) | 2× Spruce Planks | Crafting (Shapeless) |
| Any Warped Stem (tag `#minecraft:warped_stems`) | 2× Warped Planks | Crafting (Shapeless) |

> **Note:** The `data/minecraft/recipe/planks/` subfolder contains identical copies of these overrides used as backups / compatibility entries.

---

### Charcoal via Smelting (Disabled)

All vanilla smelting recipes that produce charcoal from logs, stripped logs, wood, and stripped wood are **disabled** by replacing their ingredients with `minecraft:barrier` (an unobtainable item in survival). Charcoal is instead produced by the [Charcoal feature](../data/skullgaminghq/function/charcoal/) — place a log on a lit campfire and wait ~6 seconds.

| Disabled Recipe | Ingredient Replaced With |
|-----------------|--------------------------|
| `charcoal.json` | Barrier |
| `charcoal_from_logs.json` | Barrier |
| `charcoal_from_stripped_logs.json` | Barrier |
| `charcoal_from_stripped_wood.json` | Barrier |
| `charcoal_from_wood.json` | Barrier |

---

### Torch via Campfire

| Input | Output | Type | Cook Time |
|-------|--------|------|-----------|
| Stick | Torch | Campfire Cooking | 600 ticks (30 s) |

**Crafting pattern:** Place a stick on a campfire.

---

### Snad

Requires the [Snad mod](https://www.curseforge.com/minecraft/mc-mods/snad).

**Recipe (Crafting Table — Shaped):**

```
[ Suspicious Sand ][ Suspicious Sand ][ Bone Meal ]
```

| Input | Output |
|-------|--------|
| 2× Suspicious Sand + 1× Bone Meal | 1× Snad |

---

## Custom Recipes

These recipes are stored under `data/skullgaminghq/recipe/`.

### Chainmail Armor

All four chainmail armor pieces can now be crafted by surrounding the corresponding iron armor piece with Iron Bars in a crafting table. Each piece is pre-enchanted with **Blast Protection I** and has **+6 armor** applied via an attribute modifier.

**Pattern (all four pieces share the same 3×3 layout):**

```
[ Iron Bars ][ Iron Bars ][ Iron Bars ]
[ Iron Bars ][ Armor Piece ][ Iron Bars ]
[ Iron Bars ][ Iron Bars ][ Iron Bars ]
```

| Center Item (C) | Result | Armor Bonus | Enchantment |
|-----------------|--------|-------------|-------------|
| Iron Helmet | Chainmail Helmet | +6 Armor (head) | Blast Protection I |
| Iron Chestplate | Chainmail Chestplate | +6 Armor (chest) | Blast Protection I |
| Iron Leggings | Chainmail Leggings | +6 Armor (legs) | Blast Protection I |
| Iron Boots | Chainmail Boots | +6 Armor (feet) | Blast Protection I |

> **Cost:** 8× Iron Bars + 1× Iron Armor Piece → 1× Chainmail Armor Piece

---

### Campfire Cooking

#### Torch Arrow

Place a regular Arrow on a campfire to create a **Torch Arrow** — a special tipped arrow that places a torch when it lands in the ground (handled by the `torch_arrow` function feature).

| Input | Output | Type | Cook Time |
|-------|--------|------|-----------|
| Arrow | Torch Arrow | Campfire Cooking | 600 ticks (30 s) |

> The Torch Arrow has a custom dark-red color (`#520000`) and no potion effect tooltip.

#### Rotten Flesh to Leather

Campfire-cook rotten flesh to obtain leather, providing a use for zombie drops.

| Input | Output | Type | Cook Time |
|-------|--------|------|-----------|
| Rotten Flesh | Leather | Campfire Cooking | 4800 ticks (4 min) |

---

### Slabs to Planks / Blocks (2-slot)

Place **2 slabs stacked vertically** in a crafting grid (no table needed) to recover **1 full plank or block**.

```
[ Slab ]
[ Slab ]
```

| Input (×2) | Output (×1) |
|------------|-------------|
| Acacia Slab | Acacia Planks |
| Bamboo Slab | Bamboo Planks |
| Birch Slab | Birch Planks |
| Cherry Slab | Cherry Planks |
| Crimson Slab | Crimson Planks |
| Dark Oak Slab | Dark Oak Planks |
| Jungle Slab | Jungle Planks |
| Mangrove Slab | Mangrove Planks |
| Oak Slab | Oak Planks |
| Spruce Slab | Spruce Planks |
| Warped Slab | Warped Planks |

---

### Slabs to Planks / Blocks (2×2)

Place **4 slabs in a 2×2 square** in a crafting table to recover **2 full planks or blocks**.

```
[ Slab ][ Slab ]
[ Slab ][ Slab ]
```

| Input (×4) | Output (×2) |
|------------|-------------|
| Acacia Slab | Acacia Planks |
| Bamboo Mosaic Slab | Bamboo Mosaic |
| Bamboo Slab | Bamboo Planks |
| Birch Slab | Birch Planks |
| Brick Slab | Bricks |
| Cherry Slab | Cherry Planks |
| Cobblestone Slab | Cobblestone |
| Crimson Slab | Crimson Planks |
| Dark Oak Slab | Dark Oak Planks |
| Jungle Slab | Jungle Planks |
| Mangrove Slab | Mangrove Planks |
| Oak Slab | Oak Planks |
| Smooth Stone Slab | Smooth Stone |
| Spruce Slab | Spruce Planks |
| Stone Brick Slab | Stone Bricks |
| Stone Slab | Stone |
| Warped Slab | Warped Planks |

---

### Planks to Sticks

Place **2 planks of the same wood type stacked vertically** in a crafting grid to produce **2 sticks**.

```
[ Planks ]
[ Planks ]
```

| Input (×2) | Output (×2) |
|------------|-------------|
| Acacia Planks | Sticks |
| Bamboo Planks | Sticks |
| Birch Planks | Sticks |
| Cherry Planks | Sticks |
| Crimson Planks | Sticks |
| Dark Oak Planks | Sticks |
| Jungle Planks | Sticks |
| Mangrove Planks | Sticks |
| Oak Planks | Sticks |
| Spruce Planks | Sticks |
| Warped Planks | Sticks |

---

### Stripped Oak Log to Planks

Place a single **Stripped Oak Log** in any crafting slot to receive **4 Oak Planks** — slightly more efficient than the nerfed log-to-planks recipe as a reward for pre-processing logs.

| Input | Output | Type |
|-------|--------|------|
| Stripped Oak Log | 4× Oak Planks | Crafting (Shaped, 1-slot) |

---

## Modern Industrialization Compatibility

These recipes are stored under `data/modern_industrialization/recipes/vanilla_recipes/` and apply only when the [Modern Industrialization](https://modrinth.com/mod/modern-industrialization) mod is installed.

| Recipe | Effect |
|--------|--------|
| `torch.json` | Disables the MI torch crafting recipe (empty pattern). |
| `lignite_torch.json` | Disables the MI lignite torch recipe (uses barrier as ingredient). |

Additionally, the `skullgaminghq:remove_mi_torch` recipe allows players to **destroy** a Modern Industrialization Torch by placing it in any crafting slot — it converts to air (effectively deleting the item).

| Input | Output | Type |
|-------|--------|------|
| Modern Industrialization Torch | (nothing) | Crafting (Shapeless) |
