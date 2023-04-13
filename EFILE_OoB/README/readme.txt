
[Note: This Efile requires the alt-DAT for its unit icons.]

==========================================

Efile_OoB v2.03	(Order of Battle)

==========================================
Major changes for v2.0:
1. The "Mov." and "Fuel" values displayed in-game are doubled: "x2" the maximum possible movements allowed and remaing fuel available; for example: an armoured unit reading "10" can actually move 5 hexes at most during a turn; fuel usage is at minimum 2 fuel per hex, so a unit with "100" for fuel will have a maximum range of 50 hexes before requiring refueling.
The reason I've implemented this is that the game engine has severe limitations when it comes to setting movement variables, to achieve the more realistic movement for many units I desired, an across-the-board doubling, then (partial) clawing-back was required. Hopefully something can eventually be done to make the user interface look less clumsy, and display the actual fuel and movement numbers.
One major downside to this new movement scheme is that the "Aggressive Maneuver" Leader for tank units has effectively been nullified.
2. All air units have been given recon-type movement; having almost all ground units providing support-fire gives a major advantage to defending forces, allowing multiple air attacks will aid in the softening up of targets for the attacker. (This change might be undone should unintended consequences arise, or it proves extremely unpopular.)
==========================================

This Efile was inspired by and derived from a earlier version (LXF_0.2 10.10.2013) of Golothin's excellent Efile_LXF.
Without it, this Efile could-not/would-not exist and I am indeed grateful, appreciative and humbled by all Golothin's work. Additionally I have followed his lead for implementing Fronts/Factions and hangers for aircraft; my Efile's flags are the older versions of LXF flags, and the roundels are LXF roundels - my thanks again to Golothin.

Where OoB diverges from LXF is chiefly in the movement settings for different unit classes and the values set in the TERRAIN* file (I have also removed mine clearing capability from most infantry units). 
* Now the TERRAINEX file.

A few more inspirations for the making of my Efile came from the OPENAK, OLGWW2 and  PAC Efiles, plus the BASEKORP Efile (which made me take a closer look at the TERRAIN file - how it works, and what it does). 

I have also used a couple of the flag designs by RumpNissen.

I would also like to thank lvjtn, who offered me some helpful guidance along the way, and Luis Guzman, who's Suite made it possible.

I have adapted a few Campaigns for use with the Efile; I tried to choose a few that hadn't yet been converted to the Open General format, as well as a couple that had (for player comparison purposes). 
These are:
22. Infanterie Division Campaign (Dennis Felling)
Australian Bougainville Campaign 1944-45 (Dennis Felling)
Australian Campaign 1941-45 Diggers at War (William Dickens)
Deutsche Marinekorps Campaign, 1937-1945 (Dennis Felling)
Fall Weiss (Santiago Fuertes)
Hungarian Royal Army, 1939-45

 (Csaba Zsadányi-Nagy)
No Price Too High, 1941-45 (MG34)
Spezial Sturmbrigade "Bistroff" (Alexandr Batora))


Some notes:

1. "Support Fire" has been enabled for almost every ground unit (for amoured units, "Single Fire Support").

2. The nations of "SS", "Chetniks", "Luxembourg", "Norway" and "Ireland" are included for flag purposes; they contain no units except transportation units.

3. Fronts/Factions (following Gotohin's example):

In the FRONTS.TXT file I have applied the following template to each nation:
(with a few modifications for some)

*-------------------------------------------------------------------
(Nation)
*-------------------------------------------------------------------

#NOM 
#CLIM Default
#CLIM Snow
#CLIM Desert
#CLIM Jungle
#-
#-
#-
#-
#-
#
#-
#
#-
#-
#-
#-
#-
#-
#-
#-
#-
#EQP Prototypes/Rare
#-
#-
#-
#-
#EQP Campaign: Blitzkrieg Order of Battle
#EQP -Specified Scenario/Campaign
#EQP -Specified Scenario/Campaign
#-
#NONE - Help?->FRONTS.TXT

@SEA ALL
@SEA  Naval
@SEA  Aviation
@SEA  Ground
@AIR  ALL
@AIR   Aviation
@AIR   Ground
@GRD ALL
@GRD  Aviation
@GRD  Armored
@GRD  Infantry		(generally foot & horse drawn units; to motorize use together with "@SAG Motorpool")
@GRD  Motorized/Mechanized
@GRD  Cavalry
@GRD  Mountain
@GRD  Airmobile		(usually heavier weapons and equipment that could still be moved by plane) 
@GRD  Light
@GRD  Garrison/Security
@GRD  Corps		(for heavy artillery and other units that were held above division level)	
@SPE  Airborne
@SPE Special Forces 
@SPE Auxillary/Colonial
@SPE Paramilitary
@SPE Paritsans/Irregulars/Guerrillas
@SPE (special to this faction)
@SAG Motorpool
@SEA Coastal
@SEA Carriers + Aviation
@GRD Rail
@ 
@FRT (campaign/scenario specific)
@FRT (campaign/scenario specific)
@NONE - Help?->FRONTS.TXT

For #XXX values/classes:
- used to make broad Army level choices.
- can disallow the use of rare/historically-prototype units (e.g. "Maus" - only two were ever made).
- "#CLIM Xxxxx" used for control of horsed units (e.g. cavalry, horse drawn wagons).
- "#NOM" a catch-all
- "#EQP -Specified Scenario/Campaign" can be used to make custom unit pools for different campaigns and scenarios.

For @XXX values/classes:
- units generally assigned to classes with division/brigade/regimental levels in mind,
   e.g. selecting "@GRD  Armored" will generally provide all the units that are required for an armoured division.
- [[ ]] brackets indicate that the class has no units assigned to it, 
   e.g.: "@GRD  [[Corps]]" indicates the nation has no Corps level units assigned.   
- substitutes for template classes are enclosed in ( ) brackets.
- SEA = Navy, AIR = Air force, GRD = Army, SPE = Special Forces/Auxillaries/Irregulars
- "@FRT (campaign/scenario specific)" can also be used to make custom unit pools for campaigns and scenarios.


4. Guide to Hanger weights:

1234 5678
oooo oooo
oooo oooo
9abc defg

1 = carrier + carrier aircraft
2 = battleship & cruiser + associated floatplanes
3 = hybrid capital-ship/carrier (e.g. the "Ise") + associated aircraft
4 = seaplane tender + associated seaplanes
5 = seaplane base
6 = dirt airfield (or temporary airfield)
7 = improved airfield
8 = concrete runway
9 = carrier submarine + associated aircraft
a = submarine pen + associated subs & MTBs
b = submarine + associated manned torpedoes
c = not assigned
d = not assigned
e = not assigned
f = not assigned
g = nominal (common to all aircraft & mobile ground units that do not have one of the previous hanger weights assigned)


HundredDays 
(mid April 2016)
