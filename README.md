# _Tears Of Iron prototype mk.02_

#### By *Marty Kovach* 05/23/2017


## Description
 There are a lot of libraries, and frameworks that lend themselves much better to the task of creating games than Rails. However because of this reason, and the limitation originally set on this project, I set out to make a sort of game/engine that did not require anything outside of Ruby, Javascript, and off course Rails.
## The Game
 Tears of Iron is a resource management, adventure/puzzle game.  You play as R-088 who has a damaged power capacitor causing extra drain on his powersource.  In order to get it repaired he has returned to his place of origin to find Hector, his creator, for repairs.  However, R-088 arrives back home to find everything in ruins, and it's populace missing. The only thing left standing is a new looking robotics facility heavily guarded by other robots. Will R-088 be able to find Hector before his power runs out?
## Controls
  Movement: The buttons in the blue box below the game world can be used to move R-088. The buttons will only appear when it is a valid move. Additionally movement can be done using WSAD as long as the blue box has the focus (i.e has been clicked on).

## Doors/Switch/Items
 Can be inspected by using the mouse to click on them. _b note to use a battery click on it in your inventory._

## Game Over
 When R-088's Battery Level is 0 it's game over.





## Setup/Installation Requirements
* Ruby2.4.0
* Clone this repo: https://github.com/tyedye105/railsTearsOfIron
* Start Postgres
* In The terminal: $rails db:setup
* In The terminal: $rails s
* Go to localhost:3000, and check out the app!

###Known bugs
  The ajax response for doors does not always work. If stuck on a door view, just refresh the page.

## Technologies Used

_hmtl, css, Ruby, Rails, Paperclip, Devise, Javascript, Jquery

### License

*MIT License*

Copyright (c) 2017 **_Marty Kovach_**
