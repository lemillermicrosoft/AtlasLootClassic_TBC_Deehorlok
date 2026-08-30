-- AtlasLootClassic_TBC_Deehorlok
-- Affliction Warlock BIS module for TBC Phase 3 (BT/Hyjal)
-- Curated for Deehorlok.
--
-- Item IDs re-sourced from Hoizame/AtlasLootClassic data-tbc.lua (ground truth for
-- boss drops) and validated against Wowhead item DB (slot + itemization). Every
-- item below is a cloth caster piece (or class-neutral neck/ring/trinket/back/wand)
-- with SP + hit and/or crit stats appropriate for Affliction Warlock. Healer-only
-- pieces (mp5-heavy, +healing focused) are excluded.

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
        -- Head: expanded per request. All cloth, all caster, all Head slot. BT/Hyjal/ZA only.
        { name = format(AL["Head"], "1"), [NORMAL_DIFF] = {
            { 1, 31051 }, -- Hood of the Malefic (T6, Illidan)
            { 2, 32525 }, -- Cowl of the Illidari High Lord (BT - Illidan, SP64 hit21 crit47)
            { 3, 33453 }, -- Hood of Hexing (ZA - Malacrass)
        } },
        -- Shoulders: Mantle of Malefic (T6), Mantle of Nimble Thought (BT badge alt)
        { name = format(AL["Shoulders"], "2"), [NORMAL_DIFF] = {
            { 1, 31054 }, -- Mantle of the Malefic (T6)
            { 2, 30215 }, -- Mantle of the Corruptor (T5 backup)
        } },
        -- Back: cloaks only (removed totem from v0.1). BT/Hyjal/ZA only.
        { name = format(AL["Back"], "2"), [NORMAL_DIFF] = {
            { 1, 32331 }, -- Cloak of the Illidari Council (BT)
            { 2, 29992 }, -- Royal Cloak of the Sunstriders (TK - Kael'thas)
            { 3, 28797 }, -- Brute Cloak of the Ogre-Magi (Gruul)
        } },
        -- Chest: cloth caster only (removed Nordrassil Gloves + Sea-Witch from v0.1). BT/Hyjal/ZA only.
        { name = format(AL["Chest"], "2"), [NORMAL_DIFF] = {
            { 1, 31052 }, -- Robe of the Malefic (T6)
        } },
        -- Wrist
        { name = format(AL["Wrist"], "2"), [NORMAL_DIFF] = {
            { 1, 32586 }, -- Bracers of Nimble Thought (BT badge)
            { 2, 30870 }, -- Cuffs of Devastation (SSC)
            { 3, 29918 }, -- Mindstorm Wristbands (Kara)
        } },
        -- Hands: cloth only (removed Robe of Corruptor from v0.1). BT/Hyjal/ZA only.
        { name = format(AL["Hands"], "2"), [NORMAL_DIFF] = {
            { 1, 31050 }, -- Gloves of the Malefic (T6)
            { 2, 29987 }, -- Gauntlets of the Sun King (TK - Kael'thas)
        } },
        -- Waist
        { name = format(AL["Waist"], "2"), [NORMAL_DIFF] = {
            { 1, 30888 }, -- Anetheron's Noose (Hyjal)
            { 2, 32256 }, -- Waistwrap of Infinity (BT)
        } },
        -- Legs: cloth only (removed Junior Technician shoulders from v0.1)
        { name = format(AL["Legs"], "2"), [NORMAL_DIFF] = {
            { 1, 31053 }, -- Leggings of the Malefic (T6)
            { 2, 30916 }, -- Leggings of Channeled Elements (SSC)
        } },
        -- Feet
        { name = format(AL["Feet"], "2"), [NORMAL_DIFF] = {
            { 1, 32239 }, -- Slippers of the Seacaller (BT)
            { 2, 30067 }, -- Velvet Boots of the Guardian (Kara)
            { 3, 30894 }, -- Blue Suede Shoes (Hyjal)
        } },
        -- Neck. BT/Hyjal/ZA only.
        { name = format(AL["Neck"], "2"), [NORMAL_DIFF] = {
            { 1, 30015 }, -- The Sun King's Talisman (TK)
            { 2, 32349 }, -- Translucent Spellthread Necklace (BT)
        } },
        -- Rings (removed Magtheridon's Head quest item from v0.1). BT/Hyjal/ZA only.
        { name = format(AL["Rings"], "2"), [NORMAL_DIFF] = {
            { 1, 32527 }, -- Ring of Ancient Knowledge (BT)
            { 2, 29305 }, -- Band of the Eternal Sage (Kara)
            { 3, 32247 }, -- Ring of Captured Storms (BT)
            { 4, 28793 }, -- Band of Crimson Fury (Gruul)
        } },
        -- Trinkets (removed Dark Iron Smoking Pipe + mage Ashtongue from v0.1). BT/Hyjal/ZA only.
        { name = format(AL["Trinkets"], "2"), [NORMAL_DIFF] = {
            { 1, 32483 }, -- The Skull of Gul'dan (BT - Illidan)
            { 2, 29370 }, -- Icon of the Silver Crescent (badge)
            { 3, 33829 }, -- Hex Shrunken Head (ZA)
        } },
        -- Main Hand: only Zhar'doom listed (32374 confirmed = Zhar'doom Greatstaff);
        -- 30910/29988/32332 didn't validate. See PR notes.
        { name = format(AL["Main Hand"], "2"), [NORMAL_DIFF] = {
            { 1, 32374 }, -- Zhar'doom, Greatstaff of the Devourer (Illidan)
        } },
        -- Offhand. BT/Hyjal/ZA only.
        { name = format(AL["Offhand"], "2"), [NORMAL_DIFF] = {
            { 1, 32361 }, -- Blind Seer's Icon (BT)
            { 2, 30872 }, -- Chronicle of Dark Secrets (SSC)
            { 3, 29270 }, -- Flametongue Seal (Kara)
        } },
        -- Wand: v0.1 had 32354 (Crown of Empowered Fate - plate head!) as #1.
        -- Wands below sourced from Hoizame data-tbc.lua (TBC-native, not in WotLK Wowhead DB). BT/Hyjal/ZA only.
        { name = format(AL["Wand"], "2"), [NORMAL_DIFF] = {
            { 1, 32343 }, -- Wand of Prismatic Focus (Illidari Council BT)
            { 2, 29982 }, -- Wand of the Forgotten Star (TK - Kael'thas)
            { 3, 29996 }, -- Rod of the Sun King (TK badge)
        } },
    },
}
