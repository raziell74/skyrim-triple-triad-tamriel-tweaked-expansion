# Triple Triad Tamriel Tweaked Expansion

This is a small personal project that greatly expands on the amazing Triple Triad mod that adds Triple Triad to Skyrim. 
My mod adds several new collectible game boards to Triple Triad, all with their own effects on the game and the player.

# Features (v1.0.0)

- [x] Each card now receives a rarity keyword that dictates how rare it is
    - Can be used for sorting with SkyUI Config
    - These will also be utilized for the I4 and Wheeler Icons
- [x] Unique cards now give a notification when obtained
- [x] Added a "Max Bet" option during the betting dialogs. This option will set the bet amount to the maximum possible bet.
    - based on the player's current gold and the opponent's gold
    - Bets are altered to be a multiple of 10
- [x] Cleaned up notification spam when selecting cards
    - There is now only one notification that shows the current card count
- [x] Player Card Chest will auto-close after choosing the 5th card
- [x] Upon winning the Opponents card chest will auto-close when the player chooses the final card they won from the game
- [x] Card rarity and uniqueness is now determined by the card's Keywords instead of it's value
    - The scripts relied upon the card's value to determine card rarity
    - This solves an issue with economy mods that change the value of items
- [x] Added all optional boards from (Triple Triad - Tamriel Edition)[https://www.nexusmods.com/skyrimspecialedition/mods/73047] as buyable boards
    - The New boards will be rare and expensive due to the great benefits they provide as well as making them more of a "Collectors" type item since they are hard to come by.
        - Race and Faction boards that are sold by very specific vendors will be the most expensive but will have a 100% chance of being sold by their perspective vendors.
        - Base Item Values
            - Basic - 225 (no change)
            - Basic+ Satin - 500
            - Fancy Rustic - 750
            - Race - 1500
            - Faction - 2000
            - Hold - 1250
    - Each board will be sold by a different vendor fitting the boards theme
        - The basic board and the Rules Book are be sold by Misc Vendors and Inn Keepers
        - A slightly nicer "Satin" board has a 15% chance of showing up at the Misc Vendors and a 40% chance of being sold by Inn Keepers
        - Fancy Rustic theme boards have a low chance (10%) of being sold by Misc Vendors and Inn keepers, but Khajiit Caravans have a 50% chance of selling them
        - Valenwood Green Boards can be purchased from Elrindir at the Drunken Huntsman in Whiterun or Enthir at the College of Winterhold, but only after unlocking him as a Fence through the Thieves Guild.
        - Aldmeri Yellow Boards are sold by Endarie at Radiant Raiment in Solitude and a very very low chance of being sold by Niranye in Windhelm, she doesn't want to get flogged by the ~~racists~~ I mean... uhh NOBLE Stormcloaks!
        - A StormCloak Blue Board has a 10% chance of being sold by Elda Early-Dawn at Candlehearth Hall in Windhelm. You can guarantee though that the Stormcloak Quartermasters will have them in stock. This way you still have a small chance of getting them even without joining the Stormcloaks.
        - Similarly the Imperial Red Board has a 10% chance of being sold by Sayma or CorpulusVinius in Solitude. Imperial Quartermasters will definitely have them in stock though. This way you still have a small chance of getting them even without joining the Imperial Legion.
        - You can pick up the Darkbrotherhood Grey Board from Babette at the Dark Brotherhood Sanctuary.
        - A Rift themed Purple board can be purchased from any Misc Vendor or Inn Keeper in the Rift.
    - Having a board in your inventory will automatically change the games interface with that board style
    - If the player has more than one board in their inventory the player will be prompted to choose which board to use
    - The type of Game Board used during a game can affect Betting Limits, The amount of Gold the opponent is willing to bet with you, winning provides buffs, losing provides debuffs, and more!
- [x] Cleaned Game Cell of all unnecessary objects. The player is trapped in a tiny corridor of black walls anyway. 
    - This should help with performance on potatoes since the game only needs to focus on the game objects and scripts instead of rendering and handling physics on the cells clutter.
- [ ] Handmade Icons
    - [ ] Unique Game Board Icons
    - [ ] Icons for each card rarity
    - [ ] I4 Icons Pack - ***Optional File***
    - [ ] Wheeler Icons Packs - ***Optional File***

# Mod Requirements

- [SKSE64](https://skse.silverlock.org/)
- [Triple Triad Card Game in Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/42522) - Base Mod
- [Triple Triad in Skyrim - Tamriel Edition](https://www.nexusmods.com/skyrimspecialedition/mods/73047) - Install with default game board, my mod adds the optional boards as new boards to purchase in game
- [Triple Triad Tamriel Tweaked](https://www.nexusmods.com/skyrimspecialedition/mods/92980) - Includes a lot of quality tweaks that my mod builds upon

## Optional Requirements

- [Inventory Interface Information Injector - I4](https://www.nexusmods.com/skyrimspecialedition/mods/85702) - For Custom SkyUI icons
- [Wheeler](https://www.nexusmods.com/skyrimspecialedition/mods/97345) - For Custom Wheeler icons
- [Description Framework](https://www.nexusmods.com/skyrimspecialedition/mods/105799) - For Misc Item Descriptions in SkyUI

## Upcoming Requirements

- [MCM Helper](https://www.nexusmods.com/skyrimspecialedition/mods/53000) - Highly Recommended and Required for the MCM Menu to function

## Tools Used

- [PCA -Papyrus Compiler App SE](https://www.nexusmods.com/skyrimspecialedition/mods/23852)
- [xEdit](https://www.nexusmods.com/skyrimspecialedition/mods/164)

## Credits

- [Dylbill](https://www.nexusmods.com/skyrimspecialedition/users/10197855) for his amazing work adding this fun side game to Skyrim
- [KlausGamingShow](https://www.nexusmods.com/skyrimspecialedition/users/53827396) who was the inspiration for me to start making my own Tweaks for Triple Triad and providing the papyrus source in his mod which served as a base for many of the updates for this mod.
- [JustIChris](https://www.nexusmods.com/skyrimspecialedition/users/82616823) for his amazing work on the Tamriel Edition. His ideas were the basis of a lot of the features in this mod. Not to mention his amazing work on the new boards and cards. I lack the talent to make my own meshes and textures so I am very grateful for his work.
- [GroundAura](https://www.nexusmods.com/skyrimspecialedition/users/97658973) for the fantastic library of Icons in THICC (The Handy Icon Collection Collective) making the icon overhauls possible.

# Upcoming Features

- [ ] Move config from the Triple Triad Rules Book to an MCM
    - MCM Helper will be used so settings can persist between saves
- Change when the dialog to ask for a game of Triple Triad shows
    - If the player currently has the "Triple Triad Rules Book" in their inventory the dialog will show for all NPCs
    - If the player does not have the "Triple Triad Rules Book" in their inventory the dialog will only show for Unique NPCs. This is the current (TTTT_v1)[https://www.nexusmods.com/skyrimspecialedition/mods/92980}] Behavior
    - [ ] Add config option to change this behavior
        - Option to always show the dialog on all NPCs
        - Option to require the rules book
        - Option to show dialog on only Unique NPCs when not in possession of the rules book
        - Option to show dialog only on NPCs in possession of a unique Triple Triad Card when not in possession of the rules book 
- [ ] When selecting cards the card will show and move to it's place in the players hand
    - Card will have an overlay to show the current cards in hand count
    - This will replace the notification spam when selecting cards
- [ ] Add Unique Properties to each board. Needs some brain storming, I have a few ideas I'll put below
    - Add a base Bet Limit to 100 by default
        - Each board will increase the bet limit to 1000 depending on the opponent's factions
            - Stormcloak Board will increase the bet limit when playing against Stormcloaks
            - Rift Board will increase the bet limit when playing against Citizens of the Rift
            - Etc...
    - Opponents have more gold when using a board that matches their faction
    - If using a hold board the rules will be force set to that holds rules regardless of the current hold the player is in
        - Will require the creation of all the Hold Boards
- Update current (Triple Triad - Tamriel Edition)[https://www.nexusmods.com/skyrimspecialedition/mods/73047] board designs to be more unique with more intricate detailing
    - [ ] TT_BoardMisc
    - [ ] TT_BoardMiscValenwood
    - [ ] TT_BoardMiscStormcloak
    - [ ] TT_BoardMiscRustic
    - [ ] TT_BoardMiscRift
    - [ ] TT_BoardMiscImperial
    - [ ] TT_BoardMiscRed
    - [ ] TT_BoardMiscAldmeri
    - [ ] TT_BoardMiscBrotherhood
- Add new custom made boards to collect covering the following types
    - Holds
        - [ ] Whiterun
        - [ ] Falkreath
        - [ ] Winterhold
        - [ ] The Pale
        - [ ] The Reach
        - [ ] The Rift
        - [ ] Haafingar
        - [ ] Hjaalmarch
        - [ ] Eastmarch
    - Factions
        - [ ] Companions
        - [ ] College of Winterhold
        - [ ] Thieves Guild
        - [ ] Dark Brotherhood
        - [ ] Dawnguard
        - [ ] Volkihar
        - [ ] Imperial Legion
        - [ ] Stormcloaks
        - [ ] Bards College
        - [ ] Thieves Guild
        - [ ] Dark Brotherhood
    - Races
        - [ ] Nord
        - [ ] Imperial
        - [ ] Breton
        - [ ] Redguard
        - [ ] Dunmer
        - [ ] Bosmer
        - [ ] Altmer
        - [ ] Orsimer
        - [ ] Khajiit
        - [ ] Argonian
    - Daedric Princes
        - [ ] Azura
        - [ ] Boethiah
        - [ ] Clavicus Vile
        - [ ] Hermaeus Mora
        - [ ] Hircine
        - [ ] Jyggalag
        - [ ] Malacath
        - [ ] Mehrunes Dagon
        - [ ] Mephala
        - [ ] Meridia
        - [ ] Molag Bal
        - [ ] Namira
        - [ ] Nocturnal
        - [ ] Peryite
        - [ ] Sanguine
        - [ ] Sheogorath
        - [ ] Vaermina
    - Aedra (Divines)
        - [ ] Akatosh
        - [ ] Arkay
        - [ ] Dibella
        - [ ] Julianos
        - [ ] Kynareth
        - [ ] Mara
        - [ ] Stendarr
        - [ ] Talos
        - [ ] Zenithar
- Possibly looking into adding new lore friendly Unique Boss Cards
- Possible LOTD (Legacy of the Dragonborn) and Curators Companion integration, we'll see

# TODO

- [x] Investigate why there is so much clutter in the game cell
    - TCL in game and look through the cell to see if all those items can be removed safely
    - Removal of unneeded clutter items could improve the games performance and increase load time into the gaming cell
    - Requires testing, game should play exactly the same with no visible impact for the player
- [x] Plan out pros/cons for each new board
- [ ] Fix issue with closing gift menu after winning and selecting cards to take from the opponent
- [ ] Add Betting Limit
- [ ] Create spells and effects for the new buffs and debuffs from using game boards
    - [ ] Satin Smoothness
    - [ ] Satin Roughness
    - [ ] Rustic Charm
    - [ ] Rustic Disappointment
    - [ ] Bosmeri Superiority
    - [ ] Bosmeri Depression
    - [ ] Aldmeri Superiority
    - [ ] Aldmeri Depression
    - [ ] Stormcloak Moral Boost
    - [ ] Stormcloak Depression
    - [ ] Legion Moral Boost
    - [ ] Legion Depression
    - [ ] Bond of the Brotherhood
    - [ ] Broken Brotherhood
    - [ ] Pride of the Rift
    - [ ] Enmity of the Rift
- [ ] Add Board Effects
    - [ ] Satin
    - [ ] Rustic
    - [ ] Valenwood Green
    - [ ] Aldmeri Yellow
    - [ ] Stormcloak Blue
    - [ ] Imperial Red
    - [ ] Brotherhood Grey
    - [ ] Rift Purple
- [ ] Add Item Descriptions using the new Item Description Framework
    - [ ] Add descriptions to all the new boards with their unique effects
    - [ ] Add descriptions to Cards with their rarity, with special mention of Unique cards
- [ ] New Icons
    - [ ] Create Custom Triple Triad Board Icons for each board
        - Each icon will need an svg (Wheeler) and a png
        - png icons will need to be packed into a swf file
    - [ ] Create Custom Triple Triad Card icons
        - Same multiple formats needed as noted for the board icons
        - [ ] Add a generic card icon for cards that don't have a specific icon
            - Can utilize the one that is in my game using THICC (The Handy Icon Collection Collective)
        - [ ] Create icons for each rarity level
    - [ ] Create I4 file to apply the new icons images in SkyUI
    - [ ] Create Wheeler files for the new icon images in Wheeler

## NEEDS TESTING

- [-] Newly cleaned game cell
    - [ ] Cell should load with all clutter items disabled
    - [ ] Game area lighting should not be affected
- [ ] Test Winning Card Chest Auto Close
    - Gift Menu did not properly close
    - Will need to look into where all the cards are removed from the winning card chest and replace it with the container close function

# Game Board Effect Planning

Bet limit changes will ensure a minimum bet of 10 gold. There is no maximum increase limit. 
Buffs and Debuffs from the boards do not stack, but winning or losing will refresh the duration of the buff/debuff and remove any buffs/debuffs from the previous games.
With the inclusion of Game Board Effects, there is now a limit to how much you can bet regardless of how much gold you or your opponent has.
The default bet limit is 250 gold. Using boards for specific types of opponents can increase this limit.

### Basic Boards

While the default game board offers no benefits or detriments, these basic boards will offer minor benefits and detriments for all games.

### Satin - Basic+ Board

Pros

    - Increases Bet Limit by 100
    - Winning gives a 30 minute (1200 duration) buff
        - "Satin Smoothness": +5 Speechcraft

Cons

    - Losing gives 15 minute (600 duration) debuff
        - "Satin Roughness": -5 Speechcraft

### Rustic Brown - Fancy Board

Pros

    - Increases Bet Limit by 250
    - Winning gives a 30 minute (1200 duration) buff
        - "Rustic Charm": +10 Speechcraft

Cons

    - Losing gives 15 minute (600 duration) debuff
        - "Rustic Disappointment": -10 Speechcraft

## Race Boards

Race Game Boards will give bonuses when facing opponents of the matching Race but give debuffs when facing a member that is not of that race.

### Valenwood Green - Bosmer

Pros

    - Bosmer opponents will have an extra 500 gold to bet
    - Increases Bet Limit by 500 when playing against Bosmer opponents
    - Winning gives a 30 minute (1200 duration) buff
        - "Bosmeri Superiority": +10 Archery
    - If you win against a Bosmer you will win any Bosmeri Themed cards that the opponent played as a bonus card
        - Bosmer Themed Card List TBD

Cons

    - Decreases bet limit by 100 when playing against non-Bosmer
    - Losing gives 15 minute (600 duration) debuff
        - "Bosmeri Depression": -5 Archery
    - If you lose to a Bosmer any Bosmeri Themed cards will be taken in addition to the your normal card loss
        - Bosmer Themed Card List TBD

### Aldmeri Yellow - Altmer

Pros

    - Altmer opponents will have an extra 500 gold to bet
    - Increases Bet Limit by 500 when playing against Altmer opponents
    - Winning gives a 30 minute (1200 duration) buff
        - "Aldmeri Superiority": +500 Magicka, +10% Magicka Regen
    - If opponent uses an Altmer themed card you automatically get that card in addition to any other cards you've won
    - If you win against an Altmer you will win any Aldmeri Themed cards that the opponent played as a bonus card
        - Altmer Themed Card List TBD

Cons

    - Decreases bet limit by 100 when playing against non-Altmer
    - Losing gives 15 minute (600 duration) debuff
        - "Aldmeri Depression": -250 Magicka, -5% Magicka Regen
    - If you lose to an Altmer any Aldmeri Themed cards will be taken in addition to the your normal card loss
        - Altmer Themed Card List TBD

## Faction Boards

Faction Game Boards will give bonuses when facing opponents of the matching Faction but have negative effects when facing a member that is not of that faction or even more detrimental effects when facing a member of the opposing faction.

### Stormcloak Blue - Stormcloaks

Pros

    - Stormcloak opponents will have an extra 500 gold to bet
    - Increases Bet Limit by 500 when playing against a Stormcloak
    - Winning gives a 30 minute (1200 duration) buff
        - "Stormcloak Moral Boost": 10% Increased damage against members of the Imperial Legion and Mer Races (Dunmer, Altmer, Bosmer, Orsimer)
    - If you win against a Stormcloak you will win any Stormcloak Themed cards that the opponent played as a bonus card
        - Stormcloak Themed Card List TBD

Cons

    - Decreases bet limit by 100 when playing against non-Stormcloak opponents
    - Losing gives 15 minute (600 duration) debuff
        - "Stormcloak Depression": 5% Increased damage taken from members of the Imperial Legion and Mer Races (Dunmer, Altmer, Bosmer, Orsimer)
    - If opponent is in the Imperial Legion or a Mer they will have 100 less gold to bet
    - If you lose to a Stormcloak any Stormcloak Themed cards will be taken in addition to the your normal card loss
        - Stormcloak Themed Card List TBD

### Imperial Red - Imperial Legion

Pros

    - Imperial Legion opponents will have an extra 500 gold to bet
    - Increases Bet Limit by 500 when playing against a member of the Imperial Legion
    - Winning gives a 30 minute (1200 duration) buff
        - "Legion Moral Boost": 10% Increased damage against members of the Stormcloaks and Nords
    - If you win against a member of the Imperial Legion you will win any Imperial Legion Themed cards that the opponent played as a bonus card
        - Imperial Legion Themed Card List TBD

Cons

    - Decreases bet limit by 100 when playing against non-Imperial Legion opponents
    - Losing gives 15 minute (600 duration) debuff
        - "Legion Depression": 5% Increased damage taken from Stormcloaks and Nords
    - If opponent is a Stormcloak or a Nord they will have 100 less gold to bet
    - If you lose to a member of the Imperial Legion any Imperial Legion Themed cards will be taken in addition to the your normal card loss
        - Imperial Legion Themed Card List TBD

### Brotherhood Grey - Dark Brotherhood

Pros

    - Dark Brotherhood opponents will have an extra 500 gold to bet
    - Increases Bet Limit by 500 when playing against a member of the Dark Brotherhood
    - Winning gives a 30 minute (1200 duration) buff
        - "Bond of the Brotherhood": 10% Increased damage when striking from stealth
    - If you win against a member of the Dark Brotherhood you will win any Dark Brotherhood Themed cards that the opponent played as a bonus card
        - Dark Brotherhood Themed Card List TBD

Cons

    - Decreases bet limit by 100 when playing against non-Dark Brotherhood opponents
    - Losing gives 15 minute (600 duration) debuff
        - "Broken Brotherhood": 10% Decreased damage when striking from stealth
    - If you lose to a member of the Dark Brotherhood any Dark Brotherhood Themed cards will be taken in addition to the your normal card loss
        - Dark Brotherhood Themed Card List TBD

## Hold Boards

Hold Game Boards will give bonuses when facing citizens of the matching Hold but have negative effects for non-citizens of that hold.

### Rift Purple - The Rift

Pros

    - Citizens of the Rift will have an extra 500 gold to bet
    - Increases Bet Limit by 500 when playing against a Citizen of The Rift
    - Winning gives a 30 minute (1200 duration) buff
        - "Pride of the Rift": Sell items for 5% more and buy for 5% less from merchants in the Rift

Cons

    - Decreases bet limit by 100 when playing against non-Citizens of The Rift
    - Losing gives 15 minute (600 duration) debuff
        - "Enmity of The Rift": Sell items for 5% less and buy for 5% more from merchants in the Rift
