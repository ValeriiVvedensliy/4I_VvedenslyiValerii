

class SportCar: Car {
    let turbine: String
    
    init(mark: String, year: String, trunkVolume: Int, bodyVolume: Int, isEngineRun: Bool, isWindowOpen: Bool, isTrunkFull: Bool, isBodyFull: Bool, turbine: String) {
        
        self.turbine = turbine
        super.init(mark: mark, year: year, trunkVolume: trunkVolume, bodyVolume: bodyVolume, isEngineRun: isEngineRun, isWindowOpen: isWindowOpen, isTrunkFull: isTrunkFull, isBodyFull: isBodyFull)
    }
}
