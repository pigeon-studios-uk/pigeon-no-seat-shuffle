--[[
    Pigeon No Seat Shuffle: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.no = {
    title = 'Seter',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Flytt til neste sete',

    not_in_vehicle = 'Du er ikke i et kjøretøy.',
    too_fast = 'Sett ned farten før du bytter sete.',
    seat_taken = 'Det setet er opptatt.',
    no_seat = 'Det er ikke noe sete ved siden av deg å flytte til.',
    seat_usage = 'Bruk /seat og et tall: 1 er førersetet, 2 passasjersetet foran, deretter baksetene.',
}
