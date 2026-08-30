# PLAN — AtlasLootClassic_TBC_Deehorlok

## Vision

An AtlasLoot submodule that surfaces Deehorlok's Affliction Warlock BIS list for TBC Phase 3 (BT/Hyjal) directly inside the AtlasLoot UI, and (via the AtlasBIStooltips addon) inside item tooltips. Scoped to Affliction only, Phase 3 only — no other specs, no other phases, no clutter.

## Scope (MVP - v0.2.0)

1. **Loads as an AtlasLoot module.** `.toc` declares `Dependencies: AtlasLootClassic`, `LoadOnDemand: 1`, `X-AtlasLootClassic-LootModule: 1`. Confirm it appears in AtlasLoot's BIS panel.
2. **One BIS table:** `WarlockAffliction_P3` under the Sets content type. Slot ordering matches sibling P3 modules.
3. **Item IDs verified against the Wowhead Affliction P3 BIS guide.** Seed data is best-effort; a follow-up pass reconciles every slot against the guide before v0.2.0.
4. **AtlasBIStooltips picks it up.** Verify in-game that hovering a listed item shows the BIS annotation.
5. **AtlasLoot phase selector regression investigated.** Separate deliverable — figure out why the phase dropdown disappeared and whether it's a saved-var/UI bug or a legit removed feature. Fix or workaround so this module is reachable.

## Technical Tasks

- [ ] Reconcile every item ID in `deehorlokDB.lua` against the Wowhead guide (Wowhead is currently 403'ing our fetches — grab the item list manually or via mirror).
- [ ] Add a minimal locale entry for `AL["Warlock Affliction BiS (Phase 3) - Deehorlok"]` so the AtlasLoot UI shows a real string (currently falls back to the key).
- [ ] Investigate `AtlasLootClassic` phase selector regression: check saved variables, check if a recent AtlasLoot update removed the UI, check whether the module needs to register a phase somewhere for it to show.
- [ ] Test in-game: enable module, browse AtlasLoot → Sets → verify Deehorlok Aff P3 shows all 16 slots.
- [ ] Test AtlasBIStooltips: hover a listed item, verify BIS annotation appears.

## QA

- Loads without Lua errors alongside AtlasLootClassic + all four `AtlasLootClassic_TBC_Phase_*` siblings.
- No collisions with existing `WarlockAffliction_P3` keys (grep the sibling `phasethreeDB.lua` — if it also defines Affliction P3, we may need a distinct key like `Deehorlok_WarlockAff_P3`).
- Uninstalling the module leaves the other AtlasLoot modules working.

## Post-MVP (v0.3+)

- Multiple specs (Demonology, Destruction) — only if Deehorlok asks.
- Multiple phases (Phase 4 SWP when relevant) — only if Deehorlok asks.
- Personal notes / gear-swap alternates.

## Deliverables

- Public GitHub repo: `lemillermicrosoft/AtlasLootClassic_TBC_Deehorlok`
- CurseForge project (tracking issue filed)
- Symlinked into `C:\Program Files (x86)\World of Warcraft\_anniversary_\Interface\AddOns\` for local dev testing
