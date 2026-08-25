# Warhammer 40K Tactical Board v0.5

Single cross-platform build for Windows and iOS/iPadOS.

## Default arrival rule used by this simulator
Any reserve, ingress, deep-strike-style or other move onto the battlefield from off-board uses:
- must finish greater than 8.00" from enemy models
- 8.01" is legal
- 8.00" is not legal

The exclusion value remains editable in the UI in case a particular rule changes it.

## New in v0.5
- Windows + iOS/iPadOS in one codebase
- PWA install support retained
- Windows local launcher retained
- Path-based movement with waypoint measurement
- Blocking-terrain collision checks
- Straight moves crossing blocking terrain are rejected and direct you to Path Move
- Custom terrain placement
- Line-of-sight check against blocking terrain
- Cover approximation
- Torrent
- Blast
- Sustained Hits
- Devastating Wounds
- Hazardous
- Invulnerable saves
- Feel No Pain
- Existing model-by-model bases, casualties, wounds, coherency, OC, Engagement Range, charges, AP/saves, Lethal Hits, autosave and statistics retained

## iPhone/iPad installation
Serve the folder over HTTPS, open it in Safari, Share -> Add to Home Screen.
The same build then launches as a standalone app and preserves battle state locally.

## Windows
Option 1: double-click Launch Windows.bat.
Option 2: host the same folder and use the same web/PWA build in Edge/Chrome.

## Known v0.5 approximations
- Terrain is 2D rectangular footprint terrain.
- Cover is a practical approximation, not yet a full terrain-trait rules engine.
- Vertical movement/ruin floors are not yet simulated.
- Charge auto-move still places the closest charging model first; remaining models are positioned manually.
- Full leader, transport, reserve roster, stratagem timing, command point and detachment logic remains the next rules layer.
