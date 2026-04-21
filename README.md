# 🍄 USB Mario — Plug & Play Platformer

A complete Mario-style platformer game that runs directly from a USB stick. No installation. No internet. Just plug in and play.

The whole game is a single `index.html` file — open it in any browser and you're playing instantly. Includes Windows, Mac, and Linux launchers that open the game in fullscreen automatically.

> **Note:** This is an original fan-made game inspired by classic platformers. No Nintendo assets are used — all graphics are drawn with Canvas 2D API code.

---

## Plug in and play

### Windows
1. Plug in your USB
2. Double-click **`launcher/launch.bat`**
3. Game opens fullscreen in Chrome or Edge automatically

### Mac
1. Plug in your USB
2. Double-click **`launcher/launch.command`**
   - First time: right-click → Open (macOS security prompt)
3. Game opens fullscreen in Chrome automatically

### Linux
```bash
chmod +x launcher/launch.sh
./launcher/launch.sh
```

### Or just open it directly
Open **`index.html`** in any modern browser (Chrome, Edge, Firefox, Safari). That's it.

---

## Controls

| Key | Action |
|---|---|
| `←` `→` | Move left / right |
| `↑` or `Z` or `Space` | Jump |
| `Shift` | Run faster |
| `P` | Pause / unpause |
| `R` | Restart current level |

---

## What's in the game

- **3 worlds** — daytime, underground/night, and castle
- **2 enemy types** — Goombas (stomp to kill) and Koopas (stomp for a sliding shell)
- **Power-up system** — hit `?` blocks to grow bigger, survive one hit
- **Coins** — collect from the air or by hitting `?` blocks
- **Score system** — stomp enemies, collect coins, beat the level timer
- **3 lives** — fall in a pit or get hit while small and you lose one
- **Parallax backgrounds** — clouds, mountains, stars
- **All sounds generated in code** — jump, stomp, coin, block hit, power-up, flag, death

---

## How the game works

**Enemies**
- Walk back and forth, turn at walls and ledges
- Jump on a Goomba = kills it, bounce up
- Jump on a Koopa = turns it into a sliding shell (kicks into other enemies)
- Touch an enemy from the side = lose big form, or die if small

**Blocks**
- `?` blocks give you a power-up (grows you bigger) or a coin if already big
- Brick blocks can be broken by a big player
- Ground, stone, and pipe blocks are solid and indestructible

**Scoring**
- Stomp enemy: +200 points
- Coin: +100 points
- `?` block coin: +200 points
- Beat the level: bonus based on time remaining

**Power-ups**
- Small → Big: get hit once without dying, head bumps destroy bricks
- Big → Small: take a hit, become small again with brief invincibility frames
- Small and hit: lose a life

---

## File structure

```
USB-Mario/
├── index.html          ← The entire game (single file, open this)
├── autorun.inf         ← Windows USB autorun
├── launcher/
│   ├── launch.bat      ← Windows: opens game fullscreen
│   ├── launch.command  ← macOS: opens game fullscreen
│   └── launch.sh       ← Linux: opens game fullscreen
└── README.md
```

---

## Technical details

The game is written in vanilla JavaScript with no libraries or dependencies. Everything runs in the browser:

- **Canvas 2D API** — all graphics drawn in code, pixel-art style
- **Web Audio API** — all 7 sound effects generated programmatically (no audio files)
- **requestAnimationFrame** — smooth 60fps game loop
- **Responsive scaling** — canvas scales to fit any screen size while staying pixel-crisp
- Single HTML file, ~900 lines of JS — readable and hackable

The launchers pass `--start-fullscreen` to Chrome/Edge which gives you a proper fullscreen experience. Press `F11` in the browser to toggle manually if needed.

---

## Putting it on a USB drive

Just copy everything in this folder to the root of your USB drive:

```
USB Drive/
├── index.html
├── autorun.inf
├── launcher/
│   ├── launch.bat
│   ├── launch.command
│   └── launch.sh
└── README.md
```

Format the USB as **FAT32** or **exFAT** for best compatibility across Windows, Mac, and Linux.

---

## Customising the game

Everything is in `index.html`. The level layout, enemy positions, and tile types are defined as simple text grids near the top of the script section — easy to read and modify.

**To add a level:** Add a new object to the `LEVELS` array following the same format.

**To change colours:** Edit the `C` object at the top of the script.

**To change speeds/physics:** Edit `GRAVITY`, `GAME_W`, `GAME_H`, and the speed values in the `input()` function.

---

## Browser requirements

Works in any browser released after 2016. Specifically needs:
- Canvas 2D API (universal)
- Web Audio API (universal — Firefox, Chrome, Edge, Safari)
- `requestAnimationFrame` (universal)

No WebGL, no WebAssembly, no frameworks. Pure HTML5.

---

## License

MIT — do whatever you want with it. Make more levels. Reskin it. Put your face on the character. Share it.
