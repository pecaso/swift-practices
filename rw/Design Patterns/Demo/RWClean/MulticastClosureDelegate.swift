//
//  MulticastClosureDelegate.swift
//  RWClean
//
//  Created by Yasin Akbaş on 20.09.2019.
//  Copyright © 2019 Razeware, LLC. All rights reserved.
//
import Foundation

// MARK: - MulticastClosureDelegate
public class MulticastClosureDelegate<Success, Failure> {
    
    // MARK: - Callback
    class Callback {
        let queue: DispatchQueue
        let success: Success
        let failure: Failure
        init(queue: DispatchQueue, success: Success, failure: Failure) {
            self.queue = queue
            self.success = success
            self.failure = failure
        }
    }
    
    // MARK: - Instance Properties
    fileprivate var mapTable = NSMapTable<AnyObject, NSMutableArray>.weakToStrongObjects()
    
    public var count: Int {
        return getCallbacks(removeAfter: false).count
    }
    
    // MARK: - Instance Methods
    public func addClosurePair(for objectKey: AnyObject,
                               queue: DispatchQueue = .main,
                               success: Success,
                               failure: Failure) {
        let callBack = Callback(queue: queue, success: success, failure: failure)
        let array = mapTable.object(forKey: objectKey) ?? NSMutableArray()
        array.add(callBack)
        mapTable.setObject(array, forKey: objectKey)
    }
    
    public func getSuccessTuples(removeAfter: Bool = true) -> [(Success, DispatchQueue)] {
        return getCallbacks(removeAfter: removeAfter).map {
            return ($0.success, $0.queue)
        }
    }
    
    public func getFailureTuples(removeAfter: Bool = true) -> [(Failure, DispatchQueue)] {
        return getCallbacks(removeAfter: removeAfter).map {
            return ($0.failure, $0.queue)
        }
    }
    
    fileprivate func getCallbacks(removeAfter: Bool = true) -> [Callback] {
        let objects = mapTable.keyEnumerator().allObjects as [AnyObject]
        let callbacks: [Callback] = objects.reduce([]) { (combinedArray, objectKey) in
            let array = mapTable.object(forKey: objectKey)! as! [Callback]
            return combinedArray + array
        }
        
        guard removeAfter else { return callbacks }
        objects.forEach { mapTable.removeObject(forKey: $0) }
        return callbacks
    }
}
