// vim: set ts=4 :
///////////////////////////////////////////////////////////
//  rbr.plugin.IProxy.h
//  Implementation of the Class IProxy
//  Created on:      22-Feb-2014 17:32:06
//  Original author: Guenter Schlupf
///////////////////////////////////////////////////////////
#pragma once




namespace rbr { namespace plugin { 

/// <summary>
/// The IProxy interface defines methods to query information from
/// and interact with a patch plugin. You get a pointer to an
/// implementing instance via the plugin DLL's exported CreateProxy
/// function or by calling the create() method which already deals with
/// the GetModuleHandle/GetProcAddress hassle (see implementing
/// interfaces).
/// </summary>
class IProxy
{

public:
    /// <summary>
    /// Destructor.
    /// </summary>
    virtual ~IProxy()
    {

    }
    /// <summary>
    /// Returns the API version number. If we add
    /// new methods in the future this API version will be incremented. Only
    /// methods fitting the current API version may be called via the proxy
    /// interface!
    /// Since: API version 1.
    /// </summary>
    virtual unsigned getApiVersion() const = 0;

};

}}



