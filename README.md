# Warhammer 40K Tactical Board v0.6.0

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
