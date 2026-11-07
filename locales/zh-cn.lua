--[[
    Pigeon No Seat Shuffle: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    title = '座位',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = '换到旁边的座位',

    not_in_vehicle = '你不在车里。',
    too_fast = '换座位前请先减速。',
    seat_taken = '那个座位已经有人了。',
    no_seat = '你旁边没有可以换过去的座位。',
    seat_usage = '使用 /seat 加数字：1 是驾驶座，2 是副驾驶座，然后是后排座位。',
}
