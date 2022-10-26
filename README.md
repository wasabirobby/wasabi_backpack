# wasabi_backpack

This resource was created as a free script for backpacks using ox_inventory

<b>Features:</b>
- 0.0 ms Usage
- Perisistent backpack prop added to back when in inventory
- Customizable item name and storage parameters
- Compatibility for ox_core, ESX, QBCore, whatever else running ox_inventory

## Installation

- Download this script
- Add backpack to inventory as it is in "Extra Information" below
- Add backpack image to inventory images (found in `wasabi_backpack/_inventory_images/backpack.png`)
- Put script in your `resources` directory
- ensure `wasabi_backpack` *after* `ox_lib` but *before* `ox_inventory`

# Dependencies
 - ox_inventory

## Extra Information
Item to add to `ox_inventory/data/items.lua`
```
	['backpack'] = {
		label = 'Backpack',
		weight = 220,
		stack = false,
		consume = 0,
		client = {
			export = 'wasabi_backpack.openBackpack'
		}
	},
```

## Preview
https://www.youtube.com/watch?v=OsjuUtE9Pg8

# Support
<a href='https://discord.gg/79zjvy4JMs'>![Discord Banner 2](https://discordapp.com/api/guilds/1025493337031049358/widget.png?style=banner2)</a>
