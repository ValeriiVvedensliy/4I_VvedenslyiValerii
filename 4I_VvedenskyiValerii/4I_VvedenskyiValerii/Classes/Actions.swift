

class Actions: ActionSetting {
    var car: Car
    
    init(car: Car) {
        self.car = car
    }
    
    func actions(actionCar: ActionsCar, count: Int = 0) {
        switch actionCar {
        case .runCar:
            runCar()
        case .stopCar:
            stopCar()
        case .openWindow:
            openWindow()
        case .closeWindow:
            closeWindow()
        case .loadCargoIntoTrunk:
            loadCargoIntoTrunk(count: count)
        case .loadCargoIntoBody:
            loadCargoIntoBody(count: count)
        case .unloadCargoFromTrunk:
            unloadCargoFromTrunk(count: count)
        case .unloadCargoFromBody:
            unloadCargoFromBody(count: count)
        case .turbine:
            turbineName()
        case.trailerVolume:
            trailerVolume()
        }
    }
    
    private func runCar() {
        if car.isEngineRun {
            print("\(car.mark) has allready run")
        }
        
        print("\(car.mark) is running")
    }
    
    private func stopCar() {
        if car.isEngineRun {
            print("\(car.mark) stoped")
        }
        else {
            print("\(car.mark) has allready stoped")
        }
    }
    
    private func openWindow() {
        if car.isWindowOpen {
            print("windows \(car.mark) has allready opened")
        }
        else {
            print("windows \(car.mark) opened")
        }
    }
    
    private func closeWindow() {
        if car.isWindowOpen {
            print("windows \(car.mark) clossed")
        }
        else {
            print("windows \(car.mark) has allready clossed")
        }
    }
    
    private func loadCargoIntoTrunk(count: Int) {
        if count < car.trunkVolume{
            print("trunck \(car.mark) is loading")
            car.trunkVolume += count
        }
        else {
            car.isTrunkFull = true
            print("trunck \(car.mark) has allready fulled")
        }
    }
    
    private func loadCargoIntoBody(count: Int) {
        if count < car.bodyVolume{
            print("body \(car.mark) is loading")
            car.bodyVolume += count
        }
        else{
            car.isBodyFull = true
            print("body \(car.mark) has allready fulled")
        }
    }
    
    private func unloadCargoFromTrunk(count: Int) {
        if car.trunkVolume > 0 {
            print("trunck \(car.mark) is unloading")
            car.trunkVolume -= count
        }
        else {
            car.isTrunkFull = false
            print("trunck \(car.mark) id empty")
        }
    }
    
    private func unloadCargoFromBody(count: Int) {
        if car.bodyVolume > 0 {
            print("body \(car.mark) is unloading")
            car.bodyVolume -= count
        }
        else{
            car.isBodyFull = false
            print("body \(car.mark) is empty")
        }
    }
    
    private func turbineName(){
        switch self.car {
        case let sportCar as SportCar:
            print("\(sportCar.mark) turbine name: \(sportCar.turbine)")
        default:
            print("\(car.mark) dosen't have turbine")
        }
    }
    
    private func trailerVolume(){
        switch self.car {
        case let trackCar as TrackCar:
            print("\(trackCar.mark) trailer volume: \(trackCar.trailerVolume)")
        default:
            print("\(car.mark) dosen't have trailer")
        }
    }
}
