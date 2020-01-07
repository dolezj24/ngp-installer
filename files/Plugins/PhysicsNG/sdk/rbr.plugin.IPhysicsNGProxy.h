// vim: set ts=4 :
///////////////////////////////////////////////////////////
//  rbr.plugin.IPhysicsNGProxy.h
//  Implementation of the Class IPhysicsNGProxy
//  Created on:      22-Feb-2014 17:34:36
//  Original author: Guenter Schlupf
///////////////////////////////////////////////////////////
#pragma once

#include "rbr.plugin.IProxy.h"

#include <windows.h>

namespace rbr { namespace plugin { 

/// <summary>
/// The IPhysicsNGProxy interface defines methods to query information
/// from
/// and interact with the PhysicsNG patch plugin. You get a pointer to
/// an
/// implementing instance via PhysicsNG.DLLs exported CreateProxy
/// function or by calling the create() method which already deals with
/// the GetModuleHandle/GetProcAddress hassle.
/// </summary>
class IPhysicsNGProxy 
    : public rbr::plugin::IProxy
{
private:
    typedef IPhysicsNGProxy* (*CreateProxyFunc)();

public:
    /// <summary>
    /// Destructor.
    /// </summary>
    virtual ~IPhysicsNGProxy()
    {

    }
    /// <summary>
    /// Returns the API version number. If we add
    /// new methods in the future this API version will be incremented. Only
    /// methods fitting the current API version may be called via the proxy
    /// interface!
    /// The current version is 2.
    /// Since: API version 1.
    /// </summary>
    virtual unsigned getApiVersion() const = 0;
    /// <summary>
    /// Returns true if the material maps patch is activated. False otherwise.
    /// 
    /// 
    /// Since: API version 1.
    /// </summary>
    virtual bool isMaterialMapsPatchActive() const = 0;
    /// <summary>
    /// Returns the revision number of the implemented physics (tyres,
    /// materials, cars etc).
    /// Since: API version 2.
    /// </summary>
    virtual unsigned getPhysicsRevision() const = 0;
    /// <summary>
    /// Creates and returns an IPhysicsNGProxy instance by calling PhysicsNG
    /// CreateProxy function.
    /// Returns a NULL pointer if PhysicsNG.dll is not loaded or does not
    /// have the exported CreateProxy function.
    /// You may delete the returned instance when you no longer need it.
    /// </summary>
    static IPhysicsNGProxy* create()
    {
        HMODULE module = ::GetModuleHandle("PhysicsNG.dll");
        if (module)
        {
            CreateProxyFunc createProxy
                = (CreateProxyFunc) ::GetProcAddress(module, "CreateProxy");
            if (createProxy)
            {
                return createProxy();
            }
        }
        return NULL;
    }

};

}}



