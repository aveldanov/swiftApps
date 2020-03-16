//
//  main.swift
//  ProtocolsAndDelegates-rev5
//
//  Created by Veldanov, Anton on 3/15/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//


protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport? //any delegate must have AdvancedLifeSupport datatype
    
    func assessSituation(){
        print("Assess Situation")
    }
    
    func medicalEmergency(){
        print(delegate!)
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    init(handler:EmergencyCallHandler) {
        handler.delegate = self
    }
    
    // listener from EmergencyCallHandler
    func performCPR() {
        print("Paramedics performs CPR")
    }
}

class Doctor: AdvancedLifeSupport{
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    
    func performCPR() {
        print("Doctor performs CPR")
    }
    func useStethescope(){
        print("Doctor using stethescope")
    }
    
    
}


class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Surgeon performs CPR add-on")
    }
    
    func useDrill(){
        print("Surgeon using a drill")
    }
}


let callHandler1 = EmergencyCallHandler()
//let paramedic1 = Paramedic(handler: callHandler1)

let surgeon1 = Surgeon(handler: callHandler1)


callHandler1.assessSituation()
callHandler1.medicalEmergency()
