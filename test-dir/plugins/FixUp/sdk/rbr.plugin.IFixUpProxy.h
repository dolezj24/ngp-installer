// vim: set ts=4 :
///////////////////////////////////////////////////////////
//  rbr.plugin.IFixUpProxy.h
//  Implementation of the Class IFixUpProxy
//  Created on:      16-Dez-2012 09:45:04
//  Original author: Guenter Schlupf
///////////////////////////////////////////////////////////
#pragma once

#include "rbr.plugin.IProxy.h"

#include <windows.h>

namespace rbr { namespace plugin { 

/// <summary>
/// The IFixUpProxy interface defines methods to query information from
/// and interact with the FixUp patch plugin. You get a pointer to an
/// implementing instance via FixUp.DLLs exported CreateProxy function or
/// by calling the create() method which already deals with the
/// GetModuleHandle/GetProcAddress hassle.
/// </summary>
class IFixUpProxy 
    : public rbr::plugin::IProxy
{

private:
    typedef IFixUpProxy* (*CreateProxyFunc)();
public:

    /// <summary>
    /// Destructor.
    /// </summary>
    virtual ~IFixUpProxy() {}
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
    /// Since: API version 1.
    /// </summary>
    virtual bool isMaterialMapsPatchActive() const = 0;
    /// <summary>
    /// Returns the revision number of the implemented patches.
    /// Since: API version 2.
    /// </summary>
    virtual unsigned getPatchRevision() const = 0;

    /// <summary>
    /// Creates and returns an IFixUpProxy instance by calling FixUps
    /// CreateProxy function.
    /// Returns a NULL pointer if FixUp.dll is not loaded or does not have
    /// the exported CreateProxy function.
    /// You may delete the returned instance when you no longer need it.
    /// </summary>
    static IFixUpProxy* create()
    {
        HMODULE module = ::GetModuleHandle("FixUp.dll");
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


