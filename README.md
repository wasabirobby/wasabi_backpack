# wasabi_backpack

This resource was created as a free ESX script for backpacks using ox_inventory

<b>Features:</b>
- 0.0 ms Usage
- Perisistent backpack prop added to back when in inventory
- Customizable item name and storage parameters
- Compatibility for ox_core, QBCore coming tomorrow/soon

## Installation

- Download this script
- Add backpack to inventory as it is in "Extra Information" below
- Add backpack to a shop with format as shown in "Extra Information" below
- Add backpack image to inventory images (found in `wasabi_backpack/_inventory_images/backpack.png`)
- Put script in your `resources` directory
- Ensure script AFTER `ox_lib` but BEFORE `ox_inventory`

# Dependencies
 - ox_inventory
 - es_extended

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

How item should be inserted into shop(Put in a shop found in `ox_inventory/data/shops.lua`):
```
{ name = "backpack", price = 50, metadata = {identifier = exports.wasabi_backpack:GenerateSerial()} },
```

## Preview
https://www.youtube.com/watch?v=OsjuUtE9Pg8

# Support
<a href='https://discord.gg/79zjvy4JMs'>![Discord Banner 2](https://discordapp.com/api/guilds/1025493337031049358/widget.png?style=banner2)</a>