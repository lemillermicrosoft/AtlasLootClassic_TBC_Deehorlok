-- AtlasLootClassic_TBC_Deehorlok
-- Affliction Warlock BIS module for TBC Phase 3 (BT/Hyjal)
-- Curated for Deehorlok. Sourced from the Wowhead Affliction BIS guide:
--   https://www.wowhead.com/tbc/guide/affliction-warlock-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade
--
-- SEED DATA WARNING: initial item ID list is a hand-curated best-effort
-- against public Affliction P3 BIS consensus (T6 Malefic 4pc + BT/Hyjal/ZA
-- badge gear). Verify against the Wowhead guide before shipping v0.2.

local _G = getfenv(0)
local addonname = ...
local AtlasLoot = _G.AtlasLoot
local data = AtlasLoot.ItemDB:Add(addonname, 1)
local AL = AtlasLoot.Locales

local NORMAL_DIFF = data:AddDifficulty(AL["Normal"], "n", 1, nil, true)
local ITEM_TYPES = { ["Standard"] = { "Item", "Item" }, ["Collection"] = { "Set", "Item" } }
local NORMAL_ITTYPE = data:AddItemTableType(unpack(ITEM_TYPES.Standard))
local SET_ITTYPE = data:AddItemTableType(unpack(ITEM_TYPES.Collection))
local SET_CONTENT = data:AddContentType(AL["Sets"], ATLASLOOT_PVP_COLOR)

-- COMPLY WITH ATLAS LOOT DATA FORMAT.
data["WarlockAffliction_P3"] = {
    name = AL["Warlock Affliction BiS (Phase 3) - Deehorlok"],
    ContentType = SET_CONTENT,
    items = {
        -- Head: Hood of Malefic (T6)
        { name = format(AL["Head"], "1"), [NORMAL_DIFF] = { { 1, 31051 }, { 2, 30211 }, } },
        -- Shoulders: Mantle of Malefic (T6), Shoulderpads of the Silvermoon Retainer
        { name = format(AL["Shoulders"], "2"), [NORMAL_DIFF] = { { 1, 31054 }, { 2, 32587 }, { 3, 30215 }, } },
        -- Back: Shadowcaster's Drape, Cloak of the Illidari Council
        { name = format(AL["Back"], "2"), [NORMAL_DIFF] = { { 1, 32331 }, { 2, 32330 }, { 3, 29992 }, { 4, 28797 }, } },
        -- Chest: Robe of Malefic (T6), Robes of Rhonin
        { name = format(AL["Chest"], "2"), [NORMAL_DIFF] = { { 1, 31052 }, { 2, 30217 }, { 3, 30107 }, } },
        -- Wrist: Coldwraith Links, Bands of the Coming Storm, Bracers of Havok
        { name = format(AL["Wrist"], "2"), [NORMAL_DIFF] = { { 1, 32586 }, { 2, 30870 }, { 3, 29918 }, { 4, 32655 }, } },
        -- Hands: Gloves of Malefic (T6), Windshear Gauntlets
        { name = format(AL["Hands"], "2"), [NORMAL_DIFF] = { { 1, 31050 }, { 2, 30214 }, { 3, 29987 }, } },
        -- Waist: Belt of the Silent Path, Naaru-Blessed Life Rod belt
        { name = format(AL["Waist"], "2"), [NORMAL_DIFF] = { { 1, 30888 }, { 2, 32256 }, { 3, 30038 }, } },
        -- Legs: Leggings of Malefic (T6), Blackened Naaru Sliver leggings
        { name = format(AL["Legs"], "2"), [NORMAL_DIFF] = { { 1, 31053 }, { 2, 30916 }, { 3, 30218 }, } },
        -- Feet: Boots of the Divine Light, Naturewarden's Treads, Slippers of the Seacaller
        { name = format(AL["Feet"], "2"), [NORMAL_DIFF] = { { 1, 32239 }, { 2, 30067 }, { 3, 30894 }, { 4, 30037 }, } },
        -- Neck: Choker of Serrated Blades, Torc of the Sethekk Prophet
        { name = format(AL["Neck"], "2"), [NORMAL_DIFF] = { { 1, 30015 }, { 2, 32349 }, { 3, 24116 }, } },
        -- Rings: Ring of Reciprocity, Band of Devastation, Ashyen's Gift
        { name = format(AL["Rings"], "2"), [NORMAL_DIFF] = { { 1, 32527 }, { 2, 29305 }, { 3, 32247 }, { 4, 28793 }, { 5, 32385 }, } },
        -- Trinkets: Hex Shrunken Head, Shifting Naaru Sliver, Quagmirran's Eye, Icon of the Silver Crescent
        { name = format(AL["Trinkets"], "2"), [NORMAL_DIFF] = { { 1, 32483 }, { 2, 30720 }, { 3, 32488 }, { 4, 29370 }, { 5, 38290 }, } },
        -- Main Hand: Nathrezim Mindblade, Talon of Azshara
        { name = format(AL["Main Hand"], "2"), [NORMAL_DIFF] = { { 1, 32374 }, { 2, 30910 }, { 3, 32237 }, { 4, 29988 }, } },
        -- Offhand: Heart of the Pit, Chronicle of Dark Secrets
        { name = format(AL["Offhand"], "2"), [NORMAL_DIFF] = { { 1, 30872 }, { 2, 32361 }, { 3, 29270 }, } },
        -- Wand: Wand of the Forgotten Star, Nether-core Magical Rod
        { name = format(AL["Wand"], "2"), [NORMAL_DIFF] = { { 1, 32354 }, { 2, 29982 }, { 3, 32343 }, } },
    },
}
