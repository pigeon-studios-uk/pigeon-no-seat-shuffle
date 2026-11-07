--[[
    Pigeon No Seat Shuffle: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sv = {
    title = 'Säten',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Flytta till sätet bredvid',

    not_in_vehicle = 'Du är inte i ett fordon.',
    too_fast = 'Sakta ner innan du byter säte.',
    seat_taken = 'Det sätet är upptaget.',
    no_seat = 'Det finns inget säte bredvid dig att flytta till.',
    seat_usage = 'Använd /seat och en siffra: 1 är förarsätet, 2 passagerarsätet fram, sedan baksätena.',
}
