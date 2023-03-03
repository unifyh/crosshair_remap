# Crosshair Remap

Allows player to map a style of crosshair to another, including custom ones.

## Vanilla Crosshair Styles

There are 10 predefined crosshair styles, plus 1 that removes crosshair. You can find their definitions in Darktide source code under directory [`scripts/ui/hud/elements/crosshair/templates/`](https://github.com/Aussiemon/Darktide-Source-Code/tree/master/scripts/ui/hud/elements/crosshair/templates)

### - `assault`
Three prongs and a center dot.
```
  |
  ·
/   \
```

### - `bfg`
"Price tag" style crosshair. An example would be the plasma gun.

### - `charge_up`
Two brackets and a center dot.
```
( · )
```

### - `charge_up_ads`
Two farther spaced brackets.
```
(           )
```

### - `cross`
Four prongs and a center dot.
```
   |
-- · --
   |
```

### - `dot`
Only a center dot.
```
·
```

### - `ironsight`
Nothing, only your iron/reflex sight.

### - `projectile_drop`
Ballistic compensation reticle thing.
```
\   /
  +
  +
  +
```

### - `shotgun`
Four corners.
```
┌   ┐

└   ┘
```

### - `spray_n_pray`
Two angle brackets and a center dot.
```
<·>
```

### - `none`
Nothing, usually used when reloading. Technically not a crosshair style.

## Using Custom Crosshairs

Put your crosshair lua file(s) in `Warhammer 40,000 DARKTIDE\mods\crosshair_remap\custom_crosshairs\`, then add you filename(s) to `LIST.lua`. Boot the game and choose your crosshair in the Mod Options.

The mod comes with two that add a center dot when you ADS, one for Lucius and one for others.

**NOTE:** The name of your file(s) must not be the same as those predefined style names.

## Making Custom Crosshairs

TODO. Read the ones come with the mod and those that are in the game's source code, you will figure it out. It's not that hard, really.

`template.name` will be ignored and replaced with your filename when loaded. However it is better to keep it the same as your filename.
