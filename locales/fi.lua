--[[
    Pigeon No Seat Shuffle: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fi = {
    title = 'Istuimet',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Siirry viereiselle istuimelle',

    not_in_vehicle = 'Et ole ajoneuvossa.',
    too_fast = 'Hidasta ennen kuin vaihdat istuinta.',
    seat_taken = 'Istuin on varattu.',
    no_seat = 'Vieressäsi ei ole istuinta, jolle siirtyä.',
    seat_usage = 'Käytä /seat ja numeroa: 1 on kuljettajan istuin, 2 etumatkustajan istuin, sitten takaistuimet.',
}
