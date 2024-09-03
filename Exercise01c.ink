/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 * Variable checking
 
 In the assignment:
 * Add four more knots
 * Assign at least TWO new variables through player choices
 * Print at least one of the variables to the player in a passage
 * Check the value of a variable and have it do something

Variable Checking!

Equality:   "Spot" == "Spot"
Not equality: 1!= 2
Greater: >
Less: <
Great or equal: >=
Less or equal: <=



*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR weapons = ""
VAR items = ""
VAR total = 0

-> memory

== memory ==
Before you stands the cavern of Josh. You wish your childhood pet was with you now. The cave might me less intimidating. What was your pet's name?

* [Charlie] 
    ~  pet_name = "Charlie"
        -> cave_mouth
* [Susan]
     ~ pet_name = "Susan"
         ->cave_mouth
*[Spot]
    ~ pet_name = "Spot"
        -> cave_mouth
                


== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
* {torches > 0} [Light Torch] -> west_tunnel_lit
{pet_name == "Spot": Scout would love it here in the west|}

+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== west_tunnel_lit ==
The light of your torch ignites your path allowing you to clearly see what's ahead.
*[Continue] -> weapon_choice
-> END

== weapon_choice ==
As you venture through the cave you come across an assortment of weapons. What will you choose?

*[Sword]
    ~weapons = "sword"
        -> danger
* [Axe]
    ~ weapons = "axe"
        -> danger
* [Club]
    ~ weapons = "club"
        ->danger
->END

== danger ==
You choose the {weapons}, may it serve you well

You stow away your {weapons} and continue your journey

As you are carefully scouring the cave you come across a skeleton. Upon closer inspection you see that the skeleton is holding a few items. What will you choose?

* [Canned Food]
    ~ items = "canned food"
        -> journey
* [Rope]
    ~ items = "rope"
        -> journey
 *[Water]
    ~ items = "water"
        -> journey

->END

=== journey ===
You choose the {items}. You now have a {weapons}, {items}, and a torch in your inventory
{items == "water": You now drink the water to quench your thrist}

-> END









