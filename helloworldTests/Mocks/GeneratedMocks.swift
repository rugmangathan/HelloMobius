// MARK: - Mocks generated from file: helloworldTests/counter/SpyCounterViewActions.swift at 2020-10-12 13:40:46 +0000

//
//  MockCounterViewActions.swift
//  helloworldTests
//
//  Created by Captain America on 20/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

import Cuckoo
@testable import helloworld

import helloworld


 class MockSpyCounterViewActions: SpyCounterViewActions, Cuckoo.ClassMock {
    
     typealias MocksType = SpyCounterViewActions
    
     typealias Stubbing = __StubbingProxy_SpyCounterViewActions
     typealias Verification = __VerificationProxy_SpyCounterViewActions

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SpyCounterViewActions?

     func enableDefaultImplementation(_ stub: SpyCounterViewActions) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func showCannotGoBelowZeroAlert()  {
        
    return cuckoo_manager.call("showCannotGoBelowZeroAlert()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.showCannotGoBelowZeroAlert()
                ,
            defaultCall: __defaultImplStub!.showCannotGoBelowZeroAlert())
        
    }
    

	 struct __StubbingProxy_SpyCounterViewActions: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showCannotGoBelowZeroAlert() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSpyCounterViewActions.self, method: "showCannotGoBelowZeroAlert()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SpyCounterViewActions: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showCannotGoBelowZeroAlert() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showCannotGoBelowZeroAlert()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SpyCounterViewActionsStub: SpyCounterViewActions {
    

    

    
     override func showCannotGoBelowZeroAlert()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

