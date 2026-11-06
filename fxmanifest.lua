fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-no-seat-shuffle'
author 'Pigeon Studios'
description 'Stops passengers sliding into the driver\'s seat by themselves, with a key and /seat to change seats on purpose.'
version '0.1.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-no-seat-shuffle'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-no-seat-shuffle'

client_scripts {
    'configuration/config.lua',
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
