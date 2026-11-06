# Changelog

All notable changes to Pigeon No Seat Shuffle are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

First release.

### Highlights

- Passengers stay in their seat when the driver gets out
- A key to shuffle to the seat beside you
- /seat to move to any free seat by number
- A speed limit for changing seats
- ox_lib notifications if you have it

### Added

- GTA's automatic shuffle into an empty driver's seat turned off for every player, with ped config flag 184, applied again on respawn and every `Config.ReapplySeconds`.
- A key (`Config.ShuffleKey`, O by default) and `/shuffle` command that move the player to the seat beside them, if it's free.
- `/seat <number>` to move to any free seat, 1 being the driver's seat.
- No seat changes above `Config.MaxSpeed`, in mph or km/h.
- Short messages when a seat is taken or the vehicle is too fast, through ox_lib if it's running or GTA's notification feed.
- `Shuffle` and `MoveToSeat` client exports.
- English text in `locales/`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-no-seat-shuffle/commits/main
