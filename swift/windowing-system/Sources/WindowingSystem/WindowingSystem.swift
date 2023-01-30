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

        
        func checkSizeX(inputToSize:Int) -> Int {
            var output:Int
            output = meetsMinimumSize(inputToSize: inputToSize)
            
            
            return output
        }
        
        func checkSizeY(inputToSize:Int) -> Int {
            var output:Int
            output = meetsMinimumSize(inputToSize: inputToSize)
            
            
            return output
        }
        
                
        let toWidth:Int = checkSizeX(inputToSize: to.width)
        let toHeight:Int = checkSizeY(inputToSize: to.height)
        
        size.width = toWidth
        size.height = toHeight
    }
    
    func move(to:Position) -> () {
//        fatalError()
        var toPosX:Int = to.x
        var toPosY:Int = to.y
        
        let currentSizeWidth:Int = self.screenSize.width
        let currentSizeHeight:Int = self.screenSize.height
        
        let farthestPointX:Int = grabFarthestPoint(positionAxis: toPosX, sizeAxis: currentSizeHeight)
        let farthestPointY:Int = grabFarthestPoint(positionAxis: toPosY, sizeAxis: currentSizeHeight)
        
        if toPosX < 0 {
            toPosX = 0
        } else if farthestPointX >= currentSizeWidth{
            toPosX = currentSizeWidth - self.size.width

        }
        
        if toPosY < 0 {
            toPosY = 0
        } else if farthestPointY > currentSizeHeight {
            toPosY = currentSizeHeight - self.size.height
        }
        
        self.position.x = toPosX
        self.position.y = toPosY
        
    }
    
    func grabFarthestPoint(positionAxis:Int, sizeAxis:Int) -> (Int) {
        var output:Int
        
        output = positionAxis + sizeAxis
        
        return output
    }
    
    func update(title:String) -> () {
        self.title = title
        
    }
    
    func update(text:String?) -> () {
        self.contents = text

    }
    
    func display() -> (String) {
        var output:String
        
        // "dis" stands for "display"
        let disTitle:String = self.title
        let disPosX = self.position.x
        let disPoxY = self.position.y
        let disSizeWidth = self.size.width
        let disSizeHeight = self.size.height
        var disContents:String
        
        if self.contents == nil {
            disContents = "[This window intentionally left blank]"
        } else {
            disContents = self.contents!
        }
         
        output = """
        \(disTitle)
        Position: (\(disPosX), \(disPoxY)), Size: (\(disSizeWidth) x \(disSizeHeight))
        \(disContents)
        
        """
        
        
        return output
    }
    
}

// Step 7: Create a new Window
let mainResize:Size = Size(width: 400, height: 300)
let mainMove:Position = Position(x: 100, y: 100)
let mainTitle:String = "Main Window"
let mainText:String? = "This is the main window"

var mainWindow:Window {
    let newWindow:Window = Window()
    newWindow.resize(to: mainResize)
    newWindow.move(to: mainMove)
    newWindow.update(title: mainTitle)
    newWindow.update(text: mainText)
    return newWindow
}
