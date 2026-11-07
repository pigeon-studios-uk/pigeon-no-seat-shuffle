--[[
    Pigeon No Seat Shuffle: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.de = {
    title = 'Sitze',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Auf den Nachbarsitz rutschen',

    not_in_vehicle = 'Du sitzt in keinem Fahrzeug.',
    too_fast = 'Fahr langsamer, bevor du den Sitz wechselst.',
    seat_taken = 'Dieser Sitz ist besetzt.',
    no_seat = 'Neben dir ist kein Sitz, auf den du wechseln kannst.',
    seat_usage = 'Nutze /seat und eine Zahl: 1 ist der Fahrersitz, 2 der Beifahrersitz, danach die Rücksitze.',
}
