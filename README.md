# Warhammer 40K Tactical Board v0.8.0

## New in v0.8.0 — Flaming Predator vs CSM AI rehearsal

- One-click Match loader creates the supplied 1,995-point Salamanders army and 2,000-point Chaos Space Marines army.
- Exact sheet points, unit sizes, Warlord status, loadouts, enhancements and four Friendly/one Enemy Attached Unit relationships are preserved.
- Duplicate Land Raider Redeemers, Daemon Princes and Defilers remain separately identifiable with their distinct loadouts and costs.
- The match opens directly at Declare Battle Formations instead of requiring army construction.
- Tactical model categories automatically distinguish infantry, jump infantry, Characters, Terminators, monsters, tanks, Dreadnoughts and Defilers.
- AI profiles include Balanced, Aggressive pressure, Objective focused and Ranged firepower.
- Run AI Phase handles Command evaluation, movement plans, shooting targets, charge attempts and Fight engagement plans with history/autosave integration.

## New in v0.7.6 — Reliable unit costs and enhancements

- Selecting a known unit now sets its default model count and current matching points together, preventing newly added squads from becoming one-model, zero-point units.
- Existing zero-point copies of supported units are corrected from their actual model count.
- Army Builder roster cards now include an Enhancement / Upgrade selector populated from the selected detachment.
- Enhancement costs are included in roster cards, army totals and deployment/reserve accounting.
- Enhancements are unique per army, saved in autosave/export, and participate in undo/redo history.
- Changing detachment removes enhancements that are no longer valid for the new detachment.

## New in v0.7.5 — Correct Force Dispositions and chapter unit catalogues

- Force Disposition is restricted to the five valid values: Priority Assets, Take and Hold, Purge the Foe, Disruption and Reconnaissance.
- Invalid legacy values saved by earlier builds are removed automatically.
- Space Marine successor/chapter catalogues now merge with the main Space Marines catalogue instead of replacing it.
- Salamanders and other chapter shopping lists now include Vanguard Veteran Squad with Jump Packs, Intercessor Squad, Eradicator Squad and Assault Intercessor Squad.
- Offline presets include those units with current base costs.
- Space Marine shopping lists are grouped into Characters & Command, Battleline & Core Infantry, Elite Infantry, Jump Pack & Fast Attack, Fire Support, Dreadnoughts & Walkers, Vehicles & Aircraft and Other Units for faster browsing.

## New in v0.7.4 — Current points and visible army relationships

- Corrected current official base points for 10 Infernus Marines (170), 10 Hellblasters (220), and a Redemptor Dreadnought (195 before the optional macro-plasma upgrade).
- Existing autosaves containing zero points for those exact units are migrated automatically.
- Army setup opens automatically during Army Builder so Detachment and Force Disposition selectors are immediately visible.
- Detachments show their current DP cost, and selecting a known detachment automatically selects its official Force Disposition.
- Force Disposition choices now use the official categories: Priority Assets, Take and Hold, Purge the Foe, Disruption and Reconnaissance.
- Each army has a visible Leader Attachments manager during Army Builder. It lists every Leader and eligible Bodyguard squad, including a clear message when no Leader has been added.

## New in v0.7.3 — Army metadata selectors

- Friendly and Enemy Detachment fields are now dropdown selectors.
- Friendly and Enemy Disposition fields are now dropdown selectors for Attacker, Defender, first/second player and rehearsal states.
- Previously saved free-text values remain available as saved dropdown options, preventing metadata loss when older battles are opened.

## New in v0.7.2 — Compact toolbar navigation

- Replaced the row of permanent board controls with compact Actions, Map and File dropdowns.
- Added one-click Pre-game and Turn Dashboard drawers; both remain collapsed until needed.
- Added compact previous/next phase controls and the current context directly in the toolbar.
- Army setup and unit-addition controls now live inside a collapsed sidebar dropdown.
- The bottom dashboard defaults to a slim turn/history strip and expands only on request.
- The battlefield, Friendly roster and Enemy roster receive substantially more usable space without removing any simulator function.

## New in v0.7.1 — Phase-aware UI, Attached Units and Tactical Icons

- Army-building controls only appear during Army Builder; formation controls appear during Declare Battle Formations; battle scoring/actions are revealed in their relevant phase.
- Leaders save a specific Bodyguard relationship through an Attach to Unit selector. Leaders are nested beneath their Bodyguard card and can be changed or removed.
- Attached Leaders inherit formation/deployment/reserve state from their Bodyguard. Deployment confirmation, reserve arrival and target distance treat the group as one Attached Unit while models, profiles, wounds and weapons remain separate.
- Reusable top-down icons cover infantry, Terminator/heavy infantry, Gravis, jump infantry, Characters, walkers, tanks, transports, bikes/cavalry, monsters, flyers and miscellaneous models.
- Exact true-base circles remain the authoritative draggable geometry underneath every icon. Friendly/Enemy, selected, destroyed and engaged states are visually distinct.
- Terrain footprints, objectives, deployment shading, paths, ranges, line of sight and selection highlights use a cleaner tactical-map treatment.
- Autosave, undo/redo, combat, statistics, deployment/reserves and Windows/iOS PWA support are retained.

## New in v0.7.0 — Deployment and Reserves

- Dedicated pre-game workflow: Setup, Declare Battle Formations, Deployment, Redeploy, Determine First Turn, Pre-battle and Command.
- Per-unit Deploy on Board, Strategic Reserve, Other Reserve / Deep Strike, Embarked and Attached statuses with roster badges.
- Live On Board, Strategic Reserve, Other Reserve and Embarked points accounting for both armies.
- Friendly and Enemy reserve trays; reserve units are removed from the battlefield until an arrival is begun.
- Built-in long-edge, short-edge, diagonal, centre/no-man's-land and asymmetric-ready deployment-zone overlays.
- During Deployment and Redeploy, every model base must be wholly within its side's legal zone. Illegal placements are rejected.
- Alternating deployment with a prominent next-player indicator and unit confirmation.
- Reserve arrival highlights the battlefield edge and the existing exclusion halos; every arriving base must finish more than 8.00 inches from enemy models.
- Deployment stages, statuses, zone selection, first-turn determination, placements and arrivals participate in rehearsal history, undo/redo and autosave.
- Existing roster, terrain, movement, LOS, combat, rules/actions, scoring, 2D/3D view, Windows browser and iOS/PWA functionality is retained.
- The Friendly pane, Enemy pane, complete top toolbar and bottom Turn / Phase dashboard remain simultaneously visible in the desktop layout; deployment uses a compact scrolling panel so it cannot push those established controls off-screen.

## Install / Run

Keep all six packaged files together and open `index.html`, or serve the folder from any static web host. On iPhone/iPad, use Safari's Add to Home Screen for the standalone PWA. The v0.8.0 service worker uses cache `40k-board-v080` to replace older cached builds.

UI redesign:
- Friendly and Enemy panes are now clean roster panels.
- Each pane contains only Army, Detachment, Disposition, points total, Add Unit and stacked roster cards.
- Unit detail/combat-engine fields no longer clutter the side panes.
- Units can be selected or removed directly from their roster.
- Top toolbar is simplified into Tool, Terrain and File dropdowns plus Range and Arrival distance.
- Bottom Battle Dashboard tracks turn, phase, Command Points, primary scoring, two secondaries per side and total score.
- Detachment, disposition, CP and scoring data autosave with the battle.
- Existing v0.5.5 army library, weapon loadouts, current 11e terrain, movement, LOS, scoring geometry and combat engine remain in the build.


## New in v0.5.7 — Representative Models and Rotatable Battlefield
- View selector: 2D Top / 3D Rotate.
- Drag the battlefield in 3D mode to rotate it; mouse wheel zooms.
- Both views use the same true battlefield coordinates and measurement geometry.
- Simplified representative tactical models now distinguish infantry, characters, Gravis/heavy infantry, Terminators/Paladins, Dreadnoughts/Dreadknights, vehicles, flyers and monsters.
- True bases remain visible underneath and remain authoritative for measurements.
- No rendered structures: terrain is intentionally flat and marked LIGHT or HEAVY.
- Objectives remain clearly marked on the battlefield surface.
- All v0.5.6 roster, dashboard, scoring, terrain, movement and combat functionality remains.


## New in v0.5.8 — Live Wound Rosters and Rehearsal Timeline
- Friendly and Enemy roster cards now show:
  - models remaining / starting models
  - current wounds / starting wounds
  - a per-model wound pip for every model
  - damaged models highlighted
  - destroyed models shown as X
- Casualties and wounds update immediately in the side panes as the rehearsal progresses.
- Added rehearsal history with Undo, Redo and Checkpoint.
- History snapshots are created before movement, shooting, charges, casualty changes, turn/phase changes, unit additions/removals and terrain changes.
- You can step back to an earlier state, change your decision, and continue from there; later history is automatically discarded when a new branch is created.
- Up to 120 rehearsal snapshots are kept during the current session.
- Existing autosave still preserves the current battle state. Rehearsal history itself is session-local so old experiments do not bloat saved battle files.


## New in v0.5.9 — Enhancements, Abilities and Stratagems
- Added a Rules / Actions panel for the selected unit.
- Three categories: Enhancements, Abilities and Stratagems.
- Rules can be restricted by phase and usage limit.
- CP costs are deducted automatically from the correct side.
- Rule usage is recorded in the battle log and rehearsal history.
- Active effects are shown on the selected unit and expire automatically by activation, phase, turn or battle.
- Undo/Redo restores CP, usage state and active effects because all are included in rehearsal snapshots.
- Initial generic rules demonstrate:
  - hit rerolls
  - wound rerolls
  - Lethal Hits
  - AP improvement
  - Feel No Pain 5+
  - damage improvement
  - +2 Charge
  - incoming AP reduction
- The rules library is modular and ready for faction, detachment and unit-specific rule packs.

Important: v0.5.9 includes representative generic rule actions. Army-specific official enhancements, abilities and stratagems should be imported into the modular library as separate rule packs rather than inferred automatically.


## New in v0.6.0 — Timed Mission Scoring
- Primary and Secondary scoring can now be tied to mission timing:
  - End of Command phase
  - End of Turn
  - End of Battle Round
  - End of Battle
- Mark a mission requirement as met and enter the VP shown on the mission card.
- The program waits until the configured scoring checkpoint before awarding the VP.
- Every VP award is written to the battle log and included in rehearsal history.
- Undo/Redo restores scoring, mission-achieved state and totals.
- Active player is tracked in the dashboard.
- Tactical-style Secondary scoring at End Turn is capped at 15 VP per player per turn.
- Primary and Secondary totals are maintained independently for both players.
- File menu includes "Score End Battle" for cards scored at battle end.

Mission text and exact scoring conditions remain user-entered rather than copied into the app. This allows the engine to follow the timing printed on the mission card being rehearsed while avoiding stale hard-coded mission wording.
