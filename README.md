# godot-platformer-template
a 2d godot platformer template project with a customizable player controller and included tilemap

## features

the template includes a base level with a pre-configured tilemap, an animated player character with a customizable movement controller (including platformer quality of life features like movement curve tuning and coyote time), and an in-game control and movement tuner.

## gameplay

the player character can be moved with WASD, arrow keys, or a controller. press tab to switch between the level scene and the movement tuner scene (if you add more levels, you may want to remove the code that does this!).

## using the movement tuner

1. load the `movement_tuner` scene and click "run current scene"
2. modify the sliders until things feel good
3. screenshot or write down your new values
4. copy your new values into `scenes/objects/player/movement.gd` to save them to your player

## using the tilemap

1. click the `walls` node in your scene tree
2. click `TileMap` on the navigation bar on the bottom of the editor
3. click the `Terrains` tab
4. expand `Terrain Set 0` and select `Terrain 0`
5. draw tiles into your level using left click (erase with right click)

## attribution
player sprite - https://opengameart.org/content/classic-hero-and-baddies-pack
