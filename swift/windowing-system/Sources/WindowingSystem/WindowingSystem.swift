// TODO: Define the Position struct
struct Position {
    var x:Int = 0
    var y:Int = 0
    
    mutating func moveTo(newX: Int, newY: Int) {
        self.x = newX
        self.y = newY
    }
}

// TODO: Define the Size struct
struct Size {
    var width:Int = 80
    var height: Int = 60
    
    mutating func resize(newWidth: Int, newHeight:Int) {
        self.width = newWidth
        self.height = newHeight
    }
    
}

// TODO: Define the Window class
class Window {
    var title:String = "New Window"
    let screenSize:Size = Size(width: 800, height: 600)
    var size:Size = Size()
    var position:Position = Position()
    var contents:String? = nil
    
    func resize(to:Size) -> () {
        func meetsMinimumSize(inputToSize:Int) -> (Int) {
            if inputToSize > 0 {
                return inputToSize
            } else {
                return 1
            }
        }
        
        func newResizeFitsScreenSize(inputToSize:Int, screenSizeDimension:Int) -> (Int) {
            if inputToSize > screenSizeDimension {
                return screenSizeDimension
            } else {
                return inputToSize
            }
        }
        
        func checkNewResize(inputToSize:Int, screenSizeDimension:Int) -> (Int) {
            var output:Int = inputToSize
            output = meetsMinimumSize(inputToSize: output)
            output = newResizeFitsScreenSize(inputToSize: output, screenSizeDimension: screenSizeDimension)
            
            return output
        }
        
        let toWidth:Int = checkNewResize(inputToSize: to.width, screenSizeDimension:self.screenSize.width)
        let toHeight:Int = checkNewResize(inputToSize: to.height, screenSizeDimension: self.screenSize.height)
        
        size.width = toWidth
        size.height = toHeight
    }
    
    func move(to:Position) -> () {
        fatalError()
    }
    
    func update(title:String) -> () {
        fatalError()
    }
    
    func update(text:String?) -> () {
        fatalError()
    }
    
    func display() -> () {
        fatalError()
    }
    
}

// Step 7: Create a new Window
