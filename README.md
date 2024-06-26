# Pokémon Ambrosia

A Romhack based on Pokemon Crystal with a focus on unique features, fun gameplay and extensive additional and post game content.

## Pokedex

- Fully reworked Pokedex which includes fan favorite Pokemon and legendaries from the first 6 generations with 253 Pokemon in total.

- All Pokemon have one or more abilities.
  - Some are the abilities you might expect such a Tyranitar Sandstream.
  - some are different such as Lucario with Intrepid Sword.
  - some are completely new such as Guardevoir raising light screen upon switch in.

<img src="/screenshots/rayquaza.png" width="150" height="150" />    <img src="/screenshots/sandstorm.png" width="150" height="150" />    <img src="/screenshots/stance.png" width="150" height="150" />

## Overworld Pokemon

- Pokemon wander in the overworld. They randomly spawn and come in 3 varieties.
  - Normal Pokemon that appear in various colours and are at an appropriate level.
  - Aggressive Pokemon that appear red and will attack the player on sight, they are at high levels and can only be escaped from by using a Pokedoll.
  - Shinny Pokemon that appear gold and generally have a 1/8 chance to spawn in the area.

<img src="/screenshots/fieldmon.png" width="150" height="150" />    <img src="/screenshots/aggressive.png" width="150" height="150" />    <img src="/screenshots/shiny.png" width="150" height="150" />

## Story

- The story is completely new and centers on an immanent invasion of Kanto due to a war with Hoen.
- Three recurring rivals, one of which uses an exact copy of the players party including stats, items, nicknames, everything.

## World

- Many updated maps and numerous all new maps.
- Random battle weather assigned upon entering an area, though some maps have fixed weather.  
- With a more open world design allowing the player to enter areas with trainers and Pokemon far stronger than they would be able to beat but with hidden powerful rewards.
  - Can travel north to Blackthorn and west to Olivine from beginning of the game.
  - Can travel to Kanto as soon as reaching Goldenrod.

## Level Caps

Open world design is balanced by two levels caps, both of which are visible on your trainer card.
  - Cap on level you can train Pokemon to, this is a generous cap that starts at 25 and is generally slightly higher than the next gym leaders max level.
  - Cap on the max level of Pokemon you can capture. This is generally 10 less than your training level cap.

## Quality of Life

Many massively impactful quality of life changes.
- Can rematch any trainer by talking to them, including gym leaders. However, rematches give reduced exp and forbid the use of items.
- Can forfeit almost any battle via the Run option.
- Exp share available from very early game, giving 50% exp to all Pokemon who do not participate. This is upgraded by endgame to give double exp to all Pokemon.
- Sprint shoes which allow you to run by default (rather than having to hold B) except when indoors where walking is the default (though you can still run by holding B).
- A Remembral key item which acts as a portable move relearner with no cost.
- All TMs are infinitely reusable.
- HMs can be used by any Pokemon which is able to learn them, without actually needing to know them.
- A Pocket PC allowing access to PC anywhere except caves and dungeons for balance reasons.
- An infinitely reusable escape rope called Escape Pod.
- An infinitely reusable repel called a Repulsor.

## Items

Many important new and existing items.

- competitive items such as
    - choice band
    - choice specs
    - life orb
    - focus sash (is not consumed upon use)
    - muscle band
    - wise glasses
    - expert belt
    - type boost items give 20% boost
    - leftovers
- new item the Red Eye Orb allows player to become a dark souls like invader. This gives the player a Red sprite, gives them double prize money upon winning a battle but losing a battle cost all the players money.
- New rare item Ambrosia maximises all stat exp (evs) and happiness. Acting like using 25 of each vitamin in one item.

## Entertaining Features

- Fully revamped battle frontier including 5 areas
    - Battle Mirror where you battle an exact copy of your current team.
    - Battle Roulette where you battle a random boss enemy you have fought before and receive a random reward.
    - Battle Arcade where you select a team to use, then an enemy to fight against from a selection of Gym Leader, Elite Four and boss teams. You start with all Gym leaders and unlock other characters as you play through the story.
    - Battle trial where you face consecutive story enemies of increasing strength 	with your party only being healed every three fights.
    - Battle tower which now consists of four 6v6 fights with no rules and has five difficulties.
    - Battle tower (mirror mode) here instead of using your own party you use an exact copy of the random enemy party. Keeping the fights interesting.
- A recurring RPG minigame where the player plays through stories from popular IPs such as Star Wars, DBZ and Lord of the Rings where the player takes part in battles with fixed teams.
- Invader enemy class based on dark souls invaders. They don't generally have high level Pokemon but their Pokemon are min-maxed and they utilize meta strategies. They are all avoidable.

## AI

AI has been extensively improved. At all times it has access to
- Whether it has any moves that can 1HKO, 2HKO or 3HKO the player from both their current and max health.
- Whether the player has any moves that can 1HKO, 2HKO or 3HKO the AI from both its current and max health.
- Whether the AI can outspeed the player or not.

It uses all these to make decisions, for example
- AI will use recover if it has one more turn before being KOed unless the player can 2HKO from max HP as there is no point.
- AI will use a setup move unless player can outspeed and 1HKO, unless AI has intact focus sash or sturdy, then it will set up as long as it can outspeed the player and the player doesn't have a priority move.

## Post game

- 28 legendary Pokemon, 14 of which are Uber, including Mewtwo which has been redesigned to be equivalent to RBY Mewtwo mechanically and Arceus which is mechanically extremely overpowered.
- Several huge new maps with over 50 optional bosses.
- Significantly game changing rewards for completion
    - Mark of God which can be toggled on and off
        - it gives the player a gold sprite.
        - makes all player Pokemon appear shiny regardless of stats.
        - gives player infinite money.
        - makes player immune to all aggressive overworld entities.
    - Hand of God which can be toggled on and off and lets the player instantly make new teams or cosplay as any player they want.
        - players party is replaced with a copy of the enemies party.
        - this persists after battle, the player can deposit the Pokemon in their box if they want.
        - Gives the player the option to restore their original team from the last save when turned off.
    