# Warhammer 40K Tactical Board v0.5.4

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


## New in v0.5.4 — Unit Library
- Drop-down unit selector for army building.
- Presets grouped by faction.
- Initial library: Space Marines, Grey Knights and Chaos Space Marines.
- Selecting a unit automatically fills model count, base size, wounds/model, Move, Toughness, Save and OC.
- Custom/manual unit entry remains available.
- Friendly or Enemy side remains selectable.


## New in v0.5.4 — Split Army Rosters
- Friendly Army has its own roster panel on the left side of the battlefield.
- Enemy Army has its own roster panel on the right side.
- Each side has its own unit-library dropdown and Add Unit controls.
- Friendly units spawn toward the left deployment side; enemy units spawn toward the right.
- Selecting units from either roster still opens the common combat/unit detail controls.
- On smaller iPad/iPhone screens the three areas stack rather than hiding the enemy roster.


## New in v0.5.4 — Army → Unit live library
- Independent Friendly Army and Enemy Army selectors at the top of their panels.
- Unit dropdowns are filtered by the selected army.
- When online, the app loads the current 11th-edition BSData catalogue for that army from GitHub.
- Unit dropdown entries show points and available core statistics.
- Selecting a live unit fills Move, Toughness, Save, Wounds/model and OC; LD and invulnerable save are shown in the unit information line.
- Friendly and enemy roster point totals are calculated automatically.
- Manual/custom units remain available.
- If the live catalogue cannot be reached, the app falls back to the small built-in library.

### Important data note
BSData is a community-maintained data source, not an official Games Workshop product. Current official points should be checked against the latest Munitorum Field Manual for tournament use. Some unit-size-dependent points are represented as a base/starting value in the source; the app marks detected variable points with a "+" and keeps the points field editable.


## New in v0.5.4 — Ranged and Melee Weapon Loadouts
- Separate Ranged Weapon and Melee Weapon dropdowns under both Friendly and Enemy unit selectors.
- Weapon profiles are extracted from the selected live BSData unit entry.
- Dropdown labels show Range, Attacks, BS/WS, Strength, AP and Damage.
- Keywords are displayed beneath the selected weapon.
- The chosen ranged and melee weapon are saved with the unit when it is added to the roster.
- Roster cards display the selected ranged and melee loadout.
- Friendly ranged weapon selection can automatically populate the combat resolver, including Torrent, Blast, Lethal Hits, Devastating Wounds, Hazardous and Sustained Hits where the profile keywords identify them.
- A selected roster unit can reload its saved ranged weapon into the combat resolver.
