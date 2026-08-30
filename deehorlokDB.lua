-- AtlasLootClassic_TBC_Deehorlok
-- Affliction Warlock BIS module for TBC Phase 3 (BT/Hyjal)
-- Curated for Deehorlok.
--
-- Sourced from the Wowhead Affliction Warlock BT/Hyjal Phase 3 BIS guide:
-- https://www.wowhead.com/tbc/guide/affliction-warlock-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade
-- Item IDs cross-referenced with Hoizame/AtlasLootClassic data-tbc.lua.

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

data["WarlockAffliction_P3"] = {
    name = AL["Warlock Affliction BiS (Phase 3) - Deehorlok"],
    ContentType = SET_CONTENT,
    items = {
        -- Head
        { name = format(AL["Head"], "1"), [NORMAL_DIFF] = {
            { 1, 31051 }, -- Hood of the Malefic (T6 - Archimonde, Hyjal)
            { 2, 32525 }, -- Cowl of the Illidari High Lord (Illidan, BT)
            { 3, 30212 }, -- Hood of the Corruptor (Lady Vashj, SSC - T5)
        } },
        -- Neck
        { name = format(AL["Neck"], "2"), [NORMAL_DIFF] = {
            { 1, 32349 }, -- Translucent Spellthread Necklace (Essence of Anger, BT)
            { 2, 30015 }, -- The Sun King's Talisman (Kael'thas, TK)
            { 3, 24116 }, -- Eye of the Night (JC - buff neck)
        } },
        -- Shoulders
        { name = format(AL["Shoulders"], "3"), [NORMAL_DIFF] = {
            { 1, 31054 }, -- Mantle of the Malefic (T6 - Mother Shahraz, BT)
            { 2, 32338 }, -- Blood-cursed Shoulderpads (Gurtogg Bloodboil, BT)
            { 3, 30884 }, -- Hatefury Mantle (Anetheron, Hyjal)
            { 4, 32587 }, -- Mantle of Nimble Thought (Tailoring)
        } },
        -- Back
        { name = format(AL["Back"], "4"), [NORMAL_DIFF] = {
            { 1, 32590 }, -- Nethervoid Cloak (BT trash)
            { 2, 32524 }, -- Shroud of the Highborne (Illidan, BT)
            { 3, 32331 }, -- Cloak of the Illidari Council (Illidari Council, BT)
            { 4, 28766 }, -- Ruby Drape of the Mysticant (Prince Malchezaar, Kara)
        } },
        -- Chest
        { name = format(AL["Chest"], "5"), [NORMAL_DIFF] = {
            { 1, 30107 }, -- Vestments of the Sea-Witch (Lady Vashj, SSC)
            { 2, 31052 }, -- Robe of the Malefic (T6 - Illidan, BT)
            { 3, 30913 }, -- Robes of Rhonin (Archimonde, Hyjal)
            { 4, 32327 }, -- Robe of the Shadow Council (Teron Gorefiend, BT)
        } },
        -- Wrist
        { name = format(AL["Wrist"], "9"), [NORMAL_DIFF] = {
            { 1, 32586 }, -- Bracers of Nimble Thought (Tailoring)
            { 2, 32270 }, -- Focused Mana Bindings (Shade of Akama, BT)
            { 3, 30870 }, -- Cuffs of Devastation (Rage Winterchill, Hyjal)
        } },
        -- Hands
        { name = format(AL["Hands"], "10"), [NORMAL_DIFF] = {
            { 1, 31050 }, -- Gloves of the Malefic (T6 - Azgalor, Hyjal)
            { 2, 30725 }, -- Anger-Spark Gloves (Doomwalker)
            { 3, 28780 }, -- Soul-Eater's Handwraps (Magtheridon)
            { 4, 28507 }, -- Handwraps of Flowing Thought (Attumen, Kara)
        } },
        -- Waist
        { name = format(AL["Waist"], "6"), [NORMAL_DIFF] = {
            { 1, 30888 }, -- Anetheron's Noose (Anetheron, Hyjal)
            { 2, 32256 }, -- Waistwrap of Infinity (Supremus, BT)
            { 3, 30064 }, -- Cord of Screaming Terrors (Lurker Below, SSC)
        } },
        -- Legs
        { name = format(AL["Legs"], "7"), [NORMAL_DIFF] = {
            { 1, 30916 }, -- Leggings of Channeled Elements (Kaz'rogal, Hyjal)
            { 2, 32367 }, -- Leggings of Devastation (Mother Shahraz, BT)
            { 3, 31053 }, -- Leggings of the Malefic (T6 - Illidari Council, BT)
            { 4, 30734 }, -- Leggings of the Seventh Circle (Doom Lord Kazzak)
        } },
        -- Feet
        { name = format(AL["Feet"], "8"), [NORMAL_DIFF] = {
            { 1, 32239 }, -- Slippers of the Seacaller (Naj'entus, BT)
            { 2, 30894 }, -- Blue Suede Shoes (Kaz'rogal, Hyjal)
        } },
        -- Rings
        { name = format(AL["Rings"], "11"), [NORMAL_DIFF] = {
            { 1, 32527 }, -- Ring of Ancient Knowledge (BT trash, x2!)
            { 2, 32247 }, -- Ring of Captured Storms (Naj'entus, BT)
            { 3, 29305 }, -- Band of the Eternal Sage (Scale of the Sands quest)
            { 4, 30109 }, -- Ring of Endless Coils (Lady Vashj, SSC)
            { 5, 28753 }, -- Ring of Recurrence (Chess Event, Kara)
            { 6, 28793 }, -- Band of Crimson Fury (Magtheridon)
        } },
        -- Trinkets
        { name = format(AL["Trinkets"], "12"), [NORMAL_DIFF] = {
            { 1, 32483 }, -- The Skull of Gul'dan (Illidan, BT) - top priority!
            { 2, 27683 }, -- Quagmirran's Eye (Heroic Slave Pens)
            { 3, 29370 }, -- Icon of the Silver Crescent (Badges)
            { 4, 38290 }, -- Dark Iron Smoking Pipe (Brewfest)
            { 5, 23207 }, -- Mark of the Champion (Naxx - vs Demons/Undead)
            { 6, 31856 }, -- Darkmoon Card: Crusade
            { 7, 30626 }, -- Sextant of Unstable Currents (Fathom-Lord, SSC)
        } },
        -- Main Hand
        { name = format(AL["Main Hand"], "13"), [NORMAL_DIFF] = {
            { 1, 30910 }, -- Tempest of Chaos (Archimonde, Hyjal)
            { 2, 32237 }, -- The Maelstrom's Fury (Naj'entus, BT)
            { 3, 30095 }, -- Fang of the Leviathan (Leotheras, SSC)
            { 4, 30723 }, -- Talon of the Tempest (Doomwalker)
            { 5, 28770 }, -- Nathrezim Mindblade (Prince Malchezaar, Kara)
        } },
        -- Two-Hand
        { name = format(AL["Two-Handed"], "14"), [NORMAL_DIFF] = {
            { 1, 32374 }, -- Zhar'doom, Greatstaff of the Devourer (Illidan, BT)
        } },
        -- Offhand
        { name = format(AL["Offhand"], "15"), [NORMAL_DIFF] = {
            { 1, 30872 }, -- Chronicle of Dark Secrets (Rage Winterchill, Hyjal)
            { 2, 32361 }, -- Blind-Seer's Icon (Shade of Akama, BT)
            { 3, 30049 }, -- Fathomstone (Hydross, SSC)
            { 4, 28734 }, -- Jewel of Infinite Possibilities (Netherspite, Kara)
        } },
        -- Wand
        { name = format(AL["Wand"], "16"), [NORMAL_DIFF] = {
            { 1, 29982 }, -- Wand of the Forgotten Star (High Astromancer Solarian, TK)
            { 2, 32343 }, -- Wand of Prismatic Focus (Gurtogg Bloodboil, BT)
            { 3, 28783 }, -- Eredar Wand of Obliteration (Magtheridon)
            { 4, 28673 }, -- Tirisfal Wand of Ascendancy (Shade of Aran, Kara)
        } },
    },
}
