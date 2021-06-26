

import Foundation

var menuItem = 0
var settingCar: Actions!
var sportCar = SportCar(
    mark: "bmw x5",
    year: "2021",
    trunkVolume: 10,
    bodyVolume: 5,
    isEngineRun: false,
    isWindowOpen: false,
    isTrunkFull: false,
    isBodyFull: false,
    turbine: "Stage 2")

var trackCar = TrackCar(
    mark: "ZIL",
    year: "2020",
    trunkVolume: 15,
    bodyVolume: 8,
    isEngineRun: false,
    isWindowOpen: false,
    isTrunkFull: false,
    isBodyFull: false,
    trailerVolume: 50)


repeat {
    print("-= Select Car =-")
    print("1 - Sport Car")
    print("2 - Track Car")
    print("0 - Exit")
    print("Enter menu item: ")
    
    menuItem = Int (readLine() ?? "") ?? 0
    print("\n")
    startProgram(menuItem)
    print("\n")
    
} while menuItem != 0


private func startProgram(_ menuItem: Int) {
    switch menuItem {
    case 1:
        settingCar = Actions(car: sportCar)
        settinsCar(settingCar)
        break
    case 2:
        settingCar = Actions(car: trackCar)
        settinsCar(settingCar)
        break
    default:
        break
    }
}

private func settinsCar(_ carSetting: Actions) {
    repeat {
        print("-= Menu =-")
        print("1 - run car")
        print("2 - stop cur")
        print("3 - open windows")
        print("4 - close windows")
        print("5 - load cargo into track")
        print("6 - load cargo into body")
        print("7 - unload cargo into track")
        print("8 - unload cargo into body")
        print("9 - turbine name")
        print("10 - trailer Volume")
        print("0 - Back")
        print("Enter menu item: ")
        
        menuItem = Int (readLine() ?? "") ?? 0
        print("\n")
        settingsCars(menuItem, carSetting)
        print("\n")
        
    } while menuItem != 0
}

private func settingsCars(_ menuItem: Int,_ carSetting: Actions) {
    switch menuItem {
    case 1:
        carSetting.actions(actionCar: .runCar)
        break
    case 2:
        carSetting.actions(actionCar: .stopCar)
        break
    case 3:
        carSetting.actions(actionCar: .openWindow)
        break
    case 4:
        carSetting.actions(actionCar: .closeWindow)
        break
    case 5:
        carSetting.actions(actionCar: .loadCargoIntoTrunk, count: 4)
        break
    case 6:
        carSetting.actions(actionCar: .loadCargoIntoBody, count: 3)
        break
    case 7:
        carSetting.actions(actionCar: .unloadCargoFromTrunk, count: 2)
        break
    case 8:
        carSetting.actions(actionCar: .unloadCargoFromBody, count: 6)
        break
    case 9:
        carSetting.actions(actionCar: .turbine)
        break
    case 10:
        carSetting.actions(actionCar: .trailerVolume)
        break
    default:
        break
    }
}
