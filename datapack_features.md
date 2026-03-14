# Misc_Datapack — Feature Summary

This datapack provides recipe additions, compatibility helpers, utility functions, and small gameplay features across multiple namespaces.

**Minecraft (vanilla overrides & additions):**
- **Recipes:** Adds or overrides many crafting and campfire recipes, including [campfire.json](data/minecraft/recipe/campfire.json), charcoal recipes (`charcoal*.json`), planks conversions (`data/minecraft/recipe/planks/`), `stick.json`, and utility recipes such as `stripped_oak_log_to_plank.json`.
- **Loot tables:** Entity loot modification for Evoker: [data/minecraft/loot_table/entities/evoker.json](data/minecraft/loot_table/entities/evoker.json).
- **Function tags:** Registers datapack entrypoints in [data/minecraft/tags/function/load.json](data/minecraft/tags/function/load.json) and [data/minecraft/tags/function/tick.json](data/minecraft/tags/function/tick.json).

**modern_industrialization (third-party namespace):**
- Provides vanilla-compat recipes in `data/modern_industrialization/recipe/vanilla_recipes/` (examples: `lignite_torch.json`, `torch.json`).

**railcraft (third-party namespace):**
- Adds compatibility/utility recipes under `data/railcraft/recipe/` (e.g., `iron_tank_wall.json`, `water_tank_siding.json`).

**snad (third-party namespace):**
- Adds slab/sand-like recipes: `red_snad.json`, `snad.json`, `suol_snad.json` in `data/snad/recipe/`.

**skullgaminghq (custom namespace — features added by this datapack):**
- **Functions:** Entrypoints `load.mcfunction` and `tick.mcfunction`; feature folders include `charcoal/`, `torch_arrow/`, `blade/`, `fan/`, `path/`, `phantom_pickup/`, and `strip/` (each contains focused helper mcfunction files).
- **Recipes:** Custom recipes in `data/skullgaminghq/recipe/` such as `torch_arrow.json`, `charcoal.json`, `chainmail_*` variants, `horse_saddle.json`, `zombie_flesh_to_leather.json`, plus organized subfolders `slabs/`, `sticks/`, `stripped_logs/`, and `spawner/` (spawner/egg conversions).
- **Predicates:** `data/skullgaminghq/predicate/` contains predicates like `holding_axe.json`, `fast_path_moving/on_path.json`, and `phantom_pickup/convert_chance.json` used by advancements and functions.
- **Advancements & Tags:** Several advancements (strip/charcoal/torch_arrow) and tags (`data/skullgaminghq/tags/`) used by features.

---

If you want, I can also:
- Validate all JSON files and report schema errors.
- Produce a changelog-style list of added/modified files with links.
- Add example `item_modifier/` files (mentioned in docs but not present).

Files referenced above are in the repository under their paths; open them for details.
