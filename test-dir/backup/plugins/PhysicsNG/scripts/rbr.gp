# vim: set tw=0 sw=4 :
#   File:       rbr.gp
#   Version:    1.02
#   Date:       2018-10-13

totalSteps(dummy) = column("totalSteps")

progress(dummy) = column("progress")

raceTime(dummy) = column("raceTime")

speed(dummy) = column("speed")

driveLineLocation(dummy) = column("driveLineLocation")

footbrakePressure(dummy) = column("footbrakePressure")

handbrakePressure(dummy) = column("handbrakePressure")

throttle(dummy) = column("throttle")

steering(dummy) = column("steering")

brake(dummy) = column("brake")

handbrake(dummy) = column("handbrake")

clutch(dummy) = column("clutch")

carLinearVelocityCo(co) = column(sprintf("vecLinearVelocityCar.%s", co))
carAngularVelocityCo(co) = column(sprintf("vecAngularVelocityCar.%s", co))

carLinearAccelerationCo(co) = column(sprintf("vecLinearAccelerationCar.%s", co))
carAngularAccelerationCo(co) = column(sprintf("vecAngularAccelerationCar.%s", co))

radCoolTemp(dummy) = column("radiatorCoolantHeatState.temperature") - 273
engCoolTemp(dummy) = column("engineCoolantHeatState.temperature") - 273
engTemp(dummy) = column("engineTemperature") - 273

treadTemp(shaftName) = column(sprintf("%s.treadTemperature", shaftName)) - 273
tyreTemp(shaftName) = column(sprintf("%s.tyreTemperature", shaftName)) - 273
tyreStateTemp(shaftName) = column(sprintf("%s.temperature", shaftName)) - 273
tyreStatePressure(shaftName) = column(sprintf("%s.pressure", shaftName))
segmentTemp(shaftName) = \
        ( \
            column(sprintf("%s.segmentData[%i].temperature", shaftName, \
                           column(sprintf("%s.currentTyreSegment", shaftName)))) \
        ) - 273

avgSegmentTemp(shaftName) = \
        ( \
            column(sprintf("%s.segmentData[%i].temperature", shaftName, 0)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 1)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 2)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 3)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 4)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 5)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 6)) \
          + column(sprintf("%s.segmentData[%i].temperature", shaftName, 7)) \
        ) / 8 - 273
rubTemp(shaftName) = (0.6 * segmentTemp(shaftName) + 0.4 * treadTemp(shaftName))

tyreWear(shaftName) = \
        ( \
            column(sprintf("%s.wear[%i]", shaftName, \
                           column(sprintf("%s.currentTyreSegment", shaftName)))) \
        )

avgTyreWear(shaftName) = \
        ( \
            column(sprintf("%s.wear[%i]", shaftName, 0)) \
          + column(sprintf("%s.wear[%i]", shaftName, 1)) \
          + column(sprintf("%s.wear[%i]", shaftName, 2)) \
          + column(sprintf("%s.wear[%i]", shaftName, 3)) \
          + column(sprintf("%s.wear[%i]", shaftName, 4)) \
          + column(sprintf("%s.wear[%i]", shaftName, 5)) \
          + column(sprintf("%s.wear[%i]", shaftName, 6)) \
          + column(sprintf("%s.wear[%i]", shaftName, 7)) \
        ) / 8

deflection(shaftName) = column(sprintf("%s.deflection", shaftName))
deflectionVelocity(shaftName) = column(sprintf("%s.deflectionVelocity", shaftName))
helperSpringActive(shaftName) = column(sprintf("%s.helperSpringActive", shaftName))

springForce(shaftName) = column(sprintf("%s.springForce", shaftName))
dampingForce(shaftName) = column(sprintf("%s.dampingForce", shaftName))
strutForce(shaftName) = column(sprintf("%s.strutForce", shaftName))
rollbarForce(shaftName) = column(sprintf("%s.rollbarForce", shaftName))

brakeDiskLayerTemp(shaftName) = column(sprintf("%s.brakeDiskLayerTemp", shaftName)) / 1e6 - 273
brakeDiskTemp(shaftName) = column(sprintf("%s.brakeDiskTemp", shaftName)) / 1e6 - 273
brakeWear(shaftName) = column(sprintf("%s.brakeWear", shaftName))

