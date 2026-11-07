--[[
    Pigeon No Seat Shuffle: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hu = {
    title = 'Ülések',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Átülés a szomszéd ülésre',

    not_in_vehicle = 'Nem vagy járműben.',
    too_fast = 'Lassíts, mielőtt átülsz.',
    seat_taken = 'Az az ülés foglalt.',
    no_seat = 'Nincs melletted ülés, ahová átülhetnél.',
    seat_usage = 'Használd a /seat parancsot egy számmal: 1 a vezetőülés, 2 az első utasülés, utána a hátsó ülések.',
}
