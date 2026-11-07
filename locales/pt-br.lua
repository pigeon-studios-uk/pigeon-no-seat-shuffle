--[[
    Pigeon No Seat Shuffle: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    title = 'Bancos',

    -- GTA's Settings -> Key Bindings -> FiveM.
    key_description = 'Passar para o banco ao lado',

    not_in_vehicle = 'Você não está em um veículo.',
    too_fast = 'Diminua a velocidade antes de trocar de banco.',
    seat_taken = 'Esse banco está ocupado.',
    no_seat = 'Não há banco ao seu lado para onde passar.',
    seat_usage = 'Use /seat e um número: 1 é o banco do motorista, 2 o do passageiro da frente, depois os bancos de trás.',
}
