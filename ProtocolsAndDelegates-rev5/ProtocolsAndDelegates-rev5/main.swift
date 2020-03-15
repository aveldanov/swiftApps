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
    var delegate: AdvancedLifeSupport?
    
    func assessSituation(){
        print(delegate.self)
        print("Asses Situation")
    }
    
    func medicalEmergency(){
        
        delegate?.performCPR()
    }
}


struct Paramedic: AdvancedLifeSupport {
    // pick up a pager
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    
    func performCPR() {
        print("Param Perf CPR")
    }
    
    
}



class Doctor:AdvancedLifeSupport {
    
//    // pick up a pager
//    init(handler: EmergencyCallHandler) {
//        handler.delegate = self
//    }
    
    
    
    func performCPR() {
        print("Doc perf CPR")
    }
    
    func userStethescope(){
        
        print("Doctor Stethescoper")
    }
}


class Surgeon: Doctor{
    
    override func performCPR() {
        super.performCPR() // keep whatever was in the first version
        print("Surgeon perf CPR and sings")
    }
    
    func useElectricDrill(){
        
        print("Drill has been used")
        
    }
    
}



let callHandler1 = EmergencyCallHandler()
//let paramedic1 = Paramedic(handler: callHandler1)
//callHandler1.assessSituation()
//callHandler1.medicalEmergency()

callHandler1.medicalEmergency()

let surgeon = Surgeon()
surgeon.
