func playerDidMove(_ direction: String) {
    if direction == "up" ||
       direction == "down" ||
       direction == "left" ||
       direction == "right" {
        print("Player moved \(direction)")
    } else {
        print("Oops! That direction doesn't make sense: \(direction)")
    }
}

playerDidMove("up")
playerDidMove("left")
playerDidMove("dwn")
playerDidMove("Up")



enum Direction {
    case up
    case down
    case left
    case right

    var excited: String {
        switch self {
        case .up:
            return "UP"
        case .down:
            return "DOWN"
        case .left:
            return "LEFT"
        case .right:
            return "RIGHT"
        }
    }
}

let direction1 = Direction.up
let direction2: Direction = .down
var direction3: Direction = .right

let direction = Direction.left

func playerDidMove(_ direction: Direction) {
    print("Player moved \(direction.excited)")
}

playerDidMove(direction1)
playerDidMove(direction2)
playerDidMove(direction3)

playerDidMove(.left)


enum cardinalDirections {
    case north
    case south
    case east
    case west
    
    var allCaps: String {
        switch self {
        case .north:
            return "NORTH"
        case .south:
            return "SOUTH"
        case .east:
            return "EAST"
        case .west:
            return "WEST"
        }
    }
}

func regions(_ region: cardinalDirections) {
    print("Let's go \(region.allCaps)!")
}

regions(.east) //calls the function with the region = the enum case .east

let region1: cardinalDirections = .north //need to use the dot, can't call the var allCaps here

print(region1)
print(region1.allCaps)
