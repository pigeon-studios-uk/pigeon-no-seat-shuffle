--[[
    Pigeon No Seat Shuffle: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    title = '座位',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = '換到旁邊的座位',

    not_in_vehicle = '你不在車上。',
    too_fast = '換座位前請先減速。',
    seat_taken = '那個座位已經有人了。',
    no_seat = '你旁邊沒有可以換過去的座位。',
    seat_usage = '使用 /seat 加數字：1 是駕駛座，2 是副駕駛座，然後是後排座位。',
}
