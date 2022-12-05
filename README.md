**spoody-switch** modified & improved by Alv#9999!

```Changes from original:```

`[1]` Improved performance (hopefully) -> original ran at 0.03 MS, this should run better. 
`[2]` Used tables to allow switches to be used for multiple weapons if desired. 
`[3]` Added support for multiple notification exports, no notifications & custom code. 
`[4]` Added support for ESX Legacy due to GSO event EOL from 30th November 2022. 

```Requirements:```

`[1]` Any version of ESX framework.

```Installation:```

`[1]` Clone this repository.
`[2]` Drag "**spoody-switch**" to your `resources` folder.
`[3]` Ensure the script is started **AFTER** `es_extended`.
`[4]` Run either of the SQL snippets provided below.
`[5]` There - **spoody-switch** is installed.

```SQL Snippets:```

`For ESX 1.1 (or if you use Limit in your items table):`

```
**INSERT INTO `items` (`name`, `label`, `limit`) VALUES ('switch', 'Switch', 10);**
```

`For ESX 1.2 and above (or if you use Weight in your items table):`

```
**INSERT INFO `items` (`name`, `label`, `weight`) VALUES ('switch', 'Switch', 1);**
```

```Credits:```

`[Spoody]` Discord: Spoody#9999
`[Discord]` https://discord.gg/spoody
`[Website]` https://spoody.dev