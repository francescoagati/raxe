package export;// testing something right
import openfl.display.Sprite
;// testing something right
import openfl.events.Event ;// testing something right
import openfl.Lib

;// require "openfl/Lib"

//--------------------------------------------------
// Some random things right?
// I do not found good syntax how to define what is
// this. Any suggestions?
//--------------------------------------------------
module class<String>
  extends Sprite
  implements Dynamic
  
// Module variables
def static appname = "My Application"
def static instance = new Main() // New instance of self

// Instance variables
def cacheTime : Float
def speed : Float
def sprite : Sprite

def static instance()
  return instance // Return instance of Main
}

// Create a new instance of class Main
// It is just entry point for OpenFL
def new()
  super()

  trace("This is " + appname)

  // Create our super sprite
  sprite = new Sprite()
  sprite.graphics.beginFill(0x24AFC4)
  sprite.graphics.drawRect(0, 0, 100, 100)
  sprite.y = 50
  addChild(sprite)

  // Initialize rest of things
  speed = 0.3
  cacheTime = Lib.getTimer()

  // Event listener magic, hell yeah
  addEventListener(Event.ENTER_FRAME, def(event)
    var currentTime = Lib.getTimer ()
    update (currentTime - cacheTime)
    cacheTime = currentTime
  })
}

// Just main loop. I love them.
def update(deltaTime)
  if (sprite.x + sprite.width >= stage.stageWidth || sprite.x <= 0)  
    speed *= -1
  }

  sprite.x += speed * deltaTime
}

// 
// Below is just comment test for compiler
// 
// -- testing something right
// require "openfl/display/Sprite"
// -- testing something right
// require "openfl/events/Event" -- testing something right
// require "openfl/Lib"
// 
// -- require "openfl/Lib"
// 
// ----------------------------------------------------
// -- Some random things right?
// -- I do not found good syntax how to define what is
// -- this. Any suggestions?
// ----------------------------------------------------
// module class<String>
//   extends Sprite
//   implements Dynamic
  
// -- Module variables
// def static appname = "My Application"
// def static instance = new Main() -- New instance of self
// 
// -- Instance variables
// def cacheTime : Float
// def speed : Float
// def sprite : Sprite
// 
// def static instance()
//   return instance -- Return instance of Main
// end

// -- Create a new instance of class Main
// -- It is just entry point for OpenFL
// def new()
//   super()
// 
//   trace("This is " + appname)
// 
//   -- Create our super sprite
//   sprite = new Sprite()
//   sprite.graphics.beginFill(0x24AFC4)
//   sprite.graphics.drawRect(0, 0, 100, 100)
//   sprite.y = 50
//   addChild(sprite)
// 
//   -- Initialize rest of things
//   speed = 0.3
//   cacheTime = Lib.getTimer()
// 
//   -- Event listener magic, hell yeah
//   addEventListener(Event.ENTER_FRAME, def(event)
//     var currentTime = Lib.getTimer ()
//     update (currentTime - cacheTime)
//     cacheTime = currentTime
//   end)
// end

// -- Just main loop. I love them.
// def update(deltaTime)
//   if (sprite.x + sprite.width >= stage.stageWidth || sprite.x <= 0)  
//     speed *= -1
//   end

//   sprite.x += speed * deltaTime
// end