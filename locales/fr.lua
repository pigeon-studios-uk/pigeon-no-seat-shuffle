--[[
    Pigeon No Seat Shuffle: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fr = {
    title = 'Sièges',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Passer au siège voisin',

    not_in_vehicle = 'Vous n\'êtes pas dans un véhicule.',
    too_fast = 'Ralentissez avant de changer de siège.',
    seat_taken = 'Ce siège est occupé.',
    no_seat = 'Il n\'y a pas de siège à côté de vous.',
    seat_usage = 'Utilisez /seat et un numéro : 1 est le siège conducteur, 2 le siège passager avant, puis les sièges arrière.',
}
