
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v1.1.4322
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 1:0:5000:0
}
.assembly extern stdole
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 7:0:3300:0
}
.assembly Interop.DexterLib
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 62 36 38 2D 36 31 66 39   // ..$78530b68-61f9
                                                                                                  2D 31 31 64 32 2D 38 63 61 64 2D 30 30 61 30 32   // -11d2-8cad-00a02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ImportedFromTypeLibAttribute::.ctor(string) = ( 01 00 09 44 65 78 74 65 72 4C 69 62 00 00 )       // ...DexterLib..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module DexterLib.dll
// MVID: {D998A48C-2869-49A9-8775-F8D7618D497A}
.imagebase 0x00400000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00470000


// =============== CLASS MEMBERS DECLARATION ===================

.class interface public abstract auto ansi import DexterLib.IResize
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 34 41 44 41 36 33 41 30 2D 37 32 44 35   // ..$4ADA63A0-72D5
                                                                                                  2D 31 31 44 32 2D 39 35 32 41 2D 30 30 36 30 30   // -11D2-952A-00600
                                                                                                  38 31 38 34 30 42 43 00 00 )                      // 81840BC..
  .method public hidebysig newslot abstract virtual 
          instance void  get_Size([out] int32& piHeight,
                                  [out] int32& piWidth,
                                  [out] int32& pFlag) runtime managed internalcall
  {
  } // end of method IResize::get_Size

  .method public hidebysig newslot abstract virtual 
          instance void  get_InputSize([out] int32& piHeight,
                                       [out] int32& piWidth) runtime managed internalcall
  {
  } // end of method IResize::get_InputSize

  .method public hidebysig newslot abstract virtual 
          instance void  put_Size([in] int32 Height,
                                  [in] int32 Width,
                                  [in] int32 Flag) runtime managed internalcall
  {
  } // end of method IResize::put_Size

  .method public hidebysig newslot abstract virtual 
          instance void  get_MediaType([out] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IResize::get_MediaType

  .method public hidebysig newslot abstract virtual 
          instance void  put_MediaType([in] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IResize::put_MediaType

} // end of class DexterLib.IResize

.class public sequential ansi sealed beforefieldinit DexterLib._AMMediaType
       extends [mscorlib]System.ValueType
{
  .pack 4
  .size 0
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComConversionLossAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public valuetype [mscorlib]System.Guid majortype
  .field public valuetype [mscorlib]System.Guid subtype
  .field public int32 bFixedSizeSamples
  .field public int32 bTemporalCompression
  .field public uint32 lSampleSize
  .field public valuetype [mscorlib]System.Guid formattype
  .field public  marshal( iunknown ) object pUnk
  .field public uint32 cbFormat
  .field public native int pbFormat
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComConversionLossAttribute::.ctor() = ( 01 00 00 00 ) 
} // end of class DexterLib._AMMediaType

.class public auto ansi import DexterLib.AMTimelineClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimeline,
                  DexterLib.AMTimeline,
                  DexterLib.IPersistStream,
                  DexterLib.IAMSetErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 35 2D 36 31 46 39   // ..$78530B75-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  CreateEmptyNode([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                         valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimeline::CreateEmptyNode
  } // end of method AMTimelineClass::CreateEmptyNode

  .method public hidebysig newslot virtual 
          instance void  AddGroup(class DexterLib.IAMTimelineObj  marshal( interface ) pGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::AddGroup
  } // end of method AMTimelineClass::AddGroup

  .method public hidebysig newslot virtual 
          instance void  RemGroupFromList(class DexterLib.IAMTimelineObj  marshal( interface ) pGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::RemGroupFromList
  } // end of method AMTimelineClass::RemGroupFromList

  .method public hidebysig newslot virtual 
          instance void  GetGroup([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppGroup,
                                  int32 WhichGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetGroup
  } // end of method AMTimelineClass::GetGroup

  .method public hidebysig newslot virtual 
          instance void  GetGroupCount(int32& pCount) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetGroupCount
  } // end of method AMTimelineClass::GetGroupCount

  .method public hidebysig newslot virtual 
          instance void  ClearAllGroups() runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::ClearAllGroups
  } // end of method AMTimelineClass::ClearAllGroups

  .method public hidebysig newslot virtual 
          instance void  GetInsertMode(int32& pMode) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetInsertMode
  } // end of method AMTimelineClass::GetInsertMode

  .method public hidebysig newslot virtual 
          instance void  SetInsertMode(int32 Mode) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetInsertMode
  } // end of method AMTimelineClass::SetInsertMode

  .method public hidebysig newslot virtual 
          instance void  EnableTransitions(int32 fEnabled) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::EnableTransitions
  } // end of method AMTimelineClass::EnableTransitions

  .method public hidebysig newslot virtual 
          instance void  TransitionsEnabled(int32& pfEnabled) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::TransitionsEnabled
  } // end of method AMTimelineClass::TransitionsEnabled

  .method public hidebysig newslot virtual 
          instance void  EnableEffects(int32 fEnabled) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::EnableEffects
  } // end of method AMTimelineClass::EnableEffects

  .method public hidebysig newslot virtual 
          instance void  EffectsEnabled(int32& pfEnabled) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::EffectsEnabled
  } // end of method AMTimelineClass::EffectsEnabled

  .method public hidebysig newslot virtual 
          instance void  SetInterestRange(int64 Start,
                                          int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetInterestRange
  } // end of method AMTimelineClass::SetInterestRange

  .method public hidebysig newslot virtual 
          instance void  GetDuration(int64& pDuration) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDuration
  } // end of method AMTimelineClass::GetDuration

  .method public hidebysig newslot virtual 
          instance void  GetDuration2(float64& pDuration) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDuration2
  } // end of method AMTimelineClass::GetDuration2

  .method public hidebysig newslot virtual 
          instance void  SetDefaultFPS(float64 FPS) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetDefaultFPS
  } // end of method AMTimelineClass::SetDefaultFPS

  .method public hidebysig newslot virtual 
          instance void  GetDefaultFPS(float64& pFPS) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDefaultFPS
  } // end of method AMTimelineClass::GetDefaultFPS

  .method public hidebysig newslot virtual 
          instance void  IsDirty(int32& pDirty) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::IsDirty
  } // end of method AMTimelineClass::IsDirty

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDirtyRange
  } // end of method AMTimelineClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetCountOfType(int32 Group,
                                        int32& pVal,
                                        int32& pValWithComps,
                                        valuetype DexterLib.TIMELINE_MAJOR_TYPE majortype) runtime managed internalcall
  {
    .param [4]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimeline::GetCountOfType
  } // end of method AMTimelineClass::GetCountOfType

  .method public hidebysig newslot virtual 
          instance void  ValidateSourceNames(int32 ValidateFlags,
                                             class DexterLib.MediaLocator  marshal( interface ) pOverride,
                                             int32 NotifyEventHandle) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 12 44 65 78 74 65 72 4C 69 62 2E 4C 4F 4E   // ...DexterLib.LON
                                                                                                            47 5F 50 54 52 00 00 )                            // G_PTR..
    .override DexterLib.IAMTimeline::ValidateSourceNames
  } // end of method AMTimelineClass::ValidateSourceNames

  .method public hidebysig newslot virtual 
          instance void  SetDefaultTransition(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetDefaultTransition
  } // end of method AMTimelineClass::SetDefaultTransition

  .method public hidebysig newslot virtual 
          instance void  GetDefaultTransition(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDefaultTransition
  } // end of method AMTimelineClass::GetDefaultTransition

  .method public hidebysig newslot virtual 
          instance void  SetDefaultEffect(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetDefaultEffect
  } // end of method AMTimelineClass::SetDefaultEffect

  .method public hidebysig newslot virtual 
          instance void  GetDefaultEffect(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDefaultEffect
  } // end of method AMTimelineClass::GetDefaultEffect

  .method public hidebysig newslot virtual 
          instance void  SetDefaultTransitionB(string  marshal( bstr) pGuid) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetDefaultTransitionB
  } // end of method AMTimelineClass::SetDefaultTransitionB

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetDefaultTransitionB() runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDefaultTransitionB
  } // end of method AMTimelineClass::GetDefaultTransitionB

  .method public hidebysig newslot virtual 
          instance void  SetDefaultEffectB(string  marshal( bstr) pGuid) runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::SetDefaultEffectB
  } // end of method AMTimelineClass::SetDefaultEffectB

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetDefaultEffectB() runtime managed internalcall
  {
    .override DexterLib.IAMTimeline::GetDefaultEffectB
  } // end of method AMTimelineClass::GetDefaultEffectB

  .method public hidebysig newslot virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
    .override DexterLib.IPersistStream::GetClassID
  } // end of method AMTimelineClass::GetClassID

  .method public hidebysig newslot virtual 
          instance void  IsDirty() runtime managed internalcall
  {
    .override DexterLib.IPersistStream::IsDirty
  } // end of method AMTimelineClass::IsDirty

  .method public hidebysig newslot virtual 
          instance void  Load([in] class DexterLib.IStream  marshal( interface ) pstm) runtime managed internalcall
  {
    .override DexterLib.IPersistStream::Load
  } // end of method AMTimelineClass::Load

  .method public hidebysig newslot virtual 
          instance void  Save([in] class DexterLib.IStream  marshal( interface ) pstm,
                              [in] int32 fClearDirty) runtime managed internalcall
  {
    .override DexterLib.IPersistStream::Save
  } // end of method AMTimelineClass::Save

  .method public hidebysig newslot virtual 
          instance void  GetSizeMax([out] valuetype DexterLib._ULARGE_INTEGER& pcbSize) runtime managed internalcall
  {
    .override DexterLib.IPersistStream::GetSizeMax
  } // end of method AMTimelineClass::GetSizeMax

  .method public hidebysig newslot specialname virtual 
          instance class DexterLib.IAMErrorLog 
          marshal( interface ) 
          get_ErrorLog() runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::get_ErrorLog
  } // end of method AMTimelineClass::get_ErrorLog

  .method public hidebysig newslot specialname virtual 
          instance void  set_ErrorLog([in] class DexterLib.IAMErrorLog  marshal( interface ) pVal) runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::set_ErrorLog
  } // end of method AMTimelineClass::set_ErrorLog

  .property class DexterLib.IAMErrorLog ErrorLog()
  {
    .get instance class DexterLib.IAMErrorLog DexterLib.AMTimelineClass::get_ErrorLog()
    .set instance void DexterLib.AMTimelineClass::set_ErrorLog(class DexterLib.IAMErrorLog)
  } // end of property AMTimelineClass::ErrorLog
} // end of class DexterLib.AMTimelineClass

.class interface public abstract auto ansi import DexterLib.AMTimeline
       implements DexterLib.IAMTimeline
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 34 2D 36 31 46 39   // ..$78530B74-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 19 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 43 6C 61 73 73 00 00 )       // imelineClass..
} // end of class DexterLib.AMTimeline

.class interface public abstract auto ansi import DexterLib.IAMTimeline
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 34 2D 36 31 46 39   // ..$78530B74-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  CreateEmptyNode([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                         valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimeline::CreateEmptyNode

  .method public hidebysig newslot abstract virtual 
          instance void  AddGroup(class DexterLib.IAMTimelineObj  marshal( interface ) pGroup) runtime managed internalcall
  {
  } // end of method IAMTimeline::AddGroup

  .method public hidebysig newslot abstract virtual 
          instance void  RemGroupFromList(class DexterLib.IAMTimelineObj  marshal( interface ) pGroup) runtime managed internalcall
  {
  } // end of method IAMTimeline::RemGroupFromList

  .method public hidebysig newslot abstract virtual 
          instance void  GetGroup([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppGroup,
                                  int32 WhichGroup) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetGroup

  .method public hidebysig newslot abstract virtual 
          instance void  GetGroupCount(int32& pCount) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetGroupCount

  .method public hidebysig newslot abstract virtual 
          instance void  ClearAllGroups() runtime managed internalcall
  {
  } // end of method IAMTimeline::ClearAllGroups

  .method public hidebysig newslot abstract virtual 
          instance void  GetInsertMode(int32& pMode) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetInsertMode

  .method public hidebysig newslot abstract virtual 
          instance void  SetInsertMode(int32 Mode) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetInsertMode

  .method public hidebysig newslot abstract virtual 
          instance void  EnableTransitions(int32 fEnabled) runtime managed internalcall
  {
  } // end of method IAMTimeline::EnableTransitions

  .method public hidebysig newslot abstract virtual 
          instance void  TransitionsEnabled(int32& pfEnabled) runtime managed internalcall
  {
  } // end of method IAMTimeline::TransitionsEnabled

  .method public hidebysig newslot abstract virtual 
          instance void  EnableEffects(int32 fEnabled) runtime managed internalcall
  {
  } // end of method IAMTimeline::EnableEffects

  .method public hidebysig newslot abstract virtual 
          instance void  EffectsEnabled(int32& pfEnabled) runtime managed internalcall
  {
  } // end of method IAMTimeline::EffectsEnabled

  .method public hidebysig newslot abstract virtual 
          instance void  SetInterestRange(int64 Start,
                                          int64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetInterestRange

  .method public hidebysig newslot abstract virtual 
          instance void  GetDuration(int64& pDuration) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDuration

  .method public hidebysig newslot abstract virtual 
          instance void  GetDuration2(float64& pDuration) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDuration2

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultFPS(float64 FPS) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetDefaultFPS

  .method public hidebysig newslot abstract virtual 
          instance void  GetDefaultFPS(float64& pFPS) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDefaultFPS

  .method public hidebysig newslot abstract virtual 
          instance void  IsDirty(int32& pDirty) runtime managed internalcall
  {
  } // end of method IAMTimeline::IsDirty

  .method public hidebysig newslot abstract virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDirtyRange

  .method public hidebysig newslot abstract virtual 
          instance void  GetCountOfType(int32 Group,
                                        int32& pVal,
                                        int32& pValWithComps,
                                        valuetype DexterLib.TIMELINE_MAJOR_TYPE majortype) runtime managed internalcall
  {
    .param [4]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimeline::GetCountOfType

  .method public hidebysig newslot abstract virtual 
          instance void  ValidateSourceNames(int32 ValidateFlags,
                                             class DexterLib.MediaLocator  marshal( interface ) pOverride,
                                             int32 NotifyEventHandle) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 12 44 65 78 74 65 72 4C 69 62 2E 4C 4F 4E   // ...DexterLib.LON
                                                                                                            47 5F 50 54 52 00 00 )                            // G_PTR..
  } // end of method IAMTimeline::ValidateSourceNames

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultTransition(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetDefaultTransition

  .method public hidebysig newslot abstract virtual 
          instance void  GetDefaultTransition(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDefaultTransition

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultEffect(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetDefaultEffect

  .method public hidebysig newslot abstract virtual 
          instance void  GetDefaultEffect(valuetype [mscorlib]System.Guid& pGuid) runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDefaultEffect

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultTransitionB(string  marshal( bstr) pGuid) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetDefaultTransitionB

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetDefaultTransitionB() runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDefaultTransitionB

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultEffectB(string  marshal( bstr) pGuid) runtime managed internalcall
  {
  } // end of method IAMTimeline::SetDefaultEffectB

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetDefaultEffectB() runtime managed internalcall
  {
  } // end of method IAMTimeline::GetDefaultEffectB

} // end of class DexterLib.IAMTimeline

.class interface public abstract auto ansi import DexterLib.IAMTimelineObj
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 37 2D 36 31 46 39   // ..$78530B77-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetStartStop

  .method public hidebysig newslot abstract virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetStartStop2

  .method public hidebysig newslot abstract virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::FixTimes

  .method public hidebysig newslot abstract virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::FixTimes2

  .method public hidebysig newslot abstract virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetStartStop

  .method public hidebysig newslot abstract virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetStartStop2

  .method public hidebysig newslot abstract virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetPropertySetter

  .method public hidebysig newslot abstract virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetPropertySetter

  .method public hidebysig newslot abstract virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetSubObject

  .method public hidebysig newslot abstract virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetSubObject

  .method public hidebysig newslot abstract virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetSubObjectGUID

  .method public hidebysig newslot abstract virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetSubObjectGUIDB

  .method public hidebysig newslot abstract virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetSubObjectGUID

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetSubObjectGUIDB

  .method public hidebysig newslot abstract virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetSubObjectLoaded

  .method public hidebysig newslot abstract virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimelineObj::GetTimelineType

  .method public hidebysig newslot abstract virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimelineObj::SetTimelineType

  .method public hidebysig newslot abstract virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetUserID

  .method public hidebysig newslot abstract virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetUserID

  .method public hidebysig newslot abstract virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetGenID

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetUserName

  .method public hidebysig newslot abstract virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetUserName

  .method public hidebysig newslot abstract virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetUserData

  .method public hidebysig newslot abstract virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetUserData

  .method public hidebysig newslot abstract virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetMuted

  .method public hidebysig newslot abstract virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetMuted

  .method public hidebysig newslot abstract virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetLocked

  .method public hidebysig newslot abstract virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetLocked

  .method public hidebysig newslot abstract virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetDirtyRange

  .method public hidebysig newslot abstract virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetDirtyRange2

  .method public hidebysig newslot abstract virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetDirtyRange

  .method public hidebysig newslot abstract virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::SetDirtyRange2

  .method public hidebysig newslot abstract virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::ClearDirty

  .method public hidebysig newslot abstract virtual 
          instance void  Remove() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::Remove

  .method public hidebysig newslot abstract virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
  } // end of method IAMTimelineObj::RemoveAll

  .method public hidebysig newslot abstract virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetTimelineNoRef

  .method public hidebysig newslot abstract virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetGroupIBelongTo

  .method public hidebysig newslot abstract virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineObj::GetEmbedDepth

} // end of class DexterLib.IAMTimelineObj

.class interface public abstract auto ansi import DexterLib.IPropertySetter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComConversionLossAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 41 45 39 34 37 32 42 44 2D 42 30 43 33   // ..$AE9472BD-B0C3
                                                                                                  2D 31 31 44 32 2D 38 44 32 34 2D 30 30 41 30 43   // -11D2-8D24-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .method public hidebysig newslot abstract virtual 
          instance void  LoadXML([in] object  marshal( iunknown ) pxml) runtime managed internalcall
  {
  } // end of method IPropertySetter::LoadXML

  .method public hidebysig newslot abstract virtual 
          instance void  PrintXML([out] uint8& pszXML,
                                  [in] int32 cbXML,
                                  [out] int32& pcbPrinted,
                                  [in] int32 indent) runtime managed internalcall
  {
  } // end of method IPropertySetter::PrintXML

  .method public hidebysig newslot abstract virtual 
          instance void  CloneProps([out] class DexterLib.PropertySetter&  marshal( interface ) ppSetter,
                                    [in] int64 rtStart,
                                    [in] int64 rtStop) runtime managed internalcall
  {
  } // end of method IPropertySetter::CloneProps

  .method public hidebysig newslot abstract virtual 
          instance void  AddProp([in] valuetype DexterLib.DEXTER_PARAM Param,
                                 [in] valuetype DexterLib.DEXTER_VALUE& paValue) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 50 41 52 41 4D 00 00 )                // TER_PARAM..
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 56 41 4C 55 45 00 00 )                // TER_VALUE..
  } // end of method IPropertySetter::AddProp

  .method public hidebysig newslot abstract virtual 
          instance void  GetProps([out] int32& pcParams,
                                  [out] native int paParam,
                                  [out] native int paValue) runtime managed internalcall
  {
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 50 41 52 41 4D 00 00 )                // TER_PARAM..
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 56 41 4C 55 45 00 00 )                // TER_VALUE..
  } // end of method IPropertySetter::GetProps

  .method public hidebysig newslot abstract virtual 
          instance void  FreeProps([in] int32 cParams,
                                   [in] valuetype DexterLib.DEXTER_PARAM& paParam,
                                   [in] valuetype DexterLib.DEXTER_VALUE& paValue) runtime managed internalcall
  {
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 50 41 52 41 4D 00 00 )                // TER_PARAM..
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 56 41 4C 55 45 00 00 )                // TER_VALUE..
  } // end of method IPropertySetter::FreeProps

  .method public hidebysig newslot abstract virtual 
          instance void  ClearProps() runtime managed internalcall
  {
  } // end of method IPropertySetter::ClearProps

  .method public hidebysig newslot abstract virtual 
          instance void  SaveToBlob([out] int32& pcSize,
                                    [out] native int ppb) runtime managed internalcall
  {
  } // end of method IPropertySetter::SaveToBlob

  .method public hidebysig newslot abstract virtual 
          instance void  LoadFromBlob([in] int32 cSize,
                                      [in] uint8& pb) runtime managed internalcall
  {
  } // end of method IPropertySetter::LoadFromBlob

  .method public hidebysig newslot abstract virtual 
          instance void  SetProps([in] object  marshal( iunknown ) pTarget,
                                  [in] int64 rtNow) runtime managed internalcall
  {
  } // end of method IPropertySetter::SetProps

  .method public hidebysig newslot abstract virtual 
          instance void  PrintXMLW([out] uint16& pszXML,
                                   [in] int32 cchXML,
                                   [out] int32& pcchPrinted,
                                   [in] int32 indent) runtime managed internalcall
  {
  } // end of method IPropertySetter::PrintXMLW

} // end of class DexterLib.IPropertySetter

.class public sequential ansi sealed beforefieldinit DexterLib.DEXTER_PARAM
       extends [mscorlib]System.ValueType
{
  .pack 4
  .size 0
  .field public  marshal( bstr) string Name
  .field public int32 dispID
  .field public int32 nValues
} // end of class DexterLib.DEXTER_PARAM

.class public sequential ansi sealed beforefieldinit DexterLib.__MIDL___MIDL_itf_qedit_0000_0002
       extends [mscorlib]System.ValueType
{
  .pack 4
  .size 0
  .field public  marshal( bstr) string Name
  .field public int32 dispID
  .field public int32 nValues
} // end of class DexterLib.__MIDL___MIDL_itf_qedit_0000_0002

.class public sequential ansi sealed beforefieldinit DexterLib.DEXTER_VALUE
       extends [mscorlib]System.ValueType
{
  .pack 8
  .size 0
  .field public  marshal( struct) object v
  .field public int64 rt
  .field public uint32 dwInterp
} // end of class DexterLib.DEXTER_VALUE

.class public sequential ansi sealed beforefieldinit DexterLib.__MIDL___MIDL_itf_qedit_0000_0003
       extends [mscorlib]System.ValueType
{
  .pack 8
  .size 0
  .field public  marshal( struct) object v
  .field public int64 rt
  .field public uint32 dwInterp
} // end of class DexterLib.__MIDL___MIDL_itf_qedit_0000_0003

.class public auto ansi sealed DexterLib.TIMELINE_MAJOR_TYPE
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DexterLib.TIMELINE_MAJOR_TYPE TIMELINE_MAJOR_TYPE_COMPOSITE = int32(0x00000001)
  .field public static literal valuetype DexterLib.TIMELINE_MAJOR_TYPE TIMELINE_MAJOR_TYPE_TRACK = int32(0x00000002)
  .field public static literal valuetype DexterLib.TIMELINE_MAJOR_TYPE TIMELINE_MAJOR_TYPE_SOURCE = int32(0x00000004)
  .field public static literal valuetype DexterLib.TIMELINE_MAJOR_TYPE TIMELINE_MAJOR_TYPE_TRANSITION = int32(0x00000008)
  .field public static literal valuetype DexterLib.TIMELINE_MAJOR_TYPE TIMELINE_MAJOR_TYPE_EFFECT = int32(0x00000010)
  .field public static literal valuetype DexterLib.TIMELINE_MAJOR_TYPE TIMELINE_MAJOR_TYPE_GROUP = int32(0x00000080)
} // end of class DexterLib.TIMELINE_MAJOR_TYPE

.class public auto ansi sealed DexterLib.__MIDL___MIDL_itf_qedit_0000_0007
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DexterLib.__MIDL___MIDL_itf_qedit_0000_0007 TIMELINE_MAJOR_TYPE_COMPOSITE = int32(0x00000001)
  .field public static literal valuetype DexterLib.__MIDL___MIDL_itf_qedit_0000_0007 TIMELINE_MAJOR_TYPE_TRACK = int32(0x00000002)
  .field public static literal valuetype DexterLib.__MIDL___MIDL_itf_qedit_0000_0007 TIMELINE_MAJOR_TYPE_SOURCE = int32(0x00000004)
  .field public static literal valuetype DexterLib.__MIDL___MIDL_itf_qedit_0000_0007 TIMELINE_MAJOR_TYPE_TRANSITION = int32(0x00000008)
  .field public static literal valuetype DexterLib.__MIDL___MIDL_itf_qedit_0000_0007 TIMELINE_MAJOR_TYPE_EFFECT = int32(0x00000010)
  .field public static literal valuetype DexterLib.__MIDL___MIDL_itf_qedit_0000_0007 TIMELINE_MAJOR_TYPE_GROUP = int32(0x00000080)
} // end of class DexterLib.__MIDL___MIDL_itf_qedit_0000_0007

.class interface public abstract auto ansi import DexterLib.IAMTimelineGroup
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 39 45 45 44 34 46 30 30 2D 42 38 41 36   // ..$9EED4F00-B8A6
                                                                                                  2D 31 31 44 32 2D 38 30 32 33 2D 30 30 43 30 44   // -11D2-8023-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComConversionLossAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  SetTimeline(class DexterLib.AMTimeline  marshal( interface ) pTimeline) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetTimeline

  .method public hidebysig newslot abstract virtual 
          instance void  GetTimeline([out] class DexterLib.AMTimeline&  marshal( interface ) ppTimeline) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetTimeline

  .method public hidebysig newslot abstract virtual 
          instance void  GetPriority(int32& pPriority) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetPriority

  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaType([out] valuetype DexterLib._AMMediaType& __MIDL_0043) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaType([in] valuetype DexterLib._AMMediaType& __MIDL_0044) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  SetOutputFPS(float64 FPS) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetOutputFPS

  .method public hidebysig newslot abstract virtual 
          instance void  GetOutputFPS(float64& pFPS) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetOutputFPS

  .method public hidebysig newslot abstract virtual 
          instance void  SetGroupName(string  marshal( bstr) pGroupName) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetGroupName

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetGroupName() runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetGroupName

  .method public hidebysig newslot abstract virtual 
          instance void  SetPreviewMode(int32 fPreview) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetPreviewMode

  .method public hidebysig newslot abstract virtual 
          instance void  GetPreviewMode(int32& pfPreview) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetPreviewMode

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaTypeForVB([in] int32 Val) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetMediaTypeForVB

  .method public hidebysig newslot abstract virtual 
          instance void  GetOutputBuffering([out] int32& pnBuffer) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetOutputBuffering

  .method public hidebysig newslot abstract virtual 
          instance void  SetOutputBuffering([in] int32 nBuffer) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetOutputBuffering

  .method public hidebysig newslot abstract virtual 
          instance void  SetSmartRecompressFormat(int32& pFormat) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetSmartRecompressFormat

  .method public hidebysig newslot abstract virtual 
          instance void  GetSmartRecompressFormat(native int ppFormat) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::GetSmartRecompressFormat

  .method public hidebysig newslot abstract virtual 
          instance void  IsSmartRecompressFormatSet(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::IsSmartRecompressFormatSet

  .method public hidebysig newslot abstract virtual 
          instance void  IsRecompressFormatDirty(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::IsRecompressFormatDirty

  .method public hidebysig newslot abstract virtual 
          instance void  ClearRecompressFormatDirty() runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::ClearRecompressFormatDirty

  .method public hidebysig newslot abstract virtual 
          instance void  SetRecompFormatFromSource(class DexterLib.AMTimelineSrc  marshal( interface ) pSource) runtime managed internalcall
  {
  } // end of method IAMTimelineGroup::SetRecompFormatFromSource

} // end of class DexterLib.IAMTimelineGroup

.class interface public abstract auto ansi import DexterLib.IAMTimelineSrc
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 39 2D 36 31 46 39   // ..$78530B79-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaTimes(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetMediaTimes

  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaTimes2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetMediaTimes2

  .method public hidebysig newslot abstract virtual 
          instance void  ModifyStopTime(int64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::ModifyStopTime

  .method public hidebysig newslot abstract virtual 
          instance void  ModifyStopTime2(float64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::ModifyStopTime2

  .method public hidebysig newslot abstract virtual 
          instance void  FixMediaTimes(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::FixMediaTimes

  .method public hidebysig newslot abstract virtual 
          instance void  FixMediaTimes2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::FixMediaTimes2

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaTimes(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetMediaTimes

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaTimes2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetMediaTimes2

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaLength(int64 Length) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetMediaLength

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaLength2(float64 Length) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetMediaLength2

  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaLength(int64& pLength) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetMediaLength

  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaLength2(float64& pLength) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetMediaLength2

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetMediaName() runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetMediaName

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaName(string  marshal( bstr) newVal) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetMediaName

  .method public hidebysig newslot abstract virtual 
          instance void  SpliceWithNext(class DexterLib.IAMTimelineObj  marshal( interface ) pNext) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SpliceWithNext

  .method public hidebysig newslot abstract virtual 
          instance void  GetStreamNumber(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetStreamNumber

  .method public hidebysig newslot abstract virtual 
          instance void  SetStreamNumber(int32 Val) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetStreamNumber

  .method public hidebysig newslot abstract virtual 
          instance void  IsNormalRate(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::IsNormalRate

  .method public hidebysig newslot abstract virtual 
          instance void  GetDefaultFPS(float64& pFPS) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetDefaultFPS

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultFPS(float64 FPS) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetDefaultFPS

  .method public hidebysig newslot abstract virtual 
          instance void  GetStretchMode(int32& pnStretchMode) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::GetStretchMode

  .method public hidebysig newslot abstract virtual 
          instance void  SetStretchMode(int32 nStretchMode) runtime managed internalcall
  {
  } // end of method IAMTimelineSrc::SetStretchMode

} // end of class DexterLib.IAMTimelineSrc

.class interface public abstract auto ansi import DexterLib.IMediaLocator
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 32 38 38 35 38 31 45 30 2D 36 36 43 45   // ..$288581E0-66CE
                                                                                                  2D 31 31 44 32 2D 39 31 38 46 2D 30 30 43 30 44   // -11D2-918F-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  FindMediaFile(string  marshal( bstr) Input,
                                       string  marshal( bstr) FilterString,
                                       string&  marshal( bstr) pOutput,
                                       int32 Flags) runtime managed internalcall
  {
  } // end of method IMediaLocator::FindMediaFile

  .method public hidebysig newslot abstract virtual 
          instance void  AddFoundLocation(string  marshal( bstr) DirectoryName) runtime managed internalcall
  {
  } // end of method IMediaLocator::AddFoundLocation

} // end of class DexterLib.IMediaLocator

.class interface public abstract auto ansi import DexterLib.IPersistStream
       implements DexterLib.IPersist
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 30 30 30 30 31 30 39 2D 30 30 30 30   // ..$00000109-0000
                                                                                                  2D 30 30 30 30 2D 43 30 30 30 2D 30 30 30 30 30   // -0000-C000-00000
                                                                                                  30 30 30 30 30 34 36 00 00 )                      // 0000046..
  .method public hidebysig newslot abstract virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
  } // end of method IPersistStream::GetClassID

  .method public hidebysig newslot abstract virtual 
          instance void  IsDirty() runtime managed internalcall
  {
  } // end of method IPersistStream::IsDirty

  .method public hidebysig newslot abstract virtual 
          instance void  Load([in] class DexterLib.IStream  marshal( interface ) pstm) runtime managed internalcall
  {
  } // end of method IPersistStream::Load

  .method public hidebysig newslot abstract virtual 
          instance void  Save([in] class DexterLib.IStream  marshal( interface ) pstm,
                              [in] int32 fClearDirty) runtime managed internalcall
  {
  } // end of method IPersistStream::Save

  .method public hidebysig newslot abstract virtual 
          instance void  GetSizeMax([out] valuetype DexterLib._ULARGE_INTEGER& pcbSize) runtime managed internalcall
  {
  } // end of method IPersistStream::GetSizeMax

} // end of class DexterLib.IPersistStream

.class interface public abstract auto ansi import DexterLib.IPersist
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 30 30 30 30 31 30 43 2D 30 30 30 30   // ..$0000010C-0000
                                                                                                  2D 30 30 30 30 2D 43 30 30 30 2D 30 30 30 30 30   // -0000-C000-00000
                                                                                                  30 30 30 30 30 34 36 00 00 )                      // 0000046..
  .method public hidebysig newslot abstract virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
  } // end of method IPersist::GetClassID

} // end of class DexterLib.IPersist

.class interface public abstract auto ansi import DexterLib.IStream
       implements DexterLib.ISequentialStream
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 30 30 30 30 30 30 43 2D 30 30 30 30   // ..$0000000C-0000
                                                                                                  2D 30 30 30 30 2D 43 30 30 30 2D 30 30 30 30 30   // -0000-C000-00000
                                                                                                  30 30 30 30 30 34 36 00 00 )                      // 0000046..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  RemoteRead([out] uint8& pv,
                                    [in] uint32 cb,
                                    [out] uint32& pcbRead) runtime managed internalcall
  {
  } // end of method IStream::RemoteRead

  .method public hidebysig newslot abstract virtual 
          instance void  RemoteWrite([in] uint8& pv,
                                     [in] uint32 cb,
                                     [out] uint32& pcbWritten) runtime managed internalcall
  {
  } // end of method IStream::RemoteWrite

  .method public hidebysig newslot abstract virtual 
          instance void  RemoteSeek([in] valuetype DexterLib._LARGE_INTEGER dlibMove,
                                    [in] uint32 dwOrigin,
                                    [out] valuetype DexterLib._ULARGE_INTEGER& plibNewPosition) runtime managed internalcall
  {
  } // end of method IStream::RemoteSeek

  .method public hidebysig newslot abstract virtual 
          instance void  SetSize([in] valuetype DexterLib._ULARGE_INTEGER libNewSize) runtime managed internalcall
  {
  } // end of method IStream::SetSize

  .method public hidebysig newslot abstract virtual 
          instance void  RemoteCopyTo([in] class DexterLib.IStream  marshal( interface ) pstm,
                                      [in] valuetype DexterLib._ULARGE_INTEGER cb,
                                      [out] valuetype DexterLib._ULARGE_INTEGER& pcbRead,
                                      [out] valuetype DexterLib._ULARGE_INTEGER& pcbWritten) runtime managed internalcall
  {
  } // end of method IStream::RemoteCopyTo

  .method public hidebysig newslot abstract virtual 
          instance void  Commit([in] uint32 grfCommitFlags) runtime managed internalcall
  {
  } // end of method IStream::Commit

  .method public hidebysig newslot abstract virtual 
          instance void  Revert() runtime managed internalcall
  {
  } // end of method IStream::Revert

  .method public hidebysig newslot abstract virtual 
          instance void  LockRegion([in] valuetype DexterLib._ULARGE_INTEGER libOffset,
                                    [in] valuetype DexterLib._ULARGE_INTEGER cb,
                                    [in] uint32 dwLockType) runtime managed internalcall
  {
  } // end of method IStream::LockRegion

  .method public hidebysig newslot abstract virtual 
          instance void  UnlockRegion([in] valuetype DexterLib._ULARGE_INTEGER libOffset,
                                      [in] valuetype DexterLib._ULARGE_INTEGER cb,
                                      [in] uint32 dwLockType) runtime managed internalcall
  {
  } // end of method IStream::UnlockRegion

  .method public hidebysig newslot abstract virtual 
          instance void  Stat([out] valuetype DexterLib.tagSTATSTG& pstatstg,
                              [in] uint32 grfStatFlag) runtime managed internalcall
  {
  } // end of method IStream::Stat

  .method public hidebysig newslot abstract virtual 
          instance void  Clone([out] class DexterLib.IStream&  marshal( interface ) ppstm) runtime managed internalcall
  {
  } // end of method IStream::Clone

} // end of class DexterLib.IStream

.class interface public abstract auto ansi import DexterLib.ISequentialStream
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 43 37 33 33 41 33 30 2D 32 41 31 43   // ..$0C733A30-2A1C
                                                                                                  2D 31 31 43 45 2D 41 44 45 35 2D 30 30 41 41 30   // -11CE-ADE5-00AA0
                                                                                                  30 34 34 37 37 33 44 00 00 )                      // 044773D..
  .method public hidebysig newslot abstract virtual 
          instance void  RemoteRead([out] uint8& pv,
                                    [in] uint32 cb,
                                    [out] uint32& pcbRead) runtime managed internalcall
  {
  } // end of method ISequentialStream::RemoteRead

  .method public hidebysig newslot abstract virtual 
          instance void  RemoteWrite([in] uint8& pv,
                                     [in] uint32 cb,
                                     [out] uint32& pcbWritten) runtime managed internalcall
  {
  } // end of method ISequentialStream::RemoteWrite

} // end of class DexterLib.ISequentialStream

.class public sequential ansi sealed beforefieldinit DexterLib._LARGE_INTEGER
       extends [mscorlib]System.ValueType
{
  .pack 8
  .size 0
  .field public int64 QuadPart
} // end of class DexterLib._LARGE_INTEGER

.class public sequential ansi sealed beforefieldinit DexterLib._ULARGE_INTEGER
       extends [mscorlib]System.ValueType
{
  .pack 8
  .size 0
  .field public uint64 QuadPart
} // end of class DexterLib._ULARGE_INTEGER

.class public sequential ansi sealed beforefieldinit DexterLib.tagSTATSTG
       extends [mscorlib]System.ValueType
{
  .pack 8
  .size 0
  .field public  marshal( lpwstr) string pwcsName
  .field public uint32 Type
  .field public valuetype DexterLib._ULARGE_INTEGER cbSize
  .field public valuetype DexterLib._FILETIME mtime
  .field public valuetype DexterLib._FILETIME ctime
  .field public valuetype DexterLib._FILETIME atime
  .field public uint32 grfMode
  .field public uint32 grfLocksSupported
  .field public valuetype [mscorlib]System.Guid 'clsid'
  .field public uint32 grfStateBits
  .field public uint32 reserved
} // end of class DexterLib.tagSTATSTG

.class public sequential ansi sealed beforefieldinit DexterLib._FILETIME
       extends [mscorlib]System.ValueType
{
  .pack 4
  .size 0
  .field public uint32 dwLowDateTime
  .field public uint32 dwHighDateTime
} // end of class DexterLib._FILETIME

.class interface public abstract auto ansi import DexterLib.IAMSetErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 39 36 33 35 36 36 44 41 2D 42 45 32 31   // ..$963566DA-BE21
                                                                                                  2D 34 45 41 46 2D 38 38 45 39 2D 33 35 37 30 34   // -4EAF-88E9-35704
                                                                                                  46 38 46 35 32 41 31 00 00 )                      // F8F52A1..
  .method public hidebysig newslot specialname abstract virtual 
          instance class DexterLib.IAMErrorLog 
          marshal( interface ) 
          get_ErrorLog() runtime managed internalcall
  {
  } // end of method IAMSetErrorLog::get_ErrorLog

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_ErrorLog([in] class DexterLib.IAMErrorLog  marshal( interface ) pVal) runtime managed internalcall
  {
  } // end of method IAMSetErrorLog::set_ErrorLog

  .property class DexterLib.IAMErrorLog ErrorLog()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 00 00 01 60 00 00 )                         // .....`..
    .get instance class DexterLib.IAMErrorLog DexterLib.IAMSetErrorLog::get_ErrorLog()
    .set instance void DexterLib.IAMSetErrorLog::set_ErrorLog(class DexterLib.IAMErrorLog)
  } // end of property IAMSetErrorLog::ErrorLog
} // end of class DexterLib.IAMSetErrorLog

.class interface public abstract auto ansi import DexterLib.IAMErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 34 33 45 37 33 41 32 2D 30 45 46 41   // ..$E43E73A2-0EFA
                                                                                                  2D 31 31 44 33 2D 39 36 30 31 2D 30 30 41 30 43   // -11D3-9601-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  LogError(int32 Severity,
                                  string  marshal( bstr) pErrorString,
                                  int32 ErrorCode,
                                  int32 'hresult',
                                  [in] object&  marshal( struct) pExtraInfo) runtime managed internalcall
  {
  } // end of method IAMErrorLog::LogError

} // end of class DexterLib.IAMErrorLog

.class public auto ansi import DexterLib.AMTimelineObjClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineObj,
                  DexterLib.AMTimelineObj
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 38 2D 36 31 46 39   // ..$78530B78-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineObjClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineObjClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineObjClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineObjClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineObjClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineObjClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineObjClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineObjClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineObjClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineObjClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineObjClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineObjClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineObjClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineObjClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineObjClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineObjClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineObjClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineObjClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineObjClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineObjClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineObjClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineObjClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineObjClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineObjClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineObjClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineObjClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineObjClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineObjClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineObjClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineObjClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineObjClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineObjClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineObjClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineObjClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineObjClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineObjClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineObjClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineObjClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineObjClass::GetEmbedDepth

} // end of class DexterLib.AMTimelineObjClass

.class interface public abstract auto ansi import DexterLib.AMTimelineObj
       implements DexterLib.IAMTimelineObj
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 37 2D 36 31 46 39   // ..$78530B77-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1C 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 4F 62 6A 43 6C 61 73 73 00   // imelineObjClass.
                                                                                                                          00 ) 
} // end of class DexterLib.AMTimelineObj

.class public auto ansi import DexterLib.AMTimelineSrcClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineSrc,
                  DexterLib.AMTimelineSrc,
                  DexterLib.IAMTimelineObj,
                  DexterLib.IAMTimelineEffectable,
                  DexterLib.IAMTimelineSplittable
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 41 2D 36 31 46 39   // ..$78530B7A-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineSrcClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  GetMediaTimes(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetMediaTimes
  } // end of method AMTimelineSrcClass::GetMediaTimes

  .method public hidebysig newslot virtual 
          instance void  GetMediaTimes2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetMediaTimes2
  } // end of method AMTimelineSrcClass::GetMediaTimes2

  .method public hidebysig newslot virtual 
          instance void  ModifyStopTime(int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::ModifyStopTime
  } // end of method AMTimelineSrcClass::ModifyStopTime

  .method public hidebysig newslot virtual 
          instance void  ModifyStopTime2(float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::ModifyStopTime2
  } // end of method AMTimelineSrcClass::ModifyStopTime2

  .method public hidebysig newslot virtual 
          instance void  FixMediaTimes(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::FixMediaTimes
  } // end of method AMTimelineSrcClass::FixMediaTimes

  .method public hidebysig newslot virtual 
          instance void  FixMediaTimes2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::FixMediaTimes2
  } // end of method AMTimelineSrcClass::FixMediaTimes2

  .method public hidebysig newslot virtual 
          instance void  SetMediaTimes(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetMediaTimes
  } // end of method AMTimelineSrcClass::SetMediaTimes

  .method public hidebysig newslot virtual 
          instance void  SetMediaTimes2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetMediaTimes2
  } // end of method AMTimelineSrcClass::SetMediaTimes2

  .method public hidebysig newslot virtual 
          instance void  SetMediaLength(int64 Length) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetMediaLength
  } // end of method AMTimelineSrcClass::SetMediaLength

  .method public hidebysig newslot virtual 
          instance void  SetMediaLength2(float64 Length) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetMediaLength2
  } // end of method AMTimelineSrcClass::SetMediaLength2

  .method public hidebysig newslot virtual 
          instance void  GetMediaLength(int64& pLength) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetMediaLength
  } // end of method AMTimelineSrcClass::GetMediaLength

  .method public hidebysig newslot virtual 
          instance void  GetMediaLength2(float64& pLength) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetMediaLength2
  } // end of method AMTimelineSrcClass::GetMediaLength2

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetMediaName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetMediaName
  } // end of method AMTimelineSrcClass::GetMediaName

  .method public hidebysig newslot virtual 
          instance void  SetMediaName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetMediaName
  } // end of method AMTimelineSrcClass::SetMediaName

  .method public hidebysig newslot virtual 
          instance void  SpliceWithNext(class DexterLib.IAMTimelineObj  marshal( interface ) pNext) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SpliceWithNext
  } // end of method AMTimelineSrcClass::SpliceWithNext

  .method public hidebysig newslot virtual 
          instance void  GetStreamNumber(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetStreamNumber
  } // end of method AMTimelineSrcClass::GetStreamNumber

  .method public hidebysig newslot virtual 
          instance void  SetStreamNumber(int32 Val) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetStreamNumber
  } // end of method AMTimelineSrcClass::SetStreamNumber

  .method public hidebysig newslot virtual 
          instance void  IsNormalRate(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::IsNormalRate
  } // end of method AMTimelineSrcClass::IsNormalRate

  .method public hidebysig newslot virtual 
          instance void  GetDefaultFPS(float64& pFPS) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetDefaultFPS
  } // end of method AMTimelineSrcClass::GetDefaultFPS

  .method public hidebysig newslot virtual 
          instance void  SetDefaultFPS(float64 FPS) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetDefaultFPS
  } // end of method AMTimelineSrcClass::SetDefaultFPS

  .method public hidebysig newslot virtual 
          instance void  GetStretchMode(int32& pnStretchMode) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::GetStretchMode
  } // end of method AMTimelineSrcClass::GetStretchMode

  .method public hidebysig newslot virtual 
          instance void  SetStretchMode(int32 nStretchMode) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSrc::SetStretchMode
  } // end of method AMTimelineSrcClass::SetStretchMode

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineSrcClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineSrcClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineSrcClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineSrcClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineSrcClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineSrcClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineSrcClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineSrcClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineSrcClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineSrcClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineSrcClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineSrcClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineSrcClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineSrcClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineSrcClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineSrcClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineSrcClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineSrcClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineSrcClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineSrcClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineSrcClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineSrcClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineSrcClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineSrcClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineSrcClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineSrcClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineSrcClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineSrcClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineSrcClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineSrcClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineSrcClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineSrcClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineSrcClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineSrcClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineSrcClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineSrcClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineSrcClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineSrcClass::GetEmbedDepth

  .method public hidebysig newslot virtual 
          instance void  EffectInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pFX,
                                         int32 priority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectInsBefore
  } // end of method AMTimelineSrcClass::EffectInsBefore

  .method public hidebysig newslot virtual 
          instance void  EffectSwapPriorities(int32 PriorityA,
                                              int32 PriorityB) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectSwapPriorities
  } // end of method AMTimelineSrcClass::EffectSwapPriorities

  .method public hidebysig newslot virtual 
          instance void  EffectGetCount(int32& pCount) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectGetCount
  } // end of method AMTimelineSrcClass::EffectGetCount

  .method public hidebysig newslot virtual 
          instance void  GetEffect([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppFx,
                                   int32 Which) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::GetEffect
  } // end of method AMTimelineSrcClass::GetEffect

  .method public hidebysig newslot virtual 
          instance void  SplitAt(int64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt
  } // end of method AMTimelineSrcClass::SplitAt

  .method public hidebysig newslot virtual 
          instance void  SplitAt2(float64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt2
  } // end of method AMTimelineSrcClass::SplitAt2

} // end of class DexterLib.AMTimelineSrcClass

.class interface public abstract auto ansi import DexterLib.AMTimelineSrc
       implements DexterLib.IAMTimelineSrc
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 38 35 33 30 42 37 39 2D 36 31 46 39   // ..$78530B79-61F9
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1C 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 53 72 63 43 6C 61 73 73 00   // imelineSrcClass.
                                                                                                                          00 ) 
} // end of class DexterLib.AMTimelineSrc

.class interface public abstract auto ansi import DexterLib.IAMTimelineEffectable
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 41 45 35 38 35 33 37 2D 36 32 32 45   // ..$EAE58537-622E
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  EffectInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pFX,
                                         int32 priority) runtime managed internalcall
  {
  } // end of method IAMTimelineEffectable::EffectInsBefore

  .method public hidebysig newslot abstract virtual 
          instance void  EffectSwapPriorities(int32 PriorityA,
                                              int32 PriorityB) runtime managed internalcall
  {
  } // end of method IAMTimelineEffectable::EffectSwapPriorities

  .method public hidebysig newslot abstract virtual 
          instance void  EffectGetCount(int32& pCount) runtime managed internalcall
  {
  } // end of method IAMTimelineEffectable::EffectGetCount

  .method public hidebysig newslot abstract virtual 
          instance void  GetEffect([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppFx,
                                   int32 Which) runtime managed internalcall
  {
  } // end of method IAMTimelineEffectable::GetEffect

} // end of class DexterLib.IAMTimelineEffectable

.class interface public abstract auto ansi import DexterLib.IAMTimelineSplittable
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 41 30 46 38 34 30 41 30 2D 44 35 39 30   // ..$A0F840A0-D590
                                                                                                  2D 31 31 44 32 2D 38 44 35 35 2D 30 30 41 30 43   // -11D2-8D55-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .method public hidebysig newslot abstract virtual 
          instance void  SplitAt(int64 Time) runtime managed internalcall
  {
  } // end of method IAMTimelineSplittable::SplitAt

  .method public hidebysig newslot abstract virtual 
          instance void  SplitAt2(float64 Time) runtime managed internalcall
  {
  } // end of method IAMTimelineSplittable::SplitAt2

} // end of class DexterLib.IAMTimelineSplittable

.class public auto ansi import DexterLib.AMTimelineTrackClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineTrack,
                  DexterLib.AMTimelineTrack,
                  DexterLib.IAMTimelineObj,
                  DexterLib.IAMTimelineEffectable,
                  DexterLib.IAMTimelineTransable,
                  DexterLib.IAMTimelineVirtualTrack,
                  DexterLib.IAMTimelineSplittable
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 38 46 36 43 33 43 35 30 2D 38 39 37 42   // ..$8F6C3C50-897B
                                                                                                  2D 31 31 44 32 2D 38 43 46 42 2D 30 30 41 30 43   // -11D2-8CFB-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineTrackClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  SrcAdd(class DexterLib.IAMTimelineObj  marshal( interface ) pSource) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::SrcAdd
  } // end of method AMTimelineTrackClass::SrcAdd

  .method public hidebysig newslot virtual 
          instance void  GetNextSrc([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                    int64& pInOut) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::GetNextSrc
  } // end of method AMTimelineTrackClass::GetNextSrc

  .method public hidebysig newslot virtual 
          instance void  GetNextSrc2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                     float64& pInOut) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::GetNextSrc2
  } // end of method AMTimelineTrackClass::GetNextSrc2

  .method public hidebysig newslot virtual 
          instance void  MoveEverythingBy(int64 Start,
                                          int64 MoveBy) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::MoveEverythingBy
  } // end of method AMTimelineTrackClass::MoveEverythingBy

  .method public hidebysig newslot virtual 
          instance void  MoveEverythingBy2(float64 Start,
                                           float64 MoveBy) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::MoveEverythingBy2
  } // end of method AMTimelineTrackClass::MoveEverythingBy2

  .method public hidebysig newslot virtual 
          instance void  GetSourcesCount(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::GetSourcesCount
  } // end of method AMTimelineTrackClass::GetSourcesCount

  .method public hidebysig newslot virtual 
          instance void  AreYouBlank(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::AreYouBlank
  } // end of method AMTimelineTrackClass::AreYouBlank

  .method public hidebysig newslot virtual 
          instance void  GetSrcAtTime([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                      int64 Time,
                                      int32 SearchDirection) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::GetSrcAtTime
  } // end of method AMTimelineTrackClass::GetSrcAtTime

  .method public hidebysig newslot virtual 
          instance void  GetSrcAtTime2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                       float64 Time,
                                       int32 SearchDirection) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::GetSrcAtTime2
  } // end of method AMTimelineTrackClass::GetSrcAtTime2

  .method public hidebysig newslot virtual 
          instance void  InsertSpace(int64 rtStart,
                                     int64 rtEnd) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::InsertSpace
  } // end of method AMTimelineTrackClass::InsertSpace

  .method public hidebysig newslot virtual 
          instance void  InsertSpace2(float64 rtStart,
                                      float64 rtEnd) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::InsertSpace2
  } // end of method AMTimelineTrackClass::InsertSpace2

  .method public hidebysig newslot virtual 
          instance void  ZeroBetween(int64 rtStart,
                                     int64 rtEnd) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::ZeroBetween
  } // end of method AMTimelineTrackClass::ZeroBetween

  .method public hidebysig newslot virtual 
          instance void  ZeroBetween2(float64 rtStart,
                                      float64 rtEnd) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::ZeroBetween2
  } // end of method AMTimelineTrackClass::ZeroBetween2

  .method public hidebysig newslot virtual 
          instance void  GetNextSrcEx(class DexterLib.IAMTimelineObj  marshal( interface ) pLast,
                                      [out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppNext) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrack::GetNextSrcEx
  } // end of method AMTimelineTrackClass::GetNextSrcEx

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineTrackClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineTrackClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineTrackClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineTrackClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineTrackClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineTrackClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineTrackClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineTrackClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineTrackClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineTrackClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineTrackClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineTrackClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineTrackClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineTrackClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineTrackClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineTrackClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineTrackClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineTrackClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineTrackClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineTrackClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineTrackClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineTrackClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineTrackClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineTrackClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineTrackClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineTrackClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineTrackClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineTrackClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineTrackClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineTrackClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineTrackClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineTrackClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineTrackClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineTrackClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineTrackClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineTrackClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineTrackClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineTrackClass::GetEmbedDepth

  .method public hidebysig newslot virtual 
          instance void  EffectInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pFX,
                                         int32 priority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectInsBefore
  } // end of method AMTimelineTrackClass::EffectInsBefore

  .method public hidebysig newslot virtual 
          instance void  EffectSwapPriorities(int32 PriorityA,
                                              int32 PriorityB) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectSwapPriorities
  } // end of method AMTimelineTrackClass::EffectSwapPriorities

  .method public hidebysig newslot virtual 
          instance void  EffectGetCount(int32& pCount) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectGetCount
  } // end of method AMTimelineTrackClass::EffectGetCount

  .method public hidebysig newslot virtual 
          instance void  GetEffect([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppFx,
                                   int32 Which) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::GetEffect
  } // end of method AMTimelineTrackClass::GetEffect

  .method public hidebysig newslot virtual 
          instance void  TransAdd(class DexterLib.IAMTimelineObj  marshal( interface ) pTrans) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::TransAdd
  } // end of method AMTimelineTrackClass::TransAdd

  .method public hidebysig newslot virtual 
          instance void  TransGetCount(int32& pCount) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::TransGetCount
  } // end of method AMTimelineTrackClass::TransGetCount

  .method public hidebysig newslot virtual 
          instance void  GetNextTrans([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppTrans,
                                      int64& pInOut) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetNextTrans
  } // end of method AMTimelineTrackClass::GetNextTrans

  .method public hidebysig newslot virtual 
          instance void  GetNextTrans2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppTrans,
                                       float64& pInOut) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetNextTrans2
  } // end of method AMTimelineTrackClass::GetNextTrans2

  .method public hidebysig newslot virtual 
          instance void  GetTransAtTime([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                        int64 Time,
                                        int32 SearchDirection) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetTransAtTime
  } // end of method AMTimelineTrackClass::GetTransAtTime

  .method public hidebysig newslot virtual 
          instance void  GetTransAtTime2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                         float64 Time,
                                         int32 SearchDirection) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetTransAtTime2
  } // end of method AMTimelineTrackClass::GetTransAtTime2

  .method public hidebysig newslot virtual 
          instance void  TrackGetPriority(int32& pPriority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineVirtualTrack::TrackGetPriority
  } // end of method AMTimelineTrackClass::TrackGetPriority

  .method public hidebysig newslot virtual 
          instance void  SetTrackDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineVirtualTrack::SetTrackDirty
  } // end of method AMTimelineTrackClass::SetTrackDirty

  .method public hidebysig newslot virtual 
          instance void  SplitAt(int64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt
  } // end of method AMTimelineTrackClass::SplitAt

  .method public hidebysig newslot virtual 
          instance void  SplitAt2(float64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt2
  } // end of method AMTimelineTrackClass::SplitAt2

} // end of class DexterLib.AMTimelineTrackClass

.class interface public abstract auto ansi import DexterLib.AMTimelineTrack
       implements DexterLib.IAMTimelineTrack
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1E 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 54 72 61 63 6B 43 6C 61 73   // imelineTrackClas
                                                                                                                          73 00 00 )                                        // s..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 41 45 35 38 35 33 38 2D 36 32 32 45   // ..$EAE58538-622E
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
} // end of class DexterLib.AMTimelineTrack

.class interface public abstract auto ansi import DexterLib.IAMTimelineTrack
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 41 45 35 38 35 33 38 2D 36 32 32 45   // ..$EAE58538-622E
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  SrcAdd(class DexterLib.IAMTimelineObj  marshal( interface ) pSource) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::SrcAdd

  .method public hidebysig newslot abstract virtual 
          instance void  GetNextSrc([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                    int64& pInOut) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::GetNextSrc

  .method public hidebysig newslot abstract virtual 
          instance void  GetNextSrc2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                     float64& pInOut) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::GetNextSrc2

  .method public hidebysig newslot abstract virtual 
          instance void  MoveEverythingBy(int64 Start,
                                          int64 MoveBy) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::MoveEverythingBy

  .method public hidebysig newslot abstract virtual 
          instance void  MoveEverythingBy2(float64 Start,
                                           float64 MoveBy) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::MoveEverythingBy2

  .method public hidebysig newslot abstract virtual 
          instance void  GetSourcesCount(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::GetSourcesCount

  .method public hidebysig newslot abstract virtual 
          instance void  AreYouBlank(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::AreYouBlank

  .method public hidebysig newslot abstract virtual 
          instance void  GetSrcAtTime([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                      int64 Time,
                                      int32 SearchDirection) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::GetSrcAtTime

  .method public hidebysig newslot abstract virtual 
          instance void  GetSrcAtTime2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppSrc,
                                       float64 Time,
                                       int32 SearchDirection) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::GetSrcAtTime2

  .method public hidebysig newslot abstract virtual 
          instance void  InsertSpace(int64 rtStart,
                                     int64 rtEnd) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::InsertSpace

  .method public hidebysig newslot abstract virtual 
          instance void  InsertSpace2(float64 rtStart,
                                      float64 rtEnd) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::InsertSpace2

  .method public hidebysig newslot abstract virtual 
          instance void  ZeroBetween(int64 rtStart,
                                     int64 rtEnd) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::ZeroBetween

  .method public hidebysig newslot abstract virtual 
          instance void  ZeroBetween2(float64 rtStart,
                                      float64 rtEnd) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::ZeroBetween2

  .method public hidebysig newslot abstract virtual 
          instance void  GetNextSrcEx(class DexterLib.IAMTimelineObj  marshal( interface ) pLast,
                                      [out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppNext) runtime managed internalcall
  {
  } // end of method IAMTimelineTrack::GetNextSrcEx

} // end of class DexterLib.IAMTimelineTrack

.class interface public abstract auto ansi import DexterLib.IAMTimelineTransable
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 33 37 38 46 41 33 38 36 2D 36 32 32 45   // ..$378FA386-622E
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .method public hidebysig newslot abstract virtual 
          instance void  TransAdd(class DexterLib.IAMTimelineObj  marshal( interface ) pTrans) runtime managed internalcall
  {
  } // end of method IAMTimelineTransable::TransAdd

  .method public hidebysig newslot abstract virtual 
          instance void  TransGetCount(int32& pCount) runtime managed internalcall
  {
  } // end of method IAMTimelineTransable::TransGetCount

  .method public hidebysig newslot abstract virtual 
          instance void  GetNextTrans([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppTrans,
                                      int64& pInOut) runtime managed internalcall
  {
  } // end of method IAMTimelineTransable::GetNextTrans

  .method public hidebysig newslot abstract virtual 
          instance void  GetNextTrans2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppTrans,
                                       float64& pInOut) runtime managed internalcall
  {
  } // end of method IAMTimelineTransable::GetNextTrans2

  .method public hidebysig newslot abstract virtual 
          instance void  GetTransAtTime([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                        int64 Time,
                                        int32 SearchDirection) runtime managed internalcall
  {
  } // end of method IAMTimelineTransable::GetTransAtTime

  .method public hidebysig newslot abstract virtual 
          instance void  GetTransAtTime2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                         float64 Time,
                                         int32 SearchDirection) runtime managed internalcall
  {
  } // end of method IAMTimelineTransable::GetTransAtTime2

} // end of class DexterLib.IAMTimelineTransable

.class interface public abstract auto ansi import DexterLib.IAMTimelineVirtualTrack
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 41 38 45 44 35 46 38 30 2D 43 32 43 37   // ..$A8ED5F80-C2C7
                                                                                                  2D 31 31 44 32 2D 38 44 33 39 2D 30 30 41 30 43   // -11D2-8D39-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  TrackGetPriority(int32& pPriority) runtime managed internalcall
  {
  } // end of method IAMTimelineVirtualTrack::TrackGetPriority

  .method public hidebysig newslot abstract virtual 
          instance void  SetTrackDirty() runtime managed internalcall
  {
  } // end of method IAMTimelineVirtualTrack::SetTrackDirty

} // end of class DexterLib.IAMTimelineVirtualTrack

.class public auto ansi import DexterLib.AMTimelineCompClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineComp,
                  DexterLib.AMTimelineComp,
                  DexterLib.IAMTimelineObj,
                  DexterLib.IAMTimelineEffectable,
                  DexterLib.IAMTimelineTransable,
                  DexterLib.IAMTimelineVirtualTrack
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 34 44 32 45 43 38 30 2D 36 32 33 33   // ..$74D2EC80-6233
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineCompClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  VTrackInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pVirtualTrack,
                                         int32 priority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::VTrackInsBefore
  } // end of method AMTimelineCompClass::VTrackInsBefore

  .method public hidebysig newslot virtual 
          instance void  VTrackSwapPriorities(int32 VirtualTrackA,
                                              int32 VirtualTrackB) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::VTrackSwapPriorities
  } // end of method AMTimelineCompClass::VTrackSwapPriorities

  .method public hidebysig newslot virtual 
          instance void  VTrackGetCount(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::VTrackGetCount
  } // end of method AMTimelineCompClass::VTrackGetCount

  .method public hidebysig newslot virtual 
          instance void  GetVTrack([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                   int32 Which) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::GetVTrack
  } // end of method AMTimelineCompClass::GetVTrack

  .method public hidebysig newslot virtual 
          instance void  GetCountOfType(int32& pVal,
                                        int32& pValWithComps,
                                        valuetype DexterLib.TIMELINE_MAJOR_TYPE majortype) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineComp::GetCountOfType
  } // end of method AMTimelineCompClass::GetCountOfType

  .method public hidebysig newslot virtual 
          instance void  GetRecursiveLayerOfType([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                                 int32 WhichLayer,
                                                 valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineComp::GetRecursiveLayerOfType
  } // end of method AMTimelineCompClass::GetRecursiveLayerOfType

  .method public hidebysig newslot virtual 
          instance void  GetRecursiveLayerOfTypeI([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                                  [in][out] int32& pWhichLayer,
                                                  valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineComp::GetRecursiveLayerOfTypeI
  } // end of method AMTimelineCompClass::GetRecursiveLayerOfTypeI

  .method public hidebysig newslot virtual 
          instance void  GetNextVTrack(class DexterLib.IAMTimelineObj  marshal( interface ) pVirtualTrack,
                                       [out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppNextVirtualTrack) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::GetNextVTrack
  } // end of method AMTimelineCompClass::GetNextVTrack

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineCompClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineCompClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineCompClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineCompClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineCompClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineCompClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineCompClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineCompClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineCompClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineCompClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineCompClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineCompClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineCompClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineCompClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineCompClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineCompClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineCompClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineCompClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineCompClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineCompClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineCompClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineCompClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineCompClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineCompClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineCompClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineCompClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineCompClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineCompClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineCompClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineCompClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineCompClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineCompClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineCompClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineCompClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineCompClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineCompClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineCompClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineCompClass::GetEmbedDepth

  .method public hidebysig newslot virtual 
          instance void  EffectInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pFX,
                                         int32 priority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectInsBefore
  } // end of method AMTimelineCompClass::EffectInsBefore

  .method public hidebysig newslot virtual 
          instance void  EffectSwapPriorities(int32 PriorityA,
                                              int32 PriorityB) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectSwapPriorities
  } // end of method AMTimelineCompClass::EffectSwapPriorities

  .method public hidebysig newslot virtual 
          instance void  EffectGetCount(int32& pCount) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::EffectGetCount
  } // end of method AMTimelineCompClass::EffectGetCount

  .method public hidebysig newslot virtual 
          instance void  GetEffect([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppFx,
                                   int32 Which) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffectable::GetEffect
  } // end of method AMTimelineCompClass::GetEffect

  .method public hidebysig newslot virtual 
          instance void  TransAdd(class DexterLib.IAMTimelineObj  marshal( interface ) pTrans) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::TransAdd
  } // end of method AMTimelineCompClass::TransAdd

  .method public hidebysig newslot virtual 
          instance void  TransGetCount(int32& pCount) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::TransGetCount
  } // end of method AMTimelineCompClass::TransGetCount

  .method public hidebysig newslot virtual 
          instance void  GetNextTrans([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppTrans,
                                      int64& pInOut) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetNextTrans
  } // end of method AMTimelineCompClass::GetNextTrans

  .method public hidebysig newslot virtual 
          instance void  GetNextTrans2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppTrans,
                                       float64& pInOut) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetNextTrans2
  } // end of method AMTimelineCompClass::GetNextTrans2

  .method public hidebysig newslot virtual 
          instance void  GetTransAtTime([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                        int64 Time,
                                        int32 SearchDirection) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetTransAtTime
  } // end of method AMTimelineCompClass::GetTransAtTime

  .method public hidebysig newslot virtual 
          instance void  GetTransAtTime2([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppObj,
                                         float64 Time,
                                         int32 SearchDirection) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTransable::GetTransAtTime2
  } // end of method AMTimelineCompClass::GetTransAtTime2

  .method public hidebysig newslot virtual 
          instance void  TrackGetPriority(int32& pPriority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineVirtualTrack::TrackGetPriority
  } // end of method AMTimelineCompClass::TrackGetPriority

  .method public hidebysig newslot virtual 
          instance void  SetTrackDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineVirtualTrack::SetTrackDirty
  } // end of method AMTimelineCompClass::SetTrackDirty

} // end of class DexterLib.AMTimelineCompClass

.class interface public abstract auto ansi import DexterLib.AMTimelineComp
       implements DexterLib.IAMTimelineComp
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 41 45 35 38 35 33 36 2D 36 32 32 45   // ..$EAE58536-622E
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 43 6F 6D 70 43 6C 61 73 73   // imelineCompClass
                                                                                                                          00 00 ) 
} // end of class DexterLib.AMTimelineComp

.class interface public abstract auto ansi import DexterLib.IAMTimelineComp
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 41 45 35 38 35 33 36 2D 36 32 32 45   // ..$EAE58536-622E
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .method public hidebysig newslot abstract virtual 
          instance void  VTrackInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pVirtualTrack,
                                         int32 priority) runtime managed internalcall
  {
  } // end of method IAMTimelineComp::VTrackInsBefore

  .method public hidebysig newslot abstract virtual 
          instance void  VTrackSwapPriorities(int32 VirtualTrackA,
                                              int32 VirtualTrackB) runtime managed internalcall
  {
  } // end of method IAMTimelineComp::VTrackSwapPriorities

  .method public hidebysig newslot abstract virtual 
          instance void  VTrackGetCount(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineComp::VTrackGetCount

  .method public hidebysig newslot abstract virtual 
          instance void  GetVTrack([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                   int32 Which) runtime managed internalcall
  {
  } // end of method IAMTimelineComp::GetVTrack

  .method public hidebysig newslot abstract virtual 
          instance void  GetCountOfType(int32& pVal,
                                        int32& pValWithComps,
                                        valuetype DexterLib.TIMELINE_MAJOR_TYPE majortype) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimelineComp::GetCountOfType

  .method public hidebysig newslot abstract virtual 
          instance void  GetRecursiveLayerOfType([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                                 int32 WhichLayer,
                                                 valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimelineComp::GetRecursiveLayerOfType

  .method public hidebysig newslot abstract virtual 
          instance void  GetRecursiveLayerOfTypeI([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                                  [in][out] int32& pWhichLayer,
                                                  valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
  } // end of method IAMTimelineComp::GetRecursiveLayerOfTypeI

  .method public hidebysig newslot abstract virtual 
          instance void  GetNextVTrack(class DexterLib.IAMTimelineObj  marshal( interface ) pVirtualTrack,
                                       [out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppNextVirtualTrack) runtime managed internalcall
  {
  } // end of method IAMTimelineComp::GetNextVTrack

} // end of class DexterLib.IAMTimelineComp

.class public auto ansi import DexterLib.AMTimelineGroupClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineGroup,
                  DexterLib.AMTimelineGroup,
                  DexterLib.IAMTimelineComp,
                  DexterLib.IAMTimelineObj
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 46 36 44 33 37 31 45 31 2D 42 38 41 36   // ..$F6D371E1-B8A6
                                                                                                  2D 31 31 44 32 2D 38 30 32 33 2D 30 30 43 30 44   // -11D2-8023-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineGroupClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  SetTimeline(class DexterLib.AMTimeline  marshal( interface ) pTimeline) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetTimeline
  } // end of method AMTimelineGroupClass::SetTimeline

  .method public hidebysig newslot virtual 
          instance void  GetTimeline([out] class DexterLib.AMTimeline&  marshal( interface ) ppTimeline) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetTimeline
  } // end of method AMTimelineGroupClass::GetTimeline

  .method public hidebysig newslot virtual 
          instance void  GetPriority(int32& pPriority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetPriority
  } // end of method AMTimelineGroupClass::GetPriority

  .method public hidebysig newslot virtual 
          instance void  GetMediaType([out] valuetype DexterLib._AMMediaType& __MIDL_0043) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetMediaType
  } // end of method AMTimelineGroupClass::GetMediaType

  .method public hidebysig newslot virtual 
          instance void  SetMediaType([in] valuetype DexterLib._AMMediaType& __MIDL_0044) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetMediaType
  } // end of method AMTimelineGroupClass::SetMediaType

  .method public hidebysig newslot virtual 
          instance void  SetOutputFPS(float64 FPS) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetOutputFPS
  } // end of method AMTimelineGroupClass::SetOutputFPS

  .method public hidebysig newslot virtual 
          instance void  GetOutputFPS(float64& pFPS) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetOutputFPS
  } // end of method AMTimelineGroupClass::GetOutputFPS

  .method public hidebysig newslot virtual 
          instance void  SetGroupName(string  marshal( bstr) pGroupName) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetGroupName
  } // end of method AMTimelineGroupClass::SetGroupName

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetGroupName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetGroupName
  } // end of method AMTimelineGroupClass::GetGroupName

  .method public hidebysig newslot virtual 
          instance void  SetPreviewMode(int32 fPreview) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetPreviewMode
  } // end of method AMTimelineGroupClass::SetPreviewMode

  .method public hidebysig newslot virtual 
          instance void  GetPreviewMode(int32& pfPreview) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetPreviewMode
  } // end of method AMTimelineGroupClass::GetPreviewMode

  .method public hidebysig newslot virtual 
          instance void  SetMediaTypeForVB([in] int32 Val) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetMediaTypeForVB
  } // end of method AMTimelineGroupClass::SetMediaTypeForVB

  .method public hidebysig newslot virtual 
          instance void  GetOutputBuffering([out] int32& pnBuffer) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetOutputBuffering
  } // end of method AMTimelineGroupClass::GetOutputBuffering

  .method public hidebysig newslot virtual 
          instance void  SetOutputBuffering([in] int32 nBuffer) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetOutputBuffering
  } // end of method AMTimelineGroupClass::SetOutputBuffering

  .method public hidebysig newslot virtual 
          instance void  SetSmartRecompressFormat(int32& pFormat) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetSmartRecompressFormat
  } // end of method AMTimelineGroupClass::SetSmartRecompressFormat

  .method public hidebysig newslot virtual 
          instance void  GetSmartRecompressFormat(native int ppFormat) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::GetSmartRecompressFormat
  } // end of method AMTimelineGroupClass::GetSmartRecompressFormat

  .method public hidebysig newslot virtual 
          instance void  IsSmartRecompressFormatSet(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::IsSmartRecompressFormatSet
  } // end of method AMTimelineGroupClass::IsSmartRecompressFormatSet

  .method public hidebysig newslot virtual 
          instance void  IsRecompressFormatDirty(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::IsRecompressFormatDirty
  } // end of method AMTimelineGroupClass::IsRecompressFormatDirty

  .method public hidebysig newslot virtual 
          instance void  ClearRecompressFormatDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::ClearRecompressFormatDirty
  } // end of method AMTimelineGroupClass::ClearRecompressFormatDirty

  .method public hidebysig newslot virtual 
          instance void  SetRecompFormatFromSource(class DexterLib.AMTimelineSrc  marshal( interface ) pSource) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineGroup::SetRecompFormatFromSource
  } // end of method AMTimelineGroupClass::SetRecompFormatFromSource

  .method public hidebysig newslot virtual 
          instance void  VTrackInsBefore(class DexterLib.IAMTimelineObj  marshal( interface ) pVirtualTrack,
                                         int32 priority) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::VTrackInsBefore
  } // end of method AMTimelineGroupClass::VTrackInsBefore

  .method public hidebysig newslot virtual 
          instance void  VTrackSwapPriorities(int32 VirtualTrackA,
                                              int32 VirtualTrackB) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::VTrackSwapPriorities
  } // end of method AMTimelineGroupClass::VTrackSwapPriorities

  .method public hidebysig newslot virtual 
          instance void  VTrackGetCount(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::VTrackGetCount
  } // end of method AMTimelineGroupClass::VTrackGetCount

  .method public hidebysig newslot virtual 
          instance void  GetVTrack([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                   int32 Which) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::GetVTrack
  } // end of method AMTimelineGroupClass::GetVTrack

  .method public hidebysig newslot virtual 
          instance void  GetCountOfType(int32& pVal,
                                        int32& pValWithComps,
                                        valuetype DexterLib.TIMELINE_MAJOR_TYPE majortype) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineComp::GetCountOfType
  } // end of method AMTimelineGroupClass::GetCountOfType

  .method public hidebysig newslot virtual 
          instance void  GetRecursiveLayerOfType([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                                 int32 WhichLayer,
                                                 valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineComp::GetRecursiveLayerOfType
  } // end of method AMTimelineGroupClass::GetRecursiveLayerOfType

  .method public hidebysig newslot virtual 
          instance void  GetRecursiveLayerOfTypeI([out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppVirtualTrack,
                                                  [in][out] int32& pWhichLayer,
                                                  valuetype DexterLib.TIMELINE_MAJOR_TYPE Type) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineComp::GetRecursiveLayerOfTypeI
  } // end of method AMTimelineGroupClass::GetRecursiveLayerOfTypeI

  .method public hidebysig newslot virtual 
          instance void  GetNextVTrack(class DexterLib.IAMTimelineObj  marshal( interface ) pVirtualTrack,
                                       [out] class DexterLib.IAMTimelineObj&  marshal( interface ) ppNextVirtualTrack) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineComp::GetNextVTrack
  } // end of method AMTimelineGroupClass::GetNextVTrack

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineGroupClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineGroupClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineGroupClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineGroupClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineGroupClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineGroupClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineGroupClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineGroupClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineGroupClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineGroupClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineGroupClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineGroupClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineGroupClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineGroupClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineGroupClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineGroupClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineGroupClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineGroupClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineGroupClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineGroupClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineGroupClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineGroupClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineGroupClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineGroupClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineGroupClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineGroupClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineGroupClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineGroupClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineGroupClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineGroupClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineGroupClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineGroupClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineGroupClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineGroupClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineGroupClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineGroupClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineGroupClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineGroupClass::GetEmbedDepth

} // end of class DexterLib.AMTimelineGroupClass

.class interface public abstract auto ansi import DexterLib.AMTimelineGroup
       implements DexterLib.IAMTimelineGroup
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1E 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 47 72 6F 75 70 43 6C 61 73   // imelineGroupClas
                                                                                                                          73 00 00 )                                        // s..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 39 45 45 44 34 46 30 30 2D 42 38 41 36   // ..$9EED4F00-B8A6
                                                                                                  2D 31 31 44 32 2D 38 30 32 33 2D 30 30 43 30 44   // -11D2-8023-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
} // end of class DexterLib.AMTimelineGroup

.class public auto ansi import DexterLib.AMTimelineTransClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineTrans,
                  DexterLib.AMTimelineTrans,
                  DexterLib.IAMTimelineObj,
                  DexterLib.IAMTimelineSplittable
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 34 44 32 45 43 38 31 2D 36 32 33 33   // ..$74D2EC81-6233
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineTransClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  GetCutPoint(int64& pTLTime) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::GetCutPoint
  } // end of method AMTimelineTransClass::GetCutPoint

  .method public hidebysig newslot virtual 
          instance void  GetCutPoint2(float64& pTLTime) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::GetCutPoint2
  } // end of method AMTimelineTransClass::GetCutPoint2

  .method public hidebysig newslot virtual 
          instance void  SetCutPoint(int64 TLTime) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::SetCutPoint
  } // end of method AMTimelineTransClass::SetCutPoint

  .method public hidebysig newslot virtual 
          instance void  SetCutPoint2(float64 TLTime) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::SetCutPoint2
  } // end of method AMTimelineTransClass::SetCutPoint2

  .method public hidebysig newslot virtual 
          instance void  GetSwapInputs(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::GetSwapInputs
  } // end of method AMTimelineTransClass::GetSwapInputs

  .method public hidebysig newslot virtual 
          instance void  SetSwapInputs(int32 pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::SetSwapInputs
  } // end of method AMTimelineTransClass::SetSwapInputs

  .method public hidebysig newslot virtual 
          instance void  GetCutsOnly(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::GetCutsOnly
  } // end of method AMTimelineTransClass::GetCutsOnly

  .method public hidebysig newslot virtual 
          instance void  SetCutsOnly(int32 pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineTrans::SetCutsOnly
  } // end of method AMTimelineTransClass::SetCutsOnly

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineTransClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineTransClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineTransClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineTransClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineTransClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineTransClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineTransClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineTransClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineTransClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineTransClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineTransClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineTransClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineTransClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineTransClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineTransClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineTransClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineTransClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineTransClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineTransClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineTransClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineTransClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineTransClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineTransClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineTransClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineTransClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineTransClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineTransClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineTransClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineTransClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineTransClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineTransClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineTransClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineTransClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineTransClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineTransClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineTransClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineTransClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineTransClass::GetEmbedDepth

  .method public hidebysig newslot virtual 
          instance void  SplitAt(int64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt
  } // end of method AMTimelineTransClass::SplitAt

  .method public hidebysig newslot virtual 
          instance void  SplitAt2(float64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt2
  } // end of method AMTimelineTransClass::SplitAt2

} // end of class DexterLib.AMTimelineTransClass

.class interface public abstract auto ansi import DexterLib.AMTimelineTrans
       implements DexterLib.IAMTimelineTrans
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1E 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 54 72 61 6E 73 43 6C 61 73   // imelineTransClas
                                                                                                                          73 00 00 )                                        // s..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 43 45 30 43 32 36 35 2D 36 32 32 44   // ..$BCE0C265-622D
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
} // end of class DexterLib.AMTimelineTrans

.class interface public abstract auto ansi import DexterLib.IAMTimelineTrans
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 43 45 30 43 32 36 35 2D 36 32 32 44   // ..$BCE0C265-622D
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .method public hidebysig newslot abstract virtual 
          instance void  GetCutPoint(int64& pTLTime) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::GetCutPoint

  .method public hidebysig newslot abstract virtual 
          instance void  GetCutPoint2(float64& pTLTime) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::GetCutPoint2

  .method public hidebysig newslot abstract virtual 
          instance void  SetCutPoint(int64 TLTime) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::SetCutPoint

  .method public hidebysig newslot abstract virtual 
          instance void  SetCutPoint2(float64 TLTime) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::SetCutPoint2

  .method public hidebysig newslot abstract virtual 
          instance void  GetSwapInputs(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::GetSwapInputs

  .method public hidebysig newslot abstract virtual 
          instance void  SetSwapInputs(int32 pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::SetSwapInputs

  .method public hidebysig newslot abstract virtual 
          instance void  GetCutsOnly(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::GetCutsOnly

  .method public hidebysig newslot abstract virtual 
          instance void  SetCutsOnly(int32 pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineTrans::SetCutsOnly

} // end of class DexterLib.IAMTimelineTrans

.class public auto ansi import DexterLib.AMTimelineEffectClass
       extends [mscorlib]System.Object
       implements DexterLib.IAMTimelineEffect,
                  DexterLib.AMTimelineEffect,
                  DexterLib.IAMTimelineObj,
                  DexterLib.IAMTimelineSplittable,
                  DexterLib.IPropertyBag
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 37 34 44 32 45 43 38 32 2D 36 32 33 33   // ..$74D2EC82-6233
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AMTimelineEffectClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  EffectGetPriority(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineEffect::EffectGetPriority
  } // end of method AMTimelineEffectClass::EffectGetPriority

  .method public hidebysig newslot virtual 
          instance void  GetStartStop(int64& pStart,
                                      int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop
  } // end of method AMTimelineEffectClass::GetStartStop

  .method public hidebysig newslot virtual 
          instance void  GetStartStop2(float64& pStart,
                                       float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetStartStop2
  } // end of method AMTimelineEffectClass::GetStartStop2

  .method public hidebysig newslot virtual 
          instance void  FixTimes(int64& pStart,
                                  int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes
  } // end of method AMTimelineEffectClass::FixTimes

  .method public hidebysig newslot virtual 
          instance void  FixTimes2(float64& pStart,
                                   float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::FixTimes2
  } // end of method AMTimelineEffectClass::FixTimes2

  .method public hidebysig newslot virtual 
          instance void  SetStartStop(int64 Start,
                                      int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop
  } // end of method AMTimelineEffectClass::SetStartStop

  .method public hidebysig newslot virtual 
          instance void  SetStartStop2(float64 Start,
                                       float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetStartStop2
  } // end of method AMTimelineEffectClass::SetStartStop2

  .method public hidebysig newslot virtual 
          instance class DexterLib.PropertySetter 
          marshal( interface ) 
          GetPropertySetter() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetPropertySetter
  } // end of method AMTimelineEffectClass::GetPropertySetter

  .method public hidebysig newslot virtual 
          instance void  SetPropertySetter(class DexterLib.PropertySetter  marshal( interface ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetPropertySetter
  } // end of method AMTimelineEffectClass::SetPropertySetter

  .method public hidebysig newslot virtual 
          instance object 
          marshal( iunknown ) 
          GetSubObject() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObject
  } // end of method AMTimelineEffectClass::GetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObject(object  marshal( iunknown ) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObject
  } // end of method AMTimelineEffectClass::SetSubObject

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUID(valuetype [mscorlib]System.Guid newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUID
  } // end of method AMTimelineEffectClass::SetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance void  SetSubObjectGUIDB(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetSubObjectGUIDB
  } // end of method AMTimelineEffectClass::SetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectGUID(valuetype [mscorlib]System.Guid& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUID
  } // end of method AMTimelineEffectClass::GetSubObjectGUID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetSubObjectGUIDB() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectGUIDB
  } // end of method AMTimelineEffectClass::GetSubObjectGUIDB

  .method public hidebysig newslot virtual 
          instance void  GetSubObjectLoaded(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetSubObjectLoaded
  } // end of method AMTimelineEffectClass::GetSubObjectLoaded

  .method public hidebysig newslot virtual 
          instance void  GetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE& pVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::GetTimelineType
  } // end of method AMTimelineEffectClass::GetTimelineType

  .method public hidebysig newslot virtual 
          instance void  SetTimelineType(valuetype DexterLib.TIMELINE_MAJOR_TYPE newVal) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 54 49 4D   // ...DexterLib.TIM
                                                                                                            45 4C 49 4E 45 5F 4D 41 4A 4F 52 5F 54 59 50 45   // ELINE_MAJOR_TYPE
                                                                                                            00 00 ) 
    .override DexterLib.IAMTimelineObj::SetTimelineType
  } // end of method AMTimelineEffectClass::SetTimelineType

  .method public hidebysig newslot virtual 
          instance void  GetUserID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserID
  } // end of method AMTimelineEffectClass::GetUserID

  .method public hidebysig newslot virtual 
          instance void  SetUserID(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserID
  } // end of method AMTimelineEffectClass::SetUserID

  .method public hidebysig newslot virtual 
          instance void  GetGenID(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGenID
  } // end of method AMTimelineEffectClass::GetGenID

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetUserName() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserName
  } // end of method AMTimelineEffectClass::GetUserName

  .method public hidebysig newslot virtual 
          instance void  SetUserName(string  marshal( bstr) newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserName
  } // end of method AMTimelineEffectClass::SetUserName

  .method public hidebysig newslot virtual 
          instance void  GetUserData(uint8& pData,
                                     int32& pSize) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetUserData
  } // end of method AMTimelineEffectClass::GetUserData

  .method public hidebysig newslot virtual 
          instance void  SetUserData(uint8& pData,
                                     int32 Size) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetUserData
  } // end of method AMTimelineEffectClass::SetUserData

  .method public hidebysig newslot virtual 
          instance void  GetMuted(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetMuted
  } // end of method AMTimelineEffectClass::GetMuted

  .method public hidebysig newslot virtual 
          instance void  SetMuted(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetMuted
  } // end of method AMTimelineEffectClass::SetMuted

  .method public hidebysig newslot virtual 
          instance void  GetLocked(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetLocked
  } // end of method AMTimelineEffectClass::GetLocked

  .method public hidebysig newslot virtual 
          instance void  SetLocked(int32 newVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetLocked
  } // end of method AMTimelineEffectClass::SetLocked

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange(int64& pStart,
                                       int64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange
  } // end of method AMTimelineEffectClass::GetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  GetDirtyRange2(float64& pStart,
                                        float64& pStop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetDirtyRange2
  } // end of method AMTimelineEffectClass::GetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange(int64 Start,
                                       int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange
  } // end of method AMTimelineEffectClass::SetDirtyRange

  .method public hidebysig newslot virtual 
          instance void  SetDirtyRange2(float64 Start,
                                        float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::SetDirtyRange2
  } // end of method AMTimelineEffectClass::SetDirtyRange2

  .method public hidebysig newslot virtual 
          instance void  ClearDirty() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::ClearDirty
  } // end of method AMTimelineEffectClass::ClearDirty

  .method public hidebysig newslot virtual 
          instance void  Remove() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::Remove
  } // end of method AMTimelineEffectClass::Remove

  .method public hidebysig newslot virtual 
          instance void  RemoveAll() runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::RemoveAll
  } // end of method AMTimelineEffectClass::RemoveAll

  .method public hidebysig newslot virtual 
          instance void  GetTimelineNoRef(class DexterLib.AMTimeline&  marshal( interface ) ppResult) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetTimelineNoRef
  } // end of method AMTimelineEffectClass::GetTimelineNoRef

  .method public hidebysig newslot virtual 
          instance void  GetGroupIBelongTo([out] class DexterLib.AMTimelineGroup&  marshal( interface ) ppGroup) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetGroupIBelongTo
  } // end of method AMTimelineEffectClass::GetGroupIBelongTo

  .method public hidebysig newslot virtual 
          instance void  GetEmbedDepth(int32& pVal) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineObj::GetEmbedDepth
  } // end of method AMTimelineEffectClass::GetEmbedDepth

  .method public hidebysig newslot virtual 
          instance void  SplitAt(int64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt
  } // end of method AMTimelineEffectClass::SplitAt

  .method public hidebysig newslot virtual 
          instance void  SplitAt2(float64 Time) runtime managed internalcall
  {
    .override DexterLib.IAMTimelineSplittable::SplitAt2
  } // end of method AMTimelineEffectClass::SplitAt2

  .method public hidebysig newslot virtual 
          instance void  RemoteRead([in] string  marshal( lpwstr) pszPropName,
                                    [out] object&  marshal( struct) pVar,
                                    [in] class DexterLib.IErrorLog  marshal( interface ) pErrorLog,
                                    [in] uint32 varType,
                                    [in] object  marshal( iunknown ) pUnkObj) runtime managed internalcall
  {
    .override DexterLib.IPropertyBag::RemoteRead
  } // end of method AMTimelineEffectClass::RemoteRead

  .method public hidebysig newslot virtual 
          instance void  Write([in] string  marshal( lpwstr) pszPropName,
                               [in] object&  marshal( struct) pVar) runtime managed internalcall
  {
    .override DexterLib.IPropertyBag::Write
  } // end of method AMTimelineEffectClass::Write

} // end of class DexterLib.AMTimelineEffectClass

.class interface public abstract auto ansi import DexterLib.AMTimelineEffect
       implements DexterLib.IAMTimelineEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 43 45 30 43 32 36 34 2D 36 32 32 44   // ..$BCE0C264-622D
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1F 44 65 78 74 65 72 4C 69 62 2E 41 4D 54   // ...DexterLib.AMT
                                                                                                                          69 6D 65 6C 69 6E 65 45 66 66 65 63 74 43 6C 61   // imelineEffectCla
                                                                                                                          73 73 00 00 )                                     // ss..
} // end of class DexterLib.AMTimelineEffect

.class interface public abstract auto ansi import DexterLib.IAMTimelineEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 43 45 30 43 32 36 34 2D 36 32 32 44   // ..$BCE0C264-622D
                                                                                                  2D 31 31 44 32 2D 38 43 41 44 2D 30 30 41 30 32   // -11D2-8CAD-00A02
                                                                                                  34 35 38 30 39 30 32 00 00 )                      // 4580902..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  EffectGetPriority(int32& pVal) runtime managed internalcall
  {
  } // end of method IAMTimelineEffect::EffectGetPriority

} // end of class DexterLib.IAMTimelineEffect

.class interface public abstract auto ansi import DexterLib.IPropertyBag
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 35 32 37 32 41 30 30 2D 34 32 43 42   // ..$55272A00-42CB
                                                                                                  2D 31 31 43 45 2D 38 31 33 35 2D 30 30 41 41 30   // -11CE-8135-00AA0
                                                                                                  30 34 42 42 38 35 31 00 00 )                      // 04BB851..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  RemoteRead([in] string  marshal( lpwstr) pszPropName,
                                    [out] object&  marshal( struct) pVar,
                                    [in] class DexterLib.IErrorLog  marshal( interface ) pErrorLog,
                                    [in] uint32 varType,
                                    [in] object  marshal( iunknown ) pUnkObj) runtime managed internalcall
  {
  } // end of method IPropertyBag::RemoteRead

  .method public hidebysig newslot abstract virtual 
          instance void  Write([in] string  marshal( lpwstr) pszPropName,
                               [in] object&  marshal( struct) pVar) runtime managed internalcall
  {
  } // end of method IPropertyBag::Write

} // end of class DexterLib.IPropertyBag

.class interface public abstract auto ansi import DexterLib.IErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 33 31 32 37 43 41 34 30 2D 34 34 36 45   // ..$3127CA40-446E
                                                                                                  2D 31 31 43 45 2D 38 31 33 35 2D 30 30 41 41 30   // -11CE-8135-00AA0
                                                                                                  30 34 42 42 38 35 31 00 00 )                      // 04BB851..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  AddError([in] string  marshal( lpwstr) pszPropName,
                                  [in] valuetype [stdole]stdole.EXCEPINFO& pExcepInfo) runtime managed internalcall
  {
  } // end of method IErrorLog::AddError

} // end of class DexterLib.IErrorLog

.class public auto ansi import DexterLib.RenderEngineClass
       extends [mscorlib]System.Object
       implements DexterLib.IRenderEngine,
                  DexterLib.RenderEngine,
                  DexterLib.IRenderEngine2,
                  DexterLib.IAMSetErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 34 44 38 41 38 45 30 2D 38 30 41 32   // ..$64D8A8E0-80A2
                                                                                                  2D 31 31 44 32 2D 38 43 46 33 2D 30 30 41 30 43   // -11D2-8CF3-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method RenderEngineClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  SetTimelineObject(class DexterLib.AMTimeline  marshal( interface ) pTimeline) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetTimelineObject
  } // end of method RenderEngineClass::SetTimelineObject

  .method public hidebysig newslot virtual 
          instance void  GetTimelineObject([out] class DexterLib.AMTimeline&  marshal( interface ) ppTimeline) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetTimelineObject
  } // end of method RenderEngineClass::GetTimelineObject

  .method public hidebysig newslot virtual 
          instance void  GetFilterGraph([out] class DexterLib.IGraphBuilder&  marshal( interface ) ppFG) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetFilterGraph
  } // end of method RenderEngineClass::GetFilterGraph

  .method public hidebysig newslot virtual 
          instance void  SetFilterGraph(class DexterLib.IGraphBuilder  marshal( interface ) pFG) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetFilterGraph
  } // end of method RenderEngineClass::SetFilterGraph

  .method public hidebysig newslot virtual 
          instance void  SetInterestRange(int64 Start,
                                          int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetInterestRange
  } // end of method RenderEngineClass::SetInterestRange

  .method public hidebysig newslot virtual 
          instance void  SetInterestRange2(float64 Start,
                                           float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetInterestRange2
  } // end of method RenderEngineClass::SetInterestRange2

  .method public hidebysig newslot virtual 
          instance void  SetRenderRange(int64 Start,
                                        int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetRenderRange
  } // end of method RenderEngineClass::SetRenderRange

  .method public hidebysig newslot virtual 
          instance void  SetRenderRange2(float64 Start,
                                         float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetRenderRange2
  } // end of method RenderEngineClass::SetRenderRange2

  .method public hidebysig newslot virtual 
          instance void  GetGroupOutputPin(int32 Group,
                                           [out] class DexterLib.IPin&  marshal( interface ) ppRenderPin) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetGroupOutputPin
  } // end of method RenderEngineClass::GetGroupOutputPin

  .method public hidebysig newslot virtual 
          instance void  ScrapIt() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::ScrapIt
  } // end of method RenderEngineClass::ScrapIt

  .method public hidebysig newslot virtual 
          instance void  RenderOutputPins() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::RenderOutputPins
  } // end of method RenderEngineClass::RenderOutputPins

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetVendorString() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetVendorString
  } // end of method RenderEngineClass::GetVendorString

  .method public hidebysig newslot virtual 
          instance void  ConnectFrontEnd() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::ConnectFrontEnd
  } // end of method RenderEngineClass::ConnectFrontEnd

  .method public hidebysig newslot virtual 
          instance void  SetSourceConnectCallback(class DexterLib.IGrfCache  marshal( interface ) pCallback) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetSourceConnectCallback
  } // end of method RenderEngineClass::SetSourceConnectCallback

  .method public hidebysig newslot virtual 
          instance void  SetDynamicReconnectLevel(int32 Level) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetDynamicReconnectLevel
  } // end of method RenderEngineClass::SetDynamicReconnectLevel

  .method public hidebysig newslot virtual 
          instance void  DoSmartRecompression() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::DoSmartRecompression
  } // end of method RenderEngineClass::DoSmartRecompression

  .method public hidebysig newslot virtual 
          instance void  UseInSmartRecompressionGraph() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::UseInSmartRecompressionGraph
  } // end of method RenderEngineClass::UseInSmartRecompressionGraph

  .method public hidebysig newslot virtual 
          instance void  SetSourceNameValidation(string  marshal( bstr) FilterString,
                                                 class DexterLib.MediaLocator  marshal( interface ) pOverride,
                                                 int32 Flags) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetSourceNameValidation
  } // end of method RenderEngineClass::SetSourceNameValidation

  .method public hidebysig newslot virtual 
          instance void  Commit() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::Commit
  } // end of method RenderEngineClass::Commit

  .method public hidebysig newslot virtual 
          instance void  Decommit() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::Decommit
  } // end of method RenderEngineClass::Decommit

  .method public hidebysig newslot virtual 
          instance void  GetCaps(int32 Index,
                                 int32& pReturn) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetCaps
  } // end of method RenderEngineClass::GetCaps

  .method public hidebysig newslot virtual 
          instance void  SetResizerGUID(valuetype [mscorlib]System.Guid ResizerGuid) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine2::SetResizerGUID
  } // end of method RenderEngineClass::SetResizerGUID

  .method public hidebysig newslot specialname virtual 
          instance class DexterLib.IAMErrorLog 
          marshal( interface ) 
          get_ErrorLog() runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::get_ErrorLog
  } // end of method RenderEngineClass::get_ErrorLog

  .method public hidebysig newslot specialname virtual 
          instance void  set_ErrorLog([in] class DexterLib.IAMErrorLog  marshal( interface ) pVal) runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::set_ErrorLog
  } // end of method RenderEngineClass::set_ErrorLog

  .property class DexterLib.IAMErrorLog ErrorLog()
  {
    .get instance class DexterLib.IAMErrorLog DexterLib.RenderEngineClass::get_ErrorLog()
    .set instance void DexterLib.RenderEngineClass::set_ErrorLog(class DexterLib.IAMErrorLog)
  } // end of property RenderEngineClass::ErrorLog
} // end of class DexterLib.RenderEngineClass

.class interface public abstract auto ansi import DexterLib.RenderEngine
       implements DexterLib.IRenderEngine
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 42 45 45 33 41 38 31 2D 36 36 43 39   // ..$6BEE3A81-66C9
                                                                                                  2D 31 31 44 32 2D 39 31 38 46 2D 30 30 43 30 44   // -11D2-918F-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1B 44 65 78 74 65 72 4C 69 62 2E 52 65 6E   // ...DexterLib.Ren
                                                                                                                          64 65 72 45 6E 67 69 6E 65 43 6C 61 73 73 00 00 ) // derEngineClass..
} // end of class DexterLib.RenderEngine

.class interface public abstract auto ansi import DexterLib.IRenderEngine
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 42 45 45 33 41 38 31 2D 36 36 43 39   // ..$6BEE3A81-66C9
                                                                                                  2D 31 31 44 32 2D 39 31 38 46 2D 30 30 43 30 44   // -11D2-918F-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .method public hidebysig newslot abstract virtual 
          instance void  SetTimelineObject(class DexterLib.AMTimeline  marshal( interface ) pTimeline) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetTimelineObject

  .method public hidebysig newslot abstract virtual 
          instance void  GetTimelineObject([out] class DexterLib.AMTimeline&  marshal( interface ) ppTimeline) runtime managed internalcall
  {
  } // end of method IRenderEngine::GetTimelineObject

  .method public hidebysig newslot abstract virtual 
          instance void  GetFilterGraph([out] class DexterLib.IGraphBuilder&  marshal( interface ) ppFG) runtime managed internalcall
  {
  } // end of method IRenderEngine::GetFilterGraph

  .method public hidebysig newslot abstract virtual 
          instance void  SetFilterGraph(class DexterLib.IGraphBuilder  marshal( interface ) pFG) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetFilterGraph

  .method public hidebysig newslot abstract virtual 
          instance void  SetInterestRange(int64 Start,
                                          int64 Stop) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetInterestRange

  .method public hidebysig newslot abstract virtual 
          instance void  SetInterestRange2(float64 Start,
                                           float64 Stop) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetInterestRange2

  .method public hidebysig newslot abstract virtual 
          instance void  SetRenderRange(int64 Start,
                                        int64 Stop) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetRenderRange

  .method public hidebysig newslot abstract virtual 
          instance void  SetRenderRange2(float64 Start,
                                         float64 Stop) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetRenderRange2

  .method public hidebysig newslot abstract virtual 
          instance void  GetGroupOutputPin(int32 Group,
                                           [out] class DexterLib.IPin&  marshal( interface ) ppRenderPin) runtime managed internalcall
  {
  } // end of method IRenderEngine::GetGroupOutputPin

  .method public hidebysig newslot abstract virtual 
          instance void  ScrapIt() runtime managed internalcall
  {
  } // end of method IRenderEngine::ScrapIt

  .method public hidebysig newslot abstract virtual 
          instance void  RenderOutputPins() runtime managed internalcall
  {
  } // end of method IRenderEngine::RenderOutputPins

  .method public hidebysig newslot abstract virtual 
          instance string 
          marshal( bstr) 
          GetVendorString() runtime managed internalcall
  {
  } // end of method IRenderEngine::GetVendorString

  .method public hidebysig newslot abstract virtual 
          instance void  ConnectFrontEnd() runtime managed internalcall
  {
  } // end of method IRenderEngine::ConnectFrontEnd

  .method public hidebysig newslot abstract virtual 
          instance void  SetSourceConnectCallback(class DexterLib.IGrfCache  marshal( interface ) pCallback) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetSourceConnectCallback

  .method public hidebysig newslot abstract virtual 
          instance void  SetDynamicReconnectLevel(int32 Level) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetDynamicReconnectLevel

  .method public hidebysig newslot abstract virtual 
          instance void  DoSmartRecompression() runtime managed internalcall
  {
  } // end of method IRenderEngine::DoSmartRecompression

  .method public hidebysig newslot abstract virtual 
          instance void  UseInSmartRecompressionGraph() runtime managed internalcall
  {
  } // end of method IRenderEngine::UseInSmartRecompressionGraph

  .method public hidebysig newslot abstract virtual 
          instance void  SetSourceNameValidation(string  marshal( bstr) FilterString,
                                                 class DexterLib.MediaLocator  marshal( interface ) pOverride,
                                                 int32 Flags) runtime managed internalcall
  {
  } // end of method IRenderEngine::SetSourceNameValidation

  .method public hidebysig newslot abstract virtual 
          instance void  Commit() runtime managed internalcall
  {
  } // end of method IRenderEngine::Commit

  .method public hidebysig newslot abstract virtual 
          instance void  Decommit() runtime managed internalcall
  {
  } // end of method IRenderEngine::Decommit

  .method public hidebysig newslot abstract virtual 
          instance void  GetCaps(int32 Index,
                                 int32& pReturn) runtime managed internalcall
  {
  } // end of method IRenderEngine::GetCaps

} // end of class DexterLib.IRenderEngine

.class interface public abstract auto ansi import DexterLib.IGraphBuilder
       implements DexterLib.IFilterGraph
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 41 39 2D 30 41 44 34   // ..$56A868A9-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .method public hidebysig newslot abstract virtual 
          instance void  AddFilter([in] class DexterLib.IBaseFilter  marshal( interface ) pFilter,
                                   [in] string  marshal( lpwstr) pName) runtime managed internalcall
  {
  } // end of method IGraphBuilder::AddFilter

  .method public hidebysig newslot abstract virtual 
          instance void  RemoveFilter([in] class DexterLib.IBaseFilter  marshal( interface ) pFilter) runtime managed internalcall
  {
  } // end of method IGraphBuilder::RemoveFilter

  .method public hidebysig newslot abstract virtual 
          instance void  EnumFilters([out] class DexterLib.IEnumFilters&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IGraphBuilder::EnumFilters

  .method public hidebysig newslot abstract virtual 
          instance void  FindFilterByName([in] string  marshal( lpwstr) pName,
                                          [out] class DexterLib.IBaseFilter&  marshal( interface ) ppFilter) runtime managed internalcall
  {
  } // end of method IGraphBuilder::FindFilterByName

  .method public hidebysig newslot abstract virtual 
          instance void  ConnectDirect([in] class DexterLib.IPin  marshal( interface ) ppinOut,
                                       [in] class DexterLib.IPin  marshal( interface ) ppinIn,
                                       [in] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IGraphBuilder::ConnectDirect

  .method public hidebysig newslot abstract virtual 
          instance void  Reconnect([in] class DexterLib.IPin  marshal( interface ) pPin) runtime managed internalcall
  {
  } // end of method IGraphBuilder::Reconnect

  .method public hidebysig newslot abstract virtual 
          instance void  Disconnect([in] class DexterLib.IPin  marshal( interface ) pPin) runtime managed internalcall
  {
  } // end of method IGraphBuilder::Disconnect

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultSyncSource() runtime managed internalcall
  {
  } // end of method IGraphBuilder::SetDefaultSyncSource

  .method public hidebysig newslot abstract virtual 
          instance void  Connect([in] class DexterLib.IPin  marshal( interface ) ppinOut,
                                 [in] class DexterLib.IPin  marshal( interface ) ppinIn) runtime managed internalcall
  {
  } // end of method IGraphBuilder::Connect

  .method public hidebysig newslot abstract virtual 
          instance void  Render([in] class DexterLib.IPin  marshal( interface ) ppinOut) runtime managed internalcall
  {
  } // end of method IGraphBuilder::Render

  .method public hidebysig newslot abstract virtual 
          instance void  RenderFile([in] string  marshal( lpwstr) lpcwstrFile,
                                    [in] string  marshal( lpwstr) lpcwstrPlayList) runtime managed internalcall
  {
  } // end of method IGraphBuilder::RenderFile

  .method public hidebysig newslot abstract virtual 
          instance void  AddSourceFilter([in] string  marshal( lpwstr) lpcwstrFileName,
                                         [in] string  marshal( lpwstr) lpcwstrFilterName,
                                         [out] class DexterLib.IBaseFilter&  marshal( interface ) ppFilter) runtime managed internalcall
  {
  } // end of method IGraphBuilder::AddSourceFilter

  .method public hidebysig newslot abstract virtual 
          instance void  SetLogFile([in] uint32 hFile) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 13 44 65 78 74 65 72 4C 69 62 2E 55 4C 4F   // ...DexterLib.ULO
                                                                                                            4E 47 5F 50 54 52 00 00 )                         // NG_PTR..
  } // end of method IGraphBuilder::SetLogFile

  .method public hidebysig newslot abstract virtual 
          instance void  Abort() runtime managed internalcall
  {
  } // end of method IGraphBuilder::Abort

  .method public hidebysig newslot abstract virtual 
          instance void  ShouldOperationContinue() runtime managed internalcall
  {
  } // end of method IGraphBuilder::ShouldOperationContinue

} // end of class DexterLib.IGraphBuilder

.class interface public abstract auto ansi import DexterLib.IFilterGraph
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 46 2D 30 41 44 34   // ..$56A8689F-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  AddFilter([in] class DexterLib.IBaseFilter  marshal( interface ) pFilter,
                                   [in] string  marshal( lpwstr) pName) runtime managed internalcall
  {
  } // end of method IFilterGraph::AddFilter

  .method public hidebysig newslot abstract virtual 
          instance void  RemoveFilter([in] class DexterLib.IBaseFilter  marshal( interface ) pFilter) runtime managed internalcall
  {
  } // end of method IFilterGraph::RemoveFilter

  .method public hidebysig newslot abstract virtual 
          instance void  EnumFilters([out] class DexterLib.IEnumFilters&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IFilterGraph::EnumFilters

  .method public hidebysig newslot abstract virtual 
          instance void  FindFilterByName([in] string  marshal( lpwstr) pName,
                                          [out] class DexterLib.IBaseFilter&  marshal( interface ) ppFilter) runtime managed internalcall
  {
  } // end of method IFilterGraph::FindFilterByName

  .method public hidebysig newslot abstract virtual 
          instance void  ConnectDirect([in] class DexterLib.IPin  marshal( interface ) ppinOut,
                                       [in] class DexterLib.IPin  marshal( interface ) ppinIn,
                                       [in] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IFilterGraph::ConnectDirect

  .method public hidebysig newslot abstract virtual 
          instance void  Reconnect([in] class DexterLib.IPin  marshal( interface ) pPin) runtime managed internalcall
  {
  } // end of method IFilterGraph::Reconnect

  .method public hidebysig newslot abstract virtual 
          instance void  Disconnect([in] class DexterLib.IPin  marshal( interface ) pPin) runtime managed internalcall
  {
  } // end of method IFilterGraph::Disconnect

  .method public hidebysig newslot abstract virtual 
          instance void  SetDefaultSyncSource() runtime managed internalcall
  {
  } // end of method IFilterGraph::SetDefaultSyncSource

} // end of class DexterLib.IFilterGraph

.class interface public abstract auto ansi import DexterLib.IBaseFilter
       implements DexterLib.IMediaFilter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 35 2D 30 41 44 34   // ..$56A86895-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
  } // end of method IBaseFilter::GetClassID

  .method public hidebysig newslot abstract virtual 
          instance void  Stop() runtime managed internalcall
  {
  } // end of method IBaseFilter::Stop

  .method public hidebysig newslot abstract virtual 
          instance void  Pause() runtime managed internalcall
  {
  } // end of method IBaseFilter::Pause

  .method public hidebysig newslot abstract virtual 
          instance void  Run(int64 tStart) runtime managed internalcall
  {
  } // end of method IBaseFilter::Run

  .method public hidebysig newslot abstract virtual 
          instance void  GetState([in] uint32 dwMilliSecsTimeout,
                                  [out] valuetype DexterLib._FilterState& State) runtime managed internalcall
  {
  } // end of method IBaseFilter::GetState

  .method public hidebysig newslot abstract virtual 
          instance void  SetSyncSource([in] class DexterLib.IReferenceClock  marshal( interface ) pClock) runtime managed internalcall
  {
  } // end of method IBaseFilter::SetSyncSource

  .method public hidebysig newslot abstract virtual 
          instance void  GetSyncSource([out] class DexterLib.IReferenceClock&  marshal( interface ) pClock) runtime managed internalcall
  {
  } // end of method IBaseFilter::GetSyncSource

  .method public hidebysig newslot abstract virtual 
          instance void  EnumPins([out] class DexterLib.IEnumPins&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IBaseFilter::EnumPins

  .method public hidebysig newslot abstract virtual 
          instance void  FindPin([in] string  marshal( lpwstr) Id,
                                 [out] class DexterLib.IPin&  marshal( interface ) ppPin) runtime managed internalcall
  {
  } // end of method IBaseFilter::FindPin

  .method public hidebysig newslot abstract virtual 
          instance void  QueryFilterInfo([out] valuetype DexterLib._FilterInfo& pInfo) runtime managed internalcall
  {
  } // end of method IBaseFilter::QueryFilterInfo

  .method public hidebysig newslot abstract virtual 
          instance void  JoinFilterGraph([in] class DexterLib.IFilterGraph  marshal( interface ) pGraph,
                                         [in] string  marshal( lpwstr) pName) runtime managed internalcall
  {
  } // end of method IBaseFilter::JoinFilterGraph

  .method public hidebysig newslot abstract virtual 
          instance void  QueryVendorInfo([out] string&  marshal( lpwstr) pVendorInfo) runtime managed internalcall
  {
  } // end of method IBaseFilter::QueryVendorInfo

} // end of class DexterLib.IBaseFilter

.class interface public abstract auto ansi import DexterLib.IMediaFilter
       implements DexterLib.IPersist
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 39 2D 30 41 44 34   // ..$56A86899-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .method public hidebysig newslot abstract virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
  } // end of method IMediaFilter::GetClassID

  .method public hidebysig newslot abstract virtual 
          instance void  Stop() runtime managed internalcall
  {
  } // end of method IMediaFilter::Stop

  .method public hidebysig newslot abstract virtual 
          instance void  Pause() runtime managed internalcall
  {
  } // end of method IMediaFilter::Pause

  .method public hidebysig newslot abstract virtual 
          instance void  Run(int64 tStart) runtime managed internalcall
  {
  } // end of method IMediaFilter::Run

  .method public hidebysig newslot abstract virtual 
          instance void  GetState([in] uint32 dwMilliSecsTimeout,
                                  [out] valuetype DexterLib._FilterState& State) runtime managed internalcall
  {
  } // end of method IMediaFilter::GetState

  .method public hidebysig newslot abstract virtual 
          instance void  SetSyncSource([in] class DexterLib.IReferenceClock  marshal( interface ) pClock) runtime managed internalcall
  {
  } // end of method IMediaFilter::SetSyncSource

  .method public hidebysig newslot abstract virtual 
          instance void  GetSyncSource([out] class DexterLib.IReferenceClock&  marshal( interface ) pClock) runtime managed internalcall
  {
  } // end of method IMediaFilter::GetSyncSource

} // end of class DexterLib.IMediaFilter

.class public auto ansi sealed DexterLib._FilterState
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DexterLib._FilterState State_Stopped = int32(0x00000000)
  .field public static literal valuetype DexterLib._FilterState State_Paused = int32(0x00000001)
  .field public static literal valuetype DexterLib._FilterState State_Running = int32(0x00000002)
} // end of class DexterLib._FilterState

.class interface public abstract auto ansi import DexterLib.IReferenceClock
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 37 2D 30 41 44 34   // ..$56A86897-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .method public hidebysig newslot abstract virtual 
          instance void  GetTime([out] int64& pTime) runtime managed internalcall
  {
  } // end of method IReferenceClock::GetTime

  .method public hidebysig newslot abstract virtual 
          instance void  AdviseTime([in] int64 baseTime,
                                    [in] int64 streamTime,
                                    [in] uint32 hEvent,
                                    [out] uint32& pdwAdviseCookie) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 13 44 65 78 74 65 72 4C 69 62 2E 55 4C 4F   // ...DexterLib.ULO
                                                                                                            4E 47 5F 50 54 52 00 00 )                         // NG_PTR..
    .param [4]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 13 44 65 78 74 65 72 4C 69 62 2E 55 4C 4F   // ...DexterLib.ULO
                                                                                                            4E 47 5F 50 54 52 00 00 )                         // NG_PTR..
  } // end of method IReferenceClock::AdviseTime

  .method public hidebysig newslot abstract virtual 
          instance void  AdvisePeriodic([in] int64 startTime,
                                        [in] int64 periodTime,
                                        [in] uint32 hSemaphore,
                                        [out] uint32& pdwAdviseCookie) runtime managed internalcall
  {
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 13 44 65 78 74 65 72 4C 69 62 2E 55 4C 4F   // ...DexterLib.ULO
                                                                                                            4E 47 5F 50 54 52 00 00 )                         // NG_PTR..
    .param [4]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 13 44 65 78 74 65 72 4C 69 62 2E 55 4C 4F   // ...DexterLib.ULO
                                                                                                            4E 47 5F 50 54 52 00 00 )                         // NG_PTR..
  } // end of method IReferenceClock::AdvisePeriodic

  .method public hidebysig newslot abstract virtual 
          instance void  Unadvise([in] uint32 dwAdviseCookie) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 13 44 65 78 74 65 72 4C 69 62 2E 55 4C 4F   // ...DexterLib.ULO
                                                                                                            4E 47 5F 50 54 52 00 00 )                         // NG_PTR..
  } // end of method IReferenceClock::Unadvise

} // end of class DexterLib.IReferenceClock

.class interface public abstract auto ansi import DexterLib.IEnumPins
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 32 2D 30 41 44 34   // ..$56A86892-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .method public hidebysig newslot abstract virtual 
          instance void  Next([in] uint32 cPins,
                              [out] class DexterLib.IPin&  marshal( interface ) ppPins,
                              [out] uint32& pcFetched) runtime managed internalcall
  {
  } // end of method IEnumPins::Next

  .method public hidebysig newslot abstract virtual 
          instance void  Skip([in] uint32 cPins) runtime managed internalcall
  {
  } // end of method IEnumPins::Skip

  .method public hidebysig newslot abstract virtual 
          instance void  Reset() runtime managed internalcall
  {
  } // end of method IEnumPins::Reset

  .method public hidebysig newslot abstract virtual 
          instance void  Clone([out] class DexterLib.IEnumPins&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IEnumPins::Clone

} // end of class DexterLib.IEnumPins

.class interface public abstract auto ansi import DexterLib.IPin
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 31 2D 30 41 44 34   // ..$56A86891-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .method public hidebysig newslot abstract virtual 
          instance void  Connect([in] class DexterLib.IPin  marshal( interface ) pReceivePin,
                                 [in] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IPin::Connect

  .method public hidebysig newslot abstract virtual 
          instance void  ReceiveConnection([in] class DexterLib.IPin  marshal( interface ) pConnector,
                                           [in] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IPin::ReceiveConnection

  .method public hidebysig newslot abstract virtual 
          instance void  Disconnect() runtime managed internalcall
  {
  } // end of method IPin::Disconnect

  .method public hidebysig newslot abstract virtual 
          instance void  ConnectedTo([out] class DexterLib.IPin&  marshal( interface ) pPin) runtime managed internalcall
  {
  } // end of method IPin::ConnectedTo

  .method public hidebysig newslot abstract virtual 
          instance void  ConnectionMediaType([out] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IPin::ConnectionMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  QueryPinInfo([out] valuetype DexterLib._PinInfo& pInfo) runtime managed internalcall
  {
  } // end of method IPin::QueryPinInfo

  .method public hidebysig newslot abstract virtual 
          instance void  QueryDirection([out] valuetype DexterLib._PinDirection& pPinDir) runtime managed internalcall
  {
  } // end of method IPin::QueryDirection

  .method public hidebysig newslot abstract virtual 
          instance void  QueryId([out] string&  marshal( lpwstr) Id) runtime managed internalcall
  {
  } // end of method IPin::QueryId

  .method public hidebysig newslot abstract virtual 
          instance void  QueryAccept([in] valuetype DexterLib._AMMediaType& pmt) runtime managed internalcall
  {
  } // end of method IPin::QueryAccept

  .method public hidebysig newslot abstract virtual 
          instance void  EnumMediaTypes([out] class DexterLib.IEnumMediaTypes&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IPin::EnumMediaTypes

  .method public hidebysig newslot abstract virtual 
          instance void  QueryInternalConnections([out] class DexterLib.IPin&  marshal( interface ) apPin,
                                                  [in][out] uint32& nPin) runtime managed internalcall
  {
  } // end of method IPin::QueryInternalConnections

  .method public hidebysig newslot abstract virtual 
          instance void  EndOfStream() runtime managed internalcall
  {
  } // end of method IPin::EndOfStream

  .method public hidebysig newslot abstract virtual 
          instance void  BeginFlush() runtime managed internalcall
  {
  } // end of method IPin::BeginFlush

  .method public hidebysig newslot abstract virtual 
          instance void  EndFlush() runtime managed internalcall
  {
  } // end of method IPin::EndFlush

  .method public hidebysig newslot abstract virtual 
          instance void  NewSegment([in] int64 tStart,
                                    [in] int64 tStop,
                                    [in] float64 dRate) runtime managed internalcall
  {
  } // end of method IPin::NewSegment

} // end of class DexterLib.IPin

.class public sequential ansi sealed beforefieldinit DexterLib._PinInfo
       extends [mscorlib]System.ValueType
{
  .pack 4
  .size 0
  .field public  marshal( interface ) class DexterLib.IBaseFilter pFilter
  .field public valuetype DexterLib._PinDirection dir
  .field public  marshal( fixed array [128]) uint16[] achName
} // end of class DexterLib._PinInfo

.class public auto ansi sealed DexterLib._PinDirection
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DexterLib._PinDirection PINDIR_INPUT = int32(0x00000000)
  .field public static literal valuetype DexterLib._PinDirection PINDIR_OUTPUT = int32(0x00000001)
} // end of class DexterLib._PinDirection

.class interface public abstract auto ansi import DexterLib.IEnumMediaTypes
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComConversionLossAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 38 39 43 33 31 30 34 30 2D 38 34 36 42   // ..$89C31040-846B
                                                                                                  2D 31 31 43 45 2D 39 37 44 33 2D 30 30 41 41 30   // -11CE-97D3-00AA0
                                                                                                  30 35 35 35 39 35 41 00 00 )                      // 055595A..
  .method public hidebysig newslot abstract virtual 
          instance void  Next([in] uint32 cMediaTypes,
                              [out] native int ppMediaTypes,
                              [out] uint32& pcFetched) runtime managed internalcall
  {
  } // end of method IEnumMediaTypes::Next

  .method public hidebysig newslot abstract virtual 
          instance void  Skip([in] uint32 cMediaTypes) runtime managed internalcall
  {
  } // end of method IEnumMediaTypes::Skip

  .method public hidebysig newslot abstract virtual 
          instance void  Reset() runtime managed internalcall
  {
  } // end of method IEnumMediaTypes::Reset

  .method public hidebysig newslot abstract virtual 
          instance void  Clone([out] class DexterLib.IEnumMediaTypes&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IEnumMediaTypes::Clone

} // end of class DexterLib.IEnumMediaTypes

.class public sequential ansi sealed beforefieldinit DexterLib._FilterInfo
       extends [mscorlib]System.ValueType
{
  .pack 4
  .size 0
  .field public  marshal( fixed array [128]) uint16[] achName
  .field public  marshal( interface ) class DexterLib.IFilterGraph pGraph
} // end of class DexterLib._FilterInfo

.class interface public abstract auto ansi import DexterLib.IEnumFilters
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 33 2D 30 41 44 34   // ..$56A86893-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .method public hidebysig newslot abstract virtual 
          instance void  Next([in] uint32 cFilters,
                              [out] class DexterLib.IBaseFilter&  marshal( interface ) ppFilter,
                              [out] uint32& pcFetched) runtime managed internalcall
  {
  } // end of method IEnumFilters::Next

  .method public hidebysig newslot abstract virtual 
          instance void  Skip([in] uint32 cFilters) runtime managed internalcall
  {
  } // end of method IEnumFilters::Skip

  .method public hidebysig newslot abstract virtual 
          instance void  Reset() runtime managed internalcall
  {
  } // end of method IEnumFilters::Reset

  .method public hidebysig newslot abstract virtual 
          instance void  Clone([out] class DexterLib.IEnumFilters&  marshal( interface ) ppEnum) runtime managed internalcall
  {
  } // end of method IEnumFilters::Clone

} // end of class DexterLib.IEnumFilters

.class interface public abstract auto ansi import DexterLib.IGrfCache
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 00 10 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 41 45 39 34 37 32 42 45 2D 42 30 43 33   // ..$AE9472BE-B0C3
                                                                                                  2D 31 31 44 32 2D 38 44 32 34 2D 30 30 41 30 43   // -11D2-8D24-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .method public hidebysig newslot abstract virtual 
          instance void  AddFilter(class DexterLib.IGrfCache  marshal( interface ) ChainedCache,
                                   int64 Id,
                                   class DexterLib.IBaseFilter  marshal( interface ) pFilter,
                                   string  marshal( lpwstr) pName) runtime managed internalcall
  {
  } // end of method IGrfCache::AddFilter

  .method public hidebysig newslot abstract virtual 
          instance void  ConnectPins(class DexterLib.IGrfCache  marshal( interface ) ChainedCache,
                                     int64 PinID1,
                                     class DexterLib.IPin  marshal( interface ) pPin1,
                                     int64 PinID2,
                                     class DexterLib.IPin  marshal( interface ) pPin2) runtime managed internalcall
  {
  } // end of method IGrfCache::ConnectPins

  .method public hidebysig newslot abstract virtual 
          instance void  SetGraph(class DexterLib.IGraphBuilder  marshal( interface ) pGraph) runtime managed internalcall
  {
  } // end of method IGrfCache::SetGraph

  .method public hidebysig newslot abstract virtual 
          instance void  DoConnectionsNow() runtime managed internalcall
  {
  } // end of method IGrfCache::DoConnectionsNow

} // end of class DexterLib.IGrfCache

.class interface public abstract auto ansi import DexterLib.IRenderEngine2
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 42 45 45 33 41 38 32 2D 36 36 43 39   // ..$6BEE3A82-66C9
                                                                                                  2D 31 31 44 32 2D 39 31 38 46 2D 30 30 43 30 44   // -11D2-918F-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .method public hidebysig newslot abstract virtual 
          instance void  SetResizerGUID(valuetype [mscorlib]System.Guid ResizerGuid) runtime managed internalcall
  {
  } // end of method IRenderEngine2::SetResizerGUID

} // end of class DexterLib.IRenderEngine2

.class public auto ansi import DexterLib.SmartRenderEngineClass
       extends [mscorlib]System.Object
       implements DexterLib.IRenderEngine,
                  DexterLib.SmartRenderEngine,
                  DexterLib.ISmartRenderEngine,
                  DexterLib.IAMSetErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 34 39 38 42 30 39 34 39 2D 42 42 45 39   // ..$498B0949-BBE9
                                                                                                  2D 34 30 37 32 2D 39 38 42 45 2D 36 43 43 41 45   // -4072-98BE-6CCAE
                                                                                                  42 37 39 44 43 36 46 00 00 )                      // B79DC6F..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method SmartRenderEngineClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  SetTimelineObject(class DexterLib.AMTimeline  marshal( interface ) pTimeline) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetTimelineObject
  } // end of method SmartRenderEngineClass::SetTimelineObject

  .method public hidebysig newslot virtual 
          instance void  GetTimelineObject([out] class DexterLib.AMTimeline&  marshal( interface ) ppTimeline) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetTimelineObject
  } // end of method SmartRenderEngineClass::GetTimelineObject

  .method public hidebysig newslot virtual 
          instance void  GetFilterGraph([out] class DexterLib.IGraphBuilder&  marshal( interface ) ppFG) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetFilterGraph
  } // end of method SmartRenderEngineClass::GetFilterGraph

  .method public hidebysig newslot virtual 
          instance void  SetFilterGraph(class DexterLib.IGraphBuilder  marshal( interface ) pFG) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetFilterGraph
  } // end of method SmartRenderEngineClass::SetFilterGraph

  .method public hidebysig newslot virtual 
          instance void  SetInterestRange(int64 Start,
                                          int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetInterestRange
  } // end of method SmartRenderEngineClass::SetInterestRange

  .method public hidebysig newslot virtual 
          instance void  SetInterestRange2(float64 Start,
                                           float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetInterestRange2
  } // end of method SmartRenderEngineClass::SetInterestRange2

  .method public hidebysig newslot virtual 
          instance void  SetRenderRange(int64 Start,
                                        int64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetRenderRange
  } // end of method SmartRenderEngineClass::SetRenderRange

  .method public hidebysig newslot virtual 
          instance void  SetRenderRange2(float64 Start,
                                         float64 Stop) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetRenderRange2
  } // end of method SmartRenderEngineClass::SetRenderRange2

  .method public hidebysig newslot virtual 
          instance void  GetGroupOutputPin(int32 Group,
                                           [out] class DexterLib.IPin&  marshal( interface ) ppRenderPin) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetGroupOutputPin
  } // end of method SmartRenderEngineClass::GetGroupOutputPin

  .method public hidebysig newslot virtual 
          instance void  ScrapIt() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::ScrapIt
  } // end of method SmartRenderEngineClass::ScrapIt

  .method public hidebysig newslot virtual 
          instance void  RenderOutputPins() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::RenderOutputPins
  } // end of method SmartRenderEngineClass::RenderOutputPins

  .method public hidebysig newslot virtual 
          instance string 
          marshal( bstr) 
          GetVendorString() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetVendorString
  } // end of method SmartRenderEngineClass::GetVendorString

  .method public hidebysig newslot virtual 
          instance void  ConnectFrontEnd() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::ConnectFrontEnd
  } // end of method SmartRenderEngineClass::ConnectFrontEnd

  .method public hidebysig newslot virtual 
          instance void  SetSourceConnectCallback(class DexterLib.IGrfCache  marshal( interface ) pCallback) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetSourceConnectCallback
  } // end of method SmartRenderEngineClass::SetSourceConnectCallback

  .method public hidebysig newslot virtual 
          instance void  SetDynamicReconnectLevel(int32 Level) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetDynamicReconnectLevel
  } // end of method SmartRenderEngineClass::SetDynamicReconnectLevel

  .method public hidebysig newslot virtual 
          instance void  DoSmartRecompression() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::DoSmartRecompression
  } // end of method SmartRenderEngineClass::DoSmartRecompression

  .method public hidebysig newslot virtual 
          instance void  UseInSmartRecompressionGraph() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::UseInSmartRecompressionGraph
  } // end of method SmartRenderEngineClass::UseInSmartRecompressionGraph

  .method public hidebysig newslot virtual 
          instance void  SetSourceNameValidation(string  marshal( bstr) FilterString,
                                                 class DexterLib.MediaLocator  marshal( interface ) pOverride,
                                                 int32 Flags) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::SetSourceNameValidation
  } // end of method SmartRenderEngineClass::SetSourceNameValidation

  .method public hidebysig newslot virtual 
          instance void  Commit() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::Commit
  } // end of method SmartRenderEngineClass::Commit

  .method public hidebysig newslot virtual 
          instance void  Decommit() runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::Decommit
  } // end of method SmartRenderEngineClass::Decommit

  .method public hidebysig newslot virtual 
          instance void  GetCaps(int32 Index,
                                 int32& pReturn) runtime managed internalcall
  {
    .override DexterLib.IRenderEngine::GetCaps
  } // end of method SmartRenderEngineClass::GetCaps

  .method public hidebysig newslot virtual 
          instance void  SetGroupCompressor(int32 Group,
                                            class DexterLib.IBaseFilter  marshal( interface ) pCompressor) runtime managed internalcall
  {
    .override DexterLib.ISmartRenderEngine::SetGroupCompressor
  } // end of method SmartRenderEngineClass::SetGroupCompressor

  .method public hidebysig newslot virtual 
          instance void  GetGroupCompressor(int32 Group,
                                            class DexterLib.IBaseFilter&  marshal( interface ) pCompressor) runtime managed internalcall
  {
    .override DexterLib.ISmartRenderEngine::GetGroupCompressor
  } // end of method SmartRenderEngineClass::GetGroupCompressor

  .method public hidebysig newslot virtual 
          instance void  SetFindCompressorCB(class DexterLib.IFindCompressorCB  marshal( interface ) pCallback) runtime managed internalcall
  {
    .override DexterLib.ISmartRenderEngine::SetFindCompressorCB
  } // end of method SmartRenderEngineClass::SetFindCompressorCB

  .method public hidebysig newslot specialname virtual 
          instance class DexterLib.IAMErrorLog 
          marshal( interface ) 
          get_ErrorLog() runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::get_ErrorLog
  } // end of method SmartRenderEngineClass::get_ErrorLog

  .method public hidebysig newslot specialname virtual 
          instance void  set_ErrorLog([in] class DexterLib.IAMErrorLog  marshal( interface ) pVal) runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::set_ErrorLog
  } // end of method SmartRenderEngineClass::set_ErrorLog

  .property class DexterLib.IAMErrorLog ErrorLog()
  {
    .set instance void DexterLib.SmartRenderEngineClass::set_ErrorLog(class DexterLib.IAMErrorLog)
    .get instance class DexterLib.IAMErrorLog DexterLib.SmartRenderEngineClass::get_ErrorLog()
  } // end of property SmartRenderEngineClass::ErrorLog
} // end of class DexterLib.SmartRenderEngineClass

.class interface public abstract auto ansi import DexterLib.SmartRenderEngine
       implements DexterLib.IRenderEngine
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 42 45 45 33 41 38 31 2D 36 36 43 39   // ..$6BEE3A81-66C9
                                                                                                  2D 31 31 44 32 2D 39 31 38 46 2D 30 30 43 30 44   // -11D2-918F-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 20 44 65 78 74 65 72 4C 69 62 2E 53 6D 61   // .. DexterLib.Sma
                                                                                                                          72 74 52 65 6E 64 65 72 45 6E 67 69 6E 65 43 6C   // rtRenderEngineCl
                                                                                                                          61 73 73 00 00 )                                  // ass..
} // end of class DexterLib.SmartRenderEngine

.class interface public abstract auto ansi import DexterLib.ISmartRenderEngine
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 46 30 33 46 41 38 43 45 2D 38 37 39 41   // ..$F03FA8CE-879A
                                                                                                  2D 34 44 35 39 2D 39 42 32 43 2D 32 36 42 42 31   // -4D59-9B2C-26BB1
                                                                                                  43 46 38 33 34 36 31 00 00 )                      // CF83461..
  .method public hidebysig newslot abstract virtual 
          instance void  SetGroupCompressor(int32 Group,
                                            class DexterLib.IBaseFilter  marshal( interface ) pCompressor) runtime managed internalcall
  {
  } // end of method ISmartRenderEngine::SetGroupCompressor

  .method public hidebysig newslot abstract virtual 
          instance void  GetGroupCompressor(int32 Group,
                                            class DexterLib.IBaseFilter&  marshal( interface ) pCompressor) runtime managed internalcall
  {
  } // end of method ISmartRenderEngine::GetGroupCompressor

  .method public hidebysig newslot abstract virtual 
          instance void  SetFindCompressorCB(class DexterLib.IFindCompressorCB  marshal( interface ) pCallback) runtime managed internalcall
  {
  } // end of method ISmartRenderEngine::SetFindCompressorCB

} // end of class DexterLib.ISmartRenderEngine

.class interface public abstract auto ansi import DexterLib.IFindCompressorCB
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 46 30 33 46 41 38 44 45 2D 38 37 39 41   // ..$F03FA8DE-879A
                                                                                                  2D 34 44 35 39 2D 39 42 32 43 2D 32 36 42 42 31   // -4D59-9B2C-26BB1
                                                                                                  43 46 38 33 34 36 31 00 00 )                      // CF83461..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  GetCompressor(valuetype DexterLib._AMMediaType& pType,
                                       valuetype DexterLib._AMMediaType& pCompType,
                                       [out] class DexterLib.IBaseFilter&  marshal( interface ) ppFilter) runtime managed internalcall
  {
  } // end of method IFindCompressorCB::GetCompressor

} // end of class DexterLib.IFindCompressorCB

.class public auto ansi import DexterLib.AudMixerClass
       extends [mscorlib]System.Object
       implements DexterLib.IBaseFilter,
                  DexterLib.AudMixer
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 33 36 41 39 37 39 30 2D 43 31 35 33   // ..$036A9790-C153
                                                                                                  2D 31 31 44 32 2D 39 45 46 37 2D 30 30 36 30 30   // -11D2-9EF7-00600
                                                                                                  38 30 33 39 45 33 37 00 00 )                      // 8039E37..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method AudMixerClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetClassID
  } // end of method AudMixerClass::GetClassID

  .method public hidebysig newslot virtual 
          instance void  Stop() runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Stop
  } // end of method AudMixerClass::Stop

  .method public hidebysig newslot virtual 
          instance void  Pause() runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Pause
  } // end of method AudMixerClass::Pause

  .method public hidebysig newslot virtual 
          instance void  Run(int64 tStart) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Run
  } // end of method AudMixerClass::Run

  .method public hidebysig newslot virtual 
          instance void  GetState([in] uint32 dwMilliSecsTimeout,
                                  [out] valuetype DexterLib._FilterState& State) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetState
  } // end of method AudMixerClass::GetState

  .method public hidebysig newslot virtual 
          instance void  SetSyncSource([in] class DexterLib.IReferenceClock  marshal( interface ) pClock) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::SetSyncSource
  } // end of method AudMixerClass::SetSyncSource

  .method public hidebysig newslot virtual 
          instance void  GetSyncSource([out] class DexterLib.IReferenceClock&  marshal( interface ) pClock) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetSyncSource
  } // end of method AudMixerClass::GetSyncSource

  .method public hidebysig newslot virtual 
          instance void  EnumPins([out] class DexterLib.IEnumPins&  marshal( interface ) ppEnum) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::EnumPins
  } // end of method AudMixerClass::EnumPins

  .method public hidebysig newslot virtual 
          instance void  FindPin([in] string  marshal( lpwstr) Id,
                                 [out] class DexterLib.IPin&  marshal( interface ) ppPin) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::FindPin
  } // end of method AudMixerClass::FindPin

  .method public hidebysig newslot virtual 
          instance void  QueryFilterInfo([out] valuetype DexterLib._FilterInfo& pInfo) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::QueryFilterInfo
  } // end of method AudMixerClass::QueryFilterInfo

  .method public hidebysig newslot virtual 
          instance void  JoinFilterGraph([in] class DexterLib.IFilterGraph  marshal( interface ) pGraph,
                                         [in] string  marshal( lpwstr) pName) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::JoinFilterGraph
  } // end of method AudMixerClass::JoinFilterGraph

  .method public hidebysig newslot virtual 
          instance void  QueryVendorInfo([out] string&  marshal( lpwstr) pVendorInfo) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::QueryVendorInfo
  } // end of method AudMixerClass::QueryVendorInfo

} // end of class DexterLib.AudMixerClass

.class interface public abstract auto ansi import DexterLib.AudMixer
       implements DexterLib.IBaseFilter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 35 2D 30 41 44 34   // ..$56A86895-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 17 44 65 78 74 65 72 4C 69 62 2E 41 75 64   // ...DexterLib.Aud
                                                                                                                          4D 69 78 65 72 43 6C 61 73 73 00 00 )             // MixerClass..
} // end of class DexterLib.AudMixer

.class public auto ansi import DexterLib.Xml2DexClass
       extends [mscorlib]System.Object
       implements DexterLib.IXml2Dex,
                  DexterLib.Xml2Dex
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 31 38 43 36 32 38 45 45 2D 39 36 32 41   // ..$18C628EE-962A
                                                                                                  2D 31 31 44 32 2D 38 44 30 38 2D 30 30 41 30 43   // -11D2-8D08-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method Xml2DexClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  CreateGraphFromFile([out] object&  marshal( iunknown ) ppGraph,
                                             object  marshal( iunknown ) pTimeline,
                                             string  marshal( bstr) Filename) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::CreateGraphFromFile
  } // end of method Xml2DexClass::CreateGraphFromFile

  .method public hidebysig newslot virtual 
          instance void  WriteGrfFile(object  marshal( iunknown ) pGraph,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::WriteGrfFile
  } // end of method Xml2DexClass::WriteGrfFile

  .method public hidebysig newslot virtual 
          instance void  WriteXMLFile(object  marshal( iunknown ) pTimeline,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::WriteXMLFile
  } // end of method Xml2DexClass::WriteXMLFile

  .method public hidebysig newslot virtual 
          instance void  ReadXMLFile(object  marshal( iunknown ) pTimeline,
                                     string  marshal( bstr) XMLName) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::ReadXMLFile
  } // end of method Xml2DexClass::ReadXMLFile

  .method public hidebysig newslot virtual 
          instance void  Delete(object  marshal( iunknown ) pTimeline,
                                float64 dStart,
                                float64 dEnd) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::Delete
  } // end of method Xml2DexClass::Delete

  .method public hidebysig newslot virtual 
          instance void  WriteXMLPart(object  marshal( iunknown ) pTimeline,
                                      float64 dStart,
                                      float64 dEnd,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::WriteXMLPart
  } // end of method Xml2DexClass::WriteXMLPart

  .method public hidebysig newslot virtual 
          instance void  PasteXMLFile(object  marshal( iunknown ) pTimeline,
                                      float64 dStart,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::PasteXMLFile
  } // end of method Xml2DexClass::PasteXMLFile

  .method public hidebysig newslot virtual 
          instance void  CopyXML(object  marshal( iunknown ) pTimeline,
                                 float64 dStart,
                                 float64 dEnd) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::CopyXML
  } // end of method Xml2DexClass::CopyXML

  .method public hidebysig newslot virtual 
          instance void  PasteXML(object  marshal( iunknown ) pTimeline,
                                  float64 dStart) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::PasteXML
  } // end of method Xml2DexClass::PasteXML

  .method public hidebysig newslot virtual 
          instance void  Reset() runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::Reset
  } // end of method Xml2DexClass::Reset

  .method public hidebysig newslot virtual 
          instance void  ReadXML(object  marshal( iunknown ) pTimeline,
                                 object  marshal( iunknown ) pxml) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::ReadXML
  } // end of method Xml2DexClass::ReadXML

  .method public hidebysig newslot virtual 
          instance void  WriteXML(object  marshal( iunknown ) pTimeline,
                                  string&  marshal( bstr) pbstrXML) runtime managed internalcall
  {
    .override DexterLib.IXml2Dex::WriteXML
  } // end of method Xml2DexClass::WriteXML

} // end of class DexterLib.Xml2DexClass

.class interface public abstract auto ansi import DexterLib.Xml2Dex
       implements DexterLib.IXml2Dex
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 31 38 43 36 32 38 45 44 2D 39 36 32 41   // ..$18C628ED-962A
                                                                                                  2D 31 31 44 32 2D 38 44 30 38 2D 30 30 41 30 43   // -11D2-8D08-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 58 6D 6C   // ...DexterLib.Xml
                                                                                                                          32 44 65 78 43 6C 61 73 73 00 00 )                // 2DexClass..
} // end of class DexterLib.Xml2Dex

.class interface public abstract auto ansi import DexterLib.IXml2Dex
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 31 38 43 36 32 38 45 44 2D 39 36 32 41   // ..$18C628ED-962A
                                                                                                  2D 31 31 44 32 2D 38 44 30 38 2D 30 30 41 30 43   // -11D2-8D08-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 00 10 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  CreateGraphFromFile([out] object&  marshal( iunknown ) ppGraph,
                                             object  marshal( iunknown ) pTimeline,
                                             string  marshal( bstr) Filename) runtime managed internalcall
  {
  } // end of method IXml2Dex::CreateGraphFromFile

  .method public hidebysig newslot abstract virtual 
          instance void  WriteGrfFile(object  marshal( iunknown ) pGraph,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
  } // end of method IXml2Dex::WriteGrfFile

  .method public hidebysig newslot abstract virtual 
          instance void  WriteXMLFile(object  marshal( iunknown ) pTimeline,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
  } // end of method IXml2Dex::WriteXMLFile

  .method public hidebysig newslot abstract virtual 
          instance void  ReadXMLFile(object  marshal( iunknown ) pTimeline,
                                     string  marshal( bstr) XMLName) runtime managed internalcall
  {
  } // end of method IXml2Dex::ReadXMLFile

  .method public hidebysig newslot abstract virtual 
          instance void  Delete(object  marshal( iunknown ) pTimeline,
                                float64 dStart,
                                float64 dEnd) runtime managed internalcall
  {
  } // end of method IXml2Dex::Delete

  .method public hidebysig newslot abstract virtual 
          instance void  WriteXMLPart(object  marshal( iunknown ) pTimeline,
                                      float64 dStart,
                                      float64 dEnd,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
  } // end of method IXml2Dex::WriteXMLPart

  .method public hidebysig newslot abstract virtual 
          instance void  PasteXMLFile(object  marshal( iunknown ) pTimeline,
                                      float64 dStart,
                                      string  marshal( bstr) Filename) runtime managed internalcall
  {
  } // end of method IXml2Dex::PasteXMLFile

  .method public hidebysig newslot abstract virtual 
          instance void  CopyXML(object  marshal( iunknown ) pTimeline,
                                 float64 dStart,
                                 float64 dEnd) runtime managed internalcall
  {
  } // end of method IXml2Dex::CopyXML

  .method public hidebysig newslot abstract virtual 
          instance void  PasteXML(object  marshal( iunknown ) pTimeline,
                                  float64 dStart) runtime managed internalcall
  {
  } // end of method IXml2Dex::PasteXML

  .method public hidebysig newslot abstract virtual 
          instance void  Reset() runtime managed internalcall
  {
  } // end of method IXml2Dex::Reset

  .method public hidebysig newslot abstract virtual 
          instance void  ReadXML(object  marshal( iunknown ) pTimeline,
                                 object  marshal( iunknown ) pxml) runtime managed internalcall
  {
  } // end of method IXml2Dex::ReadXML

  .method public hidebysig newslot abstract virtual 
          instance void  WriteXML(object  marshal( iunknown ) pTimeline,
                                  string&  marshal( bstr) pbstrXML) runtime managed internalcall
  {
  } // end of method IXml2Dex::WriteXML

} // end of class DexterLib.IXml2Dex

.class public auto ansi import DexterLib.MediaLocatorClass
       extends [mscorlib]System.Object
       implements DexterLib.IMediaLocator,
                  DexterLib.MediaLocator
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 43 43 31 31 30 31 46 32 2D 37 39 44 43   // ..$CC1101F2-79DC
                                                                                                  2D 31 31 44 32 2D 38 43 45 36 2D 30 30 41 30 43   // -11D2-8CE6-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method MediaLocatorClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  FindMediaFile(string  marshal( bstr) Input,
                                       string  marshal( bstr) FilterString,
                                       string&  marshal( bstr) pOutput,
                                       int32 Flags) runtime managed internalcall
  {
    .override DexterLib.IMediaLocator::FindMediaFile
  } // end of method MediaLocatorClass::FindMediaFile

  .method public hidebysig newslot virtual 
          instance void  AddFoundLocation(string  marshal( bstr) DirectoryName) runtime managed internalcall
  {
    .override DexterLib.IMediaLocator::AddFoundLocation
  } // end of method MediaLocatorClass::AddFoundLocation

} // end of class DexterLib.MediaLocatorClass

.class interface public abstract auto ansi import DexterLib.MediaLocator
       implements DexterLib.IMediaLocator
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1B 44 65 78 74 65 72 4C 69 62 2E 4D 65 64   // ...DexterLib.Med
                                                                                                                          69 61 4C 6F 63 61 74 6F 72 43 6C 61 73 73 00 00 ) // iaLocatorClass..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 32 38 38 35 38 31 45 30 2D 36 36 43 45   // ..$288581E0-66CE
                                                                                                  2D 31 31 44 32 2D 39 31 38 46 2D 30 30 43 30 44   // -11D2-918F-00C0D
                                                                                                  46 31 30 44 34 33 34 00 00 )                      // F10D434..
} // end of class DexterLib.MediaLocator

.class public auto ansi import DexterLib.PropertySetterClass
       extends [mscorlib]System.Object
       implements DexterLib.IPropertySetter,
                  DexterLib.PropertySetter,
                  DexterLib.IAMSetErrorLog
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 41 44 46 39 35 38 32 31 2D 44 45 44 37   // ..$ADF95821-DED7
                                                                                                  2D 31 31 44 32 2D 41 43 42 45 2D 30 30 38 30 43   // -11D2-ACBE-0080C
                                                                                                  37 35 45 32 34 36 45 00 00 )                      // 75E246E..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method PropertySetterClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  LoadXML([in] object  marshal( iunknown ) pxml) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::LoadXML
  } // end of method PropertySetterClass::LoadXML

  .method public hidebysig newslot virtual 
          instance void  PrintXML([out] uint8& pszXML,
                                  [in] int32 cbXML,
                                  [out] int32& pcbPrinted,
                                  [in] int32 indent) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::PrintXML
  } // end of method PropertySetterClass::PrintXML

  .method public hidebysig newslot virtual 
          instance void  CloneProps([out] class DexterLib.PropertySetter&  marshal( interface ) ppSetter,
                                    [in] int64 rtStart,
                                    [in] int64 rtStop) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::CloneProps
  } // end of method PropertySetterClass::CloneProps

  .method public hidebysig newslot virtual 
          instance void  AddProp([in] valuetype DexterLib.DEXTER_PARAM Param,
                                 [in] valuetype DexterLib.DEXTER_VALUE& paValue) runtime managed internalcall
  {
    .param [1]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 50 41 52 41 4D 00 00 )                // TER_PARAM..
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 56 41 4C 55 45 00 00 )                // TER_VALUE..
    .override DexterLib.IPropertySetter::AddProp
  } // end of method PropertySetterClass::AddProp

  .method public hidebysig newslot virtual 
          instance void  GetProps([out] int32& pcParams,
                                  [out] native int paParam,
                                  [out] native int paValue) runtime managed internalcall
  {
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 50 41 52 41 4D 00 00 )                // TER_PARAM..
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 56 41 4C 55 45 00 00 )                // TER_VALUE..
    .override DexterLib.IPropertySetter::GetProps
  } // end of method PropertySetterClass::GetProps

  .method public hidebysig newslot virtual 
          instance void  FreeProps([in] int32 cParams,
                                   [in] valuetype DexterLib.DEXTER_PARAM& paParam,
                                   [in] valuetype DexterLib.DEXTER_VALUE& paValue) runtime managed internalcall
  {
    .param [2]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 50 41 52 41 4D 00 00 )                // TER_PARAM..
    .param [3]
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComAliasNameAttribute::.ctor(string) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 45 58   // ...DexterLib.DEX
                                                                                                            54 45 52 5F 56 41 4C 55 45 00 00 )                // TER_VALUE..
    .override DexterLib.IPropertySetter::FreeProps
  } // end of method PropertySetterClass::FreeProps

  .method public hidebysig newslot virtual 
          instance void  ClearProps() runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::ClearProps
  } // end of method PropertySetterClass::ClearProps

  .method public hidebysig newslot virtual 
          instance void  SaveToBlob([out] int32& pcSize,
                                    [out] native int ppb) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::SaveToBlob
  } // end of method PropertySetterClass::SaveToBlob

  .method public hidebysig newslot virtual 
          instance void  LoadFromBlob([in] int32 cSize,
                                      [in] uint8& pb) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::LoadFromBlob
  } // end of method PropertySetterClass::LoadFromBlob

  .method public hidebysig newslot virtual 
          instance void  SetProps([in] object  marshal( iunknown ) pTarget,
                                  [in] int64 rtNow) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::SetProps
  } // end of method PropertySetterClass::SetProps

  .method public hidebysig newslot virtual 
          instance void  PrintXMLW([out] uint16& pszXML,
                                   [in] int32 cchXML,
                                   [out] int32& pcchPrinted,
                                   [in] int32 indent) runtime managed internalcall
  {
    .override DexterLib.IPropertySetter::PrintXMLW
  } // end of method PropertySetterClass::PrintXMLW

  .method public hidebysig newslot specialname virtual 
          instance class DexterLib.IAMErrorLog 
          marshal( interface ) 
          get_ErrorLog() runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::get_ErrorLog
  } // end of method PropertySetterClass::get_ErrorLog

  .method public hidebysig newslot specialname virtual 
          instance void  set_ErrorLog([in] class DexterLib.IAMErrorLog  marshal( interface ) pVal) runtime managed internalcall
  {
    .override DexterLib.IAMSetErrorLog::set_ErrorLog
  } // end of method PropertySetterClass::set_ErrorLog

  .property class DexterLib.IAMErrorLog ErrorLog()
  {
    .get instance class DexterLib.IAMErrorLog DexterLib.PropertySetterClass::get_ErrorLog()
    .set instance void DexterLib.PropertySetterClass::set_ErrorLog(class DexterLib.IAMErrorLog)
  } // end of property PropertySetterClass::ErrorLog
} // end of class DexterLib.PropertySetterClass

.class interface public abstract auto ansi import DexterLib.PropertySetter
       implements DexterLib.IPropertySetter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 41 45 39 34 37 32 42 44 2D 42 30 43 33   // ..$AE9472BD-B0C3
                                                                                                  2D 31 31 44 32 2D 38 44 32 34 2D 30 30 41 30 43   // -11D2-8D24-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 50 72 6F   // ...DexterLib.Pro
                                                                                                                          70 65 72 74 79 53 65 74 74 65 72 43 6C 61 73 73   // pertySetterClass
                                                                                                                          00 00 ) 
} // end of class DexterLib.PropertySetter

.class public auto ansi import DexterLib.MediaDetClass
       extends [mscorlib]System.Object
       implements DexterLib.IMediaDet,
                  DexterLib.MediaDet
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 35 42 44 30 37 31 31 2D 32 34 44 32   // ..$65BD0711-24D2
                                                                                                  2D 34 46 46 37 2D 39 33 32 34 2D 45 44 32 45 35   // -4FF7-9324-ED2E5
                                                                                                  44 33 41 42 41 46 41 00 00 )                      // D3ABAFA..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method MediaDetClass::.ctor

  .method public hidebysig newslot specialname virtual 
          instance object 
          marshal( iunknown ) 
          get_Filter() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_Filter
  } // end of method MediaDetClass::get_Filter

  .method public hidebysig newslot specialname virtual 
          instance void  set_Filter([in] object  marshal( iunknown ) pVal) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::set_Filter
  } // end of method MediaDetClass::set_Filter

  .method public hidebysig newslot specialname virtual 
          instance int32  get_OutputStreams() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_OutputStreams
  } // end of method MediaDetClass::get_OutputStreams

  .method public hidebysig newslot specialname virtual 
          instance int32  get_CurrentStream() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_CurrentStream
  } // end of method MediaDetClass::get_CurrentStream

  .method public hidebysig newslot specialname virtual 
          instance void  set_CurrentStream([in] int32 pVal) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::set_CurrentStream
  } // end of method MediaDetClass::set_CurrentStream

  .method public hidebysig newslot specialname virtual 
          instance valuetype [mscorlib]System.Guid 
          get_StreamType() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_StreamType
  } // end of method MediaDetClass::get_StreamType

  .method public hidebysig newslot specialname virtual 
          instance string 
          marshal( bstr) 
          get_StreamTypeB() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_StreamTypeB
  } // end of method MediaDetClass::get_StreamTypeB

  .method public hidebysig newslot specialname virtual 
          instance float64  get_StreamLength() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_StreamLength
  } // end of method MediaDetClass::get_StreamLength

  .method public hidebysig newslot specialname virtual 
          instance string 
          marshal( bstr) 
          get_Filename() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_Filename
  } // end of method MediaDetClass::get_Filename

  .method public hidebysig newslot specialname virtual 
          instance void  set_Filename([in] string  marshal( bstr) pVal) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::set_Filename
  } // end of method MediaDetClass::set_Filename

  .method public hidebysig newslot virtual 
          instance void  GetBitmapBits(float64 streamTime,
                                       int32& pBufferSize,
                                       native int pBuffer,
                                       int32 Width,
                                       int32 Height) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::GetBitmapBits
  } // end of method MediaDetClass::GetBitmapBits

  .method public hidebysig newslot virtual 
          instance void  WriteBitmapBits(float64 streamTime,
                                         int32 Width,
                                         int32 Height,
                                         string  marshal( bstr) Filename) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::WriteBitmapBits
  } // end of method MediaDetClass::WriteBitmapBits

  .method public hidebysig newslot specialname virtual 
          instance valuetype DexterLib._AMMediaType 
          get_StreamMediaType() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_StreamMediaType
  } // end of method MediaDetClass::get_StreamMediaType

  .method public hidebysig newslot virtual 
          instance void  GetSampleGrabber([out] class DexterLib.SampleGrabber&  marshal( interface ) ppVal) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::GetSampleGrabber
  } // end of method MediaDetClass::GetSampleGrabber

  .method public hidebysig newslot specialname virtual 
          instance float64  get_FrameRate() runtime managed internalcall
  {
    .override DexterLib.IMediaDet::get_FrameRate
  } // end of method MediaDetClass::get_FrameRate

  .method public hidebysig newslot virtual 
          instance void  EnterBitmapGrabMode(float64 SeekTime) runtime managed internalcall
  {
    .override DexterLib.IMediaDet::EnterBitmapGrabMode
  } // end of method MediaDetClass::EnterBitmapGrabMode

  .property object Filter()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .get instance object DexterLib.MediaDetClass::get_Filter()
    .set instance void DexterLib.MediaDetClass::set_Filter(object)
  } // end of property MediaDetClass::Filter
  .property int32 OutputStreams()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance int32 DexterLib.MediaDetClass::get_OutputStreams()
  } // end of property MediaDetClass::OutputStreams
  .property int32 CurrentStream()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .get instance int32 DexterLib.MediaDetClass::get_CurrentStream()
    .set instance void DexterLib.MediaDetClass::set_CurrentStream(int32)
  } // end of property MediaDetClass::CurrentStream
  .property valuetype [mscorlib]System.Guid
          StreamType()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .get instance valuetype [mscorlib]System.Guid DexterLib.MediaDetClass::get_StreamType()
  } // end of property MediaDetClass::StreamType
  .property string StreamTypeB()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance string DexterLib.MediaDetClass::get_StreamTypeB()
  } // end of property MediaDetClass::StreamTypeB
  .property float64 StreamLength()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .get instance float64 DexterLib.MediaDetClass::get_StreamLength()
  } // end of property MediaDetClass::StreamLength
  .property string Filename()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .set instance void DexterLib.MediaDetClass::set_Filename(string)
    .get instance string DexterLib.MediaDetClass::get_Filename()
  } // end of property MediaDetClass::Filename
  .property valuetype DexterLib._AMMediaType
          StreamMediaType()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
    .get instance valuetype DexterLib._AMMediaType DexterLib.MediaDetClass::get_StreamMediaType()
  } // end of property MediaDetClass::StreamMediaType
  .property float64 FrameRate()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0C 00 00 00 00 00 ) 
    .get instance float64 DexterLib.MediaDetClass::get_FrameRate()
  } // end of property MediaDetClass::FrameRate
} // end of class DexterLib.MediaDetClass

.class interface public abstract auto ansi import DexterLib.MediaDet
       implements DexterLib.IMediaDet
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 17 44 65 78 74 65 72 4C 69 62 2E 4D 65 64   // ...DexterLib.Med
                                                                                                                          69 61 44 65 74 43 6C 61 73 73 00 00 )             // iaDetClass..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 35 42 44 30 37 31 30 2D 32 34 44 32   // ..$65BD0710-24D2
                                                                                                  2D 34 46 46 37 2D 39 33 32 34 2D 45 44 32 45 35   // -4FF7-9324-ED2E5
                                                                                                  44 33 41 42 41 46 41 00 00 )                      // D3ABAFA..
} // end of class DexterLib.MediaDet

.class interface public abstract auto ansi import DexterLib.IMediaDet
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 35 42 44 30 37 31 30 2D 32 34 44 32   // ..$65BD0710-24D2
                                                                                                  2D 34 46 46 37 2D 39 33 32 34 2D 45 44 32 45 35   // -4FF7-9324-ED2E5
                                                                                                  44 33 41 42 41 46 41 00 00 )                      // D3ABAFA..
  .method public hidebysig newslot specialname abstract virtual 
          instance object 
          marshal( iunknown ) 
          get_Filter() runtime managed internalcall
  {
  } // end of method IMediaDet::get_Filter

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Filter([in] object  marshal( iunknown ) pVal) runtime managed internalcall
  {
  } // end of method IMediaDet::set_Filter

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_OutputStreams() runtime managed internalcall
  {
  } // end of method IMediaDet::get_OutputStreams

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_CurrentStream() runtime managed internalcall
  {
  } // end of method IMediaDet::get_CurrentStream

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_CurrentStream([in] int32 pVal) runtime managed internalcall
  {
  } // end of method IMediaDet::set_CurrentStream

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [mscorlib]System.Guid 
          get_StreamType() runtime managed internalcall
  {
  } // end of method IMediaDet::get_StreamType

  .method public hidebysig newslot specialname abstract virtual 
          instance string 
          marshal( bstr) 
          get_StreamTypeB() runtime managed internalcall
  {
  } // end of method IMediaDet::get_StreamTypeB

  .method public hidebysig newslot specialname abstract virtual 
          instance float64  get_StreamLength() runtime managed internalcall
  {
  } // end of method IMediaDet::get_StreamLength

  .method public hidebysig newslot specialname abstract virtual 
          instance string 
          marshal( bstr) 
          get_Filename() runtime managed internalcall
  {
  } // end of method IMediaDet::get_Filename

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Filename([in] string  marshal( bstr) pVal) runtime managed internalcall
  {
  } // end of method IMediaDet::set_Filename

  .method public hidebysig newslot abstract virtual 
          instance void  GetBitmapBits(float64 streamTime,
                                       int32& pBufferSize,
                                       native int pBuffer,
                                       int32 Width,
                                       int32 Height) runtime managed internalcall
  {
  } // end of method IMediaDet::GetBitmapBits

  .method public hidebysig newslot abstract virtual 
          instance void  WriteBitmapBits(float64 streamTime,
                                         int32 Width,
                                         int32 Height,
                                         string  marshal( bstr) Filename) runtime managed internalcall
  {
  } // end of method IMediaDet::WriteBitmapBits

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype DexterLib._AMMediaType 
          get_StreamMediaType() runtime managed internalcall
  {
  } // end of method IMediaDet::get_StreamMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  GetSampleGrabber([out] class DexterLib.SampleGrabber&  marshal( interface ) ppVal) runtime managed internalcall
  {
  } // end of method IMediaDet::GetSampleGrabber

  .method public hidebysig newslot specialname abstract virtual 
          instance float64  get_FrameRate() runtime managed internalcall
  {
  } // end of method IMediaDet::get_FrameRate

  .method public hidebysig newslot abstract virtual 
          instance void  EnterBitmapGrabMode(float64 SeekTime) runtime managed internalcall
  {
  } // end of method IMediaDet::EnterBitmapGrabMode

  .property object Filter()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.IMediaDet::set_Filter(object)
    .get instance object DexterLib.IMediaDet::get_Filter()
  } // end of property IMediaDet::Filter
  .property int32 OutputStreams()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IMediaDet::get_OutputStreams()
  } // end of property IMediaDet::OutputStreams
  .property int32 CurrentStream()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IMediaDet::get_CurrentStream()
    .set instance void DexterLib.IMediaDet::set_CurrentStream(int32)
  } // end of property IMediaDet::CurrentStream
  .property valuetype [mscorlib]System.Guid
          StreamType()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .get instance valuetype [mscorlib]System.Guid DexterLib.IMediaDet::get_StreamType()
  } // end of property IMediaDet::StreamType
  .property string StreamTypeB()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance string DexterLib.IMediaDet::get_StreamTypeB()
  } // end of property IMediaDet::StreamTypeB
  .property float64 StreamLength()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .get instance float64 DexterLib.IMediaDet::get_StreamLength()
  } // end of property IMediaDet::StreamLength
  .property string Filename()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .set instance void DexterLib.IMediaDet::set_Filename(string)
    .get instance string DexterLib.IMediaDet::get_Filename()
  } // end of property IMediaDet::Filename
  .property valuetype DexterLib._AMMediaType
          StreamMediaType()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
    .get instance valuetype DexterLib._AMMediaType DexterLib.IMediaDet::get_StreamMediaType()
  } // end of property IMediaDet::StreamMediaType
  .property float64 FrameRate()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0C 00 00 00 00 00 ) 
    .get instance float64 DexterLib.IMediaDet::get_FrameRate()
  } // end of property IMediaDet::FrameRate
} // end of class DexterLib.IMediaDet

.class interface public abstract auto ansi import DexterLib.ISampleGrabber
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 42 36 35 32 46 46 46 2D 31 31 46 45   // ..$6B652FFF-11FE
                                                                                                  2D 34 46 43 45 2D 39 32 41 44 2D 30 32 36 36 42   // -4FCE-92AD-0266B
                                                                                                  35 44 37 43 37 38 46 00 00 )                      // 5D7C78F..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  SetOneShot(int32 OneShot) runtime managed internalcall
  {
  } // end of method ISampleGrabber::SetOneShot

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaType(valuetype DexterLib._AMMediaType& pType) runtime managed internalcall
  {
  } // end of method ISampleGrabber::SetMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  GetConnectedMediaType(valuetype DexterLib._AMMediaType& pType) runtime managed internalcall
  {
  } // end of method ISampleGrabber::GetConnectedMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  SetBufferSamples(int32 BufferThem) runtime managed internalcall
  {
  } // end of method ISampleGrabber::SetBufferSamples

  .method public hidebysig newslot abstract virtual 
          instance void  GetCurrentBuffer([in][out] int32& pBufferSize,
                                          [out] int32& pBuffer) runtime managed internalcall
  {
  } // end of method ISampleGrabber::GetCurrentBuffer

  .method public hidebysig newslot abstract virtual 
          instance class DexterLib.IMediaSample 
          marshal( interface ) 
          GetCurrentSample() runtime managed internalcall
  {
  } // end of method ISampleGrabber::GetCurrentSample

  .method public hidebysig newslot abstract virtual 
          instance void  SetCallback(class DexterLib.ISampleGrabberCB  marshal( interface ) pCallback,
                                     int32 WhichMethodToCallback) runtime managed internalcall
  {
  } // end of method ISampleGrabber::SetCallback

} // end of class DexterLib.ISampleGrabber

.class interface public abstract auto ansi import DexterLib.IMediaSample
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 41 2D 30 41 44 34   // ..$56A8689A-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComConversionLossAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance void  GetPointer([out] native int ppBuffer) runtime managed internalcall
  {
  } // end of method IMediaSample::GetPointer

  .method public hidebysig newslot abstract virtual 
          instance int32  GetSize() runtime managed preservesig internalcall
  {
  } // end of method IMediaSample::GetSize

  .method public hidebysig newslot abstract virtual 
          instance void  GetTime([out] int64& pTimeStart,
                                 [out] int64& pTimeEnd) runtime managed internalcall
  {
  } // end of method IMediaSample::GetTime

  .method public hidebysig newslot abstract virtual 
          instance void  SetTime([in] int64& pTimeStart,
                                 [in] int64& pTimeEnd) runtime managed internalcall
  {
  } // end of method IMediaSample::SetTime

  .method public hidebysig newslot abstract virtual 
          instance void  IsSyncPoint() runtime managed internalcall
  {
  } // end of method IMediaSample::IsSyncPoint

  .method public hidebysig newslot abstract virtual 
          instance void  SetSyncPoint(int32 bIsSyncPoint) runtime managed internalcall
  {
  } // end of method IMediaSample::SetSyncPoint

  .method public hidebysig newslot abstract virtual 
          instance void  IsPreroll() runtime managed internalcall
  {
  } // end of method IMediaSample::IsPreroll

  .method public hidebysig newslot abstract virtual 
          instance void  SetPreroll(int32 bIsPreroll) runtime managed internalcall
  {
  } // end of method IMediaSample::SetPreroll

  .method public hidebysig newslot abstract virtual 
          instance int32  GetActualDataLength() runtime managed preservesig internalcall
  {
  } // end of method IMediaSample::GetActualDataLength

  .method public hidebysig newslot abstract virtual 
          instance void  SetActualDataLength(int32 __MIDL_0012) runtime managed internalcall
  {
  } // end of method IMediaSample::SetActualDataLength

  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaType(native int ppMediaType) runtime managed internalcall
  {
  } // end of method IMediaSample::GetMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaType(valuetype DexterLib._AMMediaType& pMediaType) runtime managed internalcall
  {
  } // end of method IMediaSample::SetMediaType

  .method public hidebysig newslot abstract virtual 
          instance void  IsDiscontinuity() runtime managed internalcall
  {
  } // end of method IMediaSample::IsDiscontinuity

  .method public hidebysig newslot abstract virtual 
          instance void  SetDiscontinuity(int32 bDiscontinuity) runtime managed internalcall
  {
  } // end of method IMediaSample::SetDiscontinuity

  .method public hidebysig newslot abstract virtual 
          instance void  GetMediaTime([out] int64& pTimeStart,
                                      [out] int64& pTimeEnd) runtime managed internalcall
  {
  } // end of method IMediaSample::GetMediaTime

  .method public hidebysig newslot abstract virtual 
          instance void  SetMediaTime([in] int64& pTimeStart,
                                      [in] int64& pTimeEnd) runtime managed internalcall
  {
  } // end of method IMediaSample::SetMediaTime

} // end of class DexterLib.IMediaSample

.class interface public abstract auto ansi import DexterLib.ISampleGrabberCB
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.InterfaceTypeAttribute::.ctor(int16) = ( 01 00 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 35 37 39 31 35 34 41 2D 32 42 35 33   // ..$0579154A-2B53
                                                                                                  2D 34 39 39 34 2D 42 30 44 30 2D 45 37 37 33 31   // -4994-B0D0-E7731
                                                                                                  34 38 45 46 46 38 35 00 00 )                      // 48EFF85..
  .method public hidebysig newslot abstract virtual 
          instance void  SampleCB(float64 SampleTime,
                                  class DexterLib.IMediaSample  marshal( interface ) pSample) runtime managed internalcall
  {
  } // end of method ISampleGrabberCB::SampleCB

  .method public hidebysig newslot abstract virtual 
          instance void  BufferCB(float64 SampleTime,
                                  uint8& pBuffer,
                                  int32 BufferLen) runtime managed internalcall
  {
  } // end of method ISampleGrabberCB::BufferCB

} // end of class DexterLib.ISampleGrabberCB

.class public auto ansi import DexterLib.SampleGrabberClass
       extends [mscorlib]System.Object
       implements DexterLib.ISampleGrabber,
                  DexterLib.SampleGrabber
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 43 31 46 34 30 30 41 30 2D 33 46 30 38   // ..$C1F400A0-3F08
                                                                                                  2D 31 31 44 33 2D 39 46 30 42 2D 30 30 36 30 30   // -11D3-9F0B-00600
                                                                                                  38 30 33 39 45 33 37 00 00 )                      // 8039E37..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method SampleGrabberClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  SetOneShot(int32 OneShot) runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::SetOneShot
  } // end of method SampleGrabberClass::SetOneShot

  .method public hidebysig newslot virtual 
          instance void  SetMediaType(valuetype DexterLib._AMMediaType& pType) runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::SetMediaType
  } // end of method SampleGrabberClass::SetMediaType

  .method public hidebysig newslot virtual 
          instance void  GetConnectedMediaType(valuetype DexterLib._AMMediaType& pType) runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::GetConnectedMediaType
  } // end of method SampleGrabberClass::GetConnectedMediaType

  .method public hidebysig newslot virtual 
          instance void  SetBufferSamples(int32 BufferThem) runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::SetBufferSamples
  } // end of method SampleGrabberClass::SetBufferSamples

  .method public hidebysig newslot virtual 
          instance void  GetCurrentBuffer([in][out] int32& pBufferSize,
                                          [out] int32& pBuffer) runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::GetCurrentBuffer
  } // end of method SampleGrabberClass::GetCurrentBuffer

  .method public hidebysig newslot virtual 
          instance class DexterLib.IMediaSample 
          marshal( interface ) 
          GetCurrentSample() runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::GetCurrentSample
  } // end of method SampleGrabberClass::GetCurrentSample

  .method public hidebysig newslot virtual 
          instance void  SetCallback(class DexterLib.ISampleGrabberCB  marshal( interface ) pCallback,
                                     int32 WhichMethodToCallback) runtime managed internalcall
  {
    .override DexterLib.ISampleGrabber::SetCallback
  } // end of method SampleGrabberClass::SetCallback

} // end of class DexterLib.SampleGrabberClass

.class interface public abstract auto ansi import DexterLib.SampleGrabber
       implements DexterLib.ISampleGrabber
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1C 44 65 78 74 65 72 4C 69 62 2E 53 61 6D   // ...DexterLib.Sam
                                                                                                                          70 6C 65 47 72 61 62 62 65 72 43 6C 61 73 73 00   // pleGrabberClass.
                                                                                                                          00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 42 36 35 32 46 46 46 2D 31 31 46 45   // ..$6B652FFF-11FE
                                                                                                  2D 34 46 43 45 2D 39 32 41 44 2D 30 32 36 36 42   // -4FCE-92AD-0266B
                                                                                                  35 44 37 43 37 38 46 00 00 )                      // 5D7C78F..
} // end of class DexterLib.SampleGrabber

.class public auto ansi import DexterLib.NullRendererClass
       extends [mscorlib]System.Object
       implements DexterLib.IBaseFilter,
                  DexterLib.NullRenderer
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 43 31 46 34 30 30 41 34 2D 33 46 30 38   // ..$C1F400A4-3F08
                                                                                                  2D 31 31 44 33 2D 39 46 30 42 2D 30 30 36 30 30   // -11D3-9F0B-00600
                                                                                                  38 30 33 39 45 33 37 00 00 )                      // 8039E37..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method NullRendererClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetClassID
  } // end of method NullRendererClass::GetClassID

  .method public hidebysig newslot virtual 
          instance void  Stop() runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Stop
  } // end of method NullRendererClass::Stop

  .method public hidebysig newslot virtual 
          instance void  Pause() runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Pause
  } // end of method NullRendererClass::Pause

  .method public hidebysig newslot virtual 
          instance void  Run(int64 tStart) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Run
  } // end of method NullRendererClass::Run

  .method public hidebysig newslot virtual 
          instance void  GetState([in] uint32 dwMilliSecsTimeout,
                                  [out] valuetype DexterLib._FilterState& State) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetState
  } // end of method NullRendererClass::GetState

  .method public hidebysig newslot virtual 
          instance void  SetSyncSource([in] class DexterLib.IReferenceClock  marshal( interface ) pClock) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::SetSyncSource
  } // end of method NullRendererClass::SetSyncSource

  .method public hidebysig newslot virtual 
          instance void  GetSyncSource([out] class DexterLib.IReferenceClock&  marshal( interface ) pClock) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetSyncSource
  } // end of method NullRendererClass::GetSyncSource

  .method public hidebysig newslot virtual 
          instance void  EnumPins([out] class DexterLib.IEnumPins&  marshal( interface ) ppEnum) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::EnumPins
  } // end of method NullRendererClass::EnumPins

  .method public hidebysig newslot virtual 
          instance void  FindPin([in] string  marshal( lpwstr) Id,
                                 [out] class DexterLib.IPin&  marshal( interface ) ppPin) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::FindPin
  } // end of method NullRendererClass::FindPin

  .method public hidebysig newslot virtual 
          instance void  QueryFilterInfo([out] valuetype DexterLib._FilterInfo& pInfo) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::QueryFilterInfo
  } // end of method NullRendererClass::QueryFilterInfo

  .method public hidebysig newslot virtual 
          instance void  JoinFilterGraph([in] class DexterLib.IFilterGraph  marshal( interface ) pGraph,
                                         [in] string  marshal( lpwstr) pName) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::JoinFilterGraph
  } // end of method NullRendererClass::JoinFilterGraph

  .method public hidebysig newslot virtual 
          instance void  QueryVendorInfo([out] string&  marshal( lpwstr) pVendorInfo) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::QueryVendorInfo
  } // end of method NullRendererClass::QueryVendorInfo

} // end of class DexterLib.NullRendererClass

.class interface public abstract auto ansi import DexterLib.NullRenderer
       implements DexterLib.IBaseFilter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 35 2D 30 41 44 34   // ..$56A86895-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1B 44 65 78 74 65 72 4C 69 62 2E 4E 75 6C   // ...DexterLib.Nul
                                                                                                                          6C 52 65 6E 64 65 72 65 72 43 6C 61 73 73 00 00 ) // lRendererClass..
} // end of class DexterLib.NullRenderer

.class public auto ansi import DexterLib.DxtCompositorClass
       extends [mscorlib]System.Object
       implements DexterLib.IDxtCompositor,
                  DexterLib.DxtCompositor
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 42 34 34 33 39 31 44 2D 36 41 42 44   // ..$BB44391D-6ABD
                                                                                                  2D 34 32 32 46 2D 39 45 32 45 2D 33 38 35 43 39   // -422F-9E2E-385C9
                                                                                                  44 46 46 35 31 46 43 00 00 )                      // DFF51FC..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method DxtCompositorClass::.ctor

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtCompositor::get_Capabilities
  } // end of method DxtCompositorClass::get_Capabilities

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtCompositor::get_Progress
  } // end of method DxtCompositorClass::get_Progress

  .method public hidebysig newslot specialname virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtCompositor::set_Progress
  } // end of method DxtCompositorClass::set_Progress

  .method public hidebysig newslot specialname virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtCompositor::get_StepResolution
  } // end of method DxtCompositorClass::get_StepResolution

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtCompositor::get_Duration
  } // end of method DxtCompositorClass::get_Duration

  .method public hidebysig newslot specialname virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtCompositor::set_Duration
  } // end of method DxtCompositorClass::set_Duration

  .method public hidebysig newslot specialname virtual 
          instance int32  get_OffsetX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_OffsetX
  } // end of method DxtCompositorClass::get_OffsetX

  .method public hidebysig newslot specialname virtual 
          instance void  set_OffsetX([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_OffsetX
  } // end of method DxtCompositorClass::set_OffsetX

  .method public hidebysig newslot specialname virtual 
          instance int32  get_OffsetY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_OffsetY
  } // end of method DxtCompositorClass::get_OffsetY

  .method public hidebysig newslot specialname virtual 
          instance void  set_OffsetY([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_OffsetY
  } // end of method DxtCompositorClass::set_OffsetY

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Width() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_Width
  } // end of method DxtCompositorClass::get_Width

  .method public hidebysig newslot specialname virtual 
          instance void  set_Width([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_Width
  } // end of method DxtCompositorClass::set_Width

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Height() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_Height
  } // end of method DxtCompositorClass::get_Height

  .method public hidebysig newslot specialname virtual 
          instance void  set_Height([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_Height
  } // end of method DxtCompositorClass::set_Height

  .method public hidebysig newslot specialname virtual 
          instance int32  get_SrcOffsetX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_SrcOffsetX
  } // end of method DxtCompositorClass::get_SrcOffsetX

  .method public hidebysig newslot specialname virtual 
          instance void  set_SrcOffsetX([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_SrcOffsetX
  } // end of method DxtCompositorClass::set_SrcOffsetX

  .method public hidebysig newslot specialname virtual 
          instance int32  get_SrcOffsetY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_SrcOffsetY
  } // end of method DxtCompositorClass::get_SrcOffsetY

  .method public hidebysig newslot specialname virtual 
          instance void  set_SrcOffsetY([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_SrcOffsetY
  } // end of method DxtCompositorClass::set_SrcOffsetY

  .method public hidebysig newslot specialname virtual 
          instance int32  get_SrcWidth() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_SrcWidth
  } // end of method DxtCompositorClass::get_SrcWidth

  .method public hidebysig newslot specialname virtual 
          instance void  set_SrcWidth([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_SrcWidth
  } // end of method DxtCompositorClass::set_SrcWidth

  .method public hidebysig newslot specialname virtual 
          instance int32  get_SrcHeight() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::get_SrcHeight
  } // end of method DxtCompositorClass::get_SrcHeight

  .method public hidebysig newslot specialname virtual 
          instance void  set_SrcHeight([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .override DexterLib.IDxtCompositor::set_SrcHeight
  } // end of method DxtCompositorClass::set_SrcHeight

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.DxtCompositorClass::get_Capabilities()
  } // end of property DxtCompositorClass::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtCompositorClass::get_Progress()
    .set instance void DexterLib.DxtCompositorClass::set_Progress(float32)
  } // end of property DxtCompositorClass::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtCompositorClass::get_StepResolution()
  } // end of property DxtCompositorClass::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtCompositorClass::get_Duration()
    .set instance void DexterLib.DxtCompositorClass::set_Duration(float32)
  } // end of property DxtCompositorClass::Duration
  .property int32 OffsetX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtCompositorClass::set_OffsetX(int32)
    .get instance int32 DexterLib.DxtCompositorClass::get_OffsetX()
  } // end of property DxtCompositorClass::OffsetX
  .property int32 OffsetY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtCompositorClass::get_OffsetY()
    .set instance void DexterLib.DxtCompositorClass::set_OffsetY(int32)
  } // end of property DxtCompositorClass::OffsetY
  .property int32 Width()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtCompositorClass::get_Width()
    .set instance void DexterLib.DxtCompositorClass::set_Width(int32)
  } // end of property DxtCompositorClass::Width
  .property int32 Height()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtCompositorClass::get_Height()
    .set instance void DexterLib.DxtCompositorClass::set_Height(int32)
  } // end of property DxtCompositorClass::Height
  .property int32 SrcOffsetX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtCompositorClass::get_SrcOffsetX()
    .set instance void DexterLib.DxtCompositorClass::set_SrcOffsetX(int32)
  } // end of property DxtCompositorClass::SrcOffsetX
  .property int32 SrcOffsetY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtCompositorClass::set_SrcOffsetY(int32)
    .get instance int32 DexterLib.DxtCompositorClass::get_SrcOffsetY()
  } // end of property DxtCompositorClass::SrcOffsetY
  .property int32 SrcWidth()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtCompositorClass::get_SrcWidth()
    .set instance void DexterLib.DxtCompositorClass::set_SrcWidth(int32)
  } // end of property DxtCompositorClass::SrcWidth
  .property int32 SrcHeight()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtCompositorClass::get_SrcHeight()
    .set instance void DexterLib.DxtCompositorClass::set_SrcHeight(int32)
  } // end of property DxtCompositorClass::SrcHeight
} // end of class DexterLib.DxtCompositorClass

.class interface public abstract auto ansi import DexterLib.DxtCompositor
       implements DexterLib.IDxtCompositor
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1C 44 65 78 74 65 72 4C 69 62 2E 44 78 74   // ...DexterLib.Dxt
                                                                                                                          43 6F 6D 70 6F 73 69 74 6F 72 43 6C 61 73 73 00   // CompositorClass.
                                                                                                                          00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 42 34 34 33 39 31 45 2D 36 41 42 44   // ..$BB44391E-6ABD
                                                                                                  2D 34 32 32 46 2D 39 45 32 45 2D 33 38 35 43 39   // -422F-9E2E-385C9
                                                                                                  44 46 46 35 31 46 43 00 00 )                      // DFF51FC..
} // end of class DexterLib.DxtCompositor

.class interface public abstract auto ansi import DexterLib.IDxtCompositor
       implements DexterLib.IDXEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 42 42 34 34 33 39 31 45 2D 36 41 42 44   // ..$BB44391E-6ABD
                                                                                                  2D 34 32 32 46 2D 39 45 32 45 2D 33 38 35 43 39   // -422F-9E2E-385C9
                                                                                                  44 46 46 35 31 46 43 00 00 )                      // DFF51FC..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 40 10 00 00 )                               // ..@...
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtCompositor::get_Capabilities

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtCompositor::get_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtCompositor::set_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtCompositor::get_StepResolution

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtCompositor::get_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtCompositor::set_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_OffsetX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_OffsetX

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_OffsetX([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_OffsetX

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_OffsetY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_OffsetY

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_OffsetY([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_OffsetY

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Width() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_Width

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Width([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_Width

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Height() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_Height

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Height([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_Height

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_SrcOffsetX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_SrcOffsetX

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_SrcOffsetX([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_SrcOffsetX

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_SrcOffsetY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_SrcOffsetY

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_SrcOffsetY([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_SrcOffsetY

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_SrcWidth() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_SrcWidth

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_SrcWidth([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_SrcWidth

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_SrcHeight() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::get_SrcHeight

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_SrcHeight([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  } // end of method IDxtCompositor::set_SrcHeight

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.IDxtCompositor::get_Capabilities()
  } // end of property IDxtCompositor::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtCompositor::get_Progress()
    .set instance void DexterLib.IDxtCompositor::set_Progress(float32)
  } // end of property IDxtCompositor::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtCompositor::get_StepResolution()
  } // end of property IDxtCompositor::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtCompositor::get_Duration()
    .set instance void DexterLib.IDxtCompositor::set_Duration(float32)
  } // end of property IDxtCompositor::Duration
  .property int32 OffsetX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtCompositor::set_OffsetX(int32)
    .get instance int32 DexterLib.IDxtCompositor::get_OffsetX()
  } // end of property IDxtCompositor::OffsetX
  .property int32 OffsetY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtCompositor::get_OffsetY()
    .set instance void DexterLib.IDxtCompositor::set_OffsetY(int32)
  } // end of property IDxtCompositor::OffsetY
  .property int32 Width()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtCompositor::get_Width()
    .set instance void DexterLib.IDxtCompositor::set_Width(int32)
  } // end of property IDxtCompositor::Width
  .property int32 Height()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtCompositor::set_Height(int32)
    .get instance int32 DexterLib.IDxtCompositor::get_Height()
  } // end of property IDxtCompositor::Height
  .property int32 SrcOffsetX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtCompositor::get_SrcOffsetX()
    .set instance void DexterLib.IDxtCompositor::set_SrcOffsetX(int32)
  } // end of property IDxtCompositor::SrcOffsetX
  .property int32 SrcOffsetY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtCompositor::get_SrcOffsetY()
    .set instance void DexterLib.IDxtCompositor::set_SrcOffsetY(int32)
  } // end of property IDxtCompositor::SrcOffsetY
  .property int32 SrcWidth()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtCompositor::set_SrcWidth(int32)
    .get instance int32 DexterLib.IDxtCompositor::get_SrcWidth()
  } // end of property IDxtCompositor::SrcWidth
  .property int32 SrcHeight()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtCompositor::get_SrcHeight()
    .set instance void DexterLib.IDxtCompositor::set_SrcHeight(int32)
  } // end of property IDxtCompositor::SrcHeight
} // end of class DexterLib.IDxtCompositor

.class interface public abstract auto ansi import DexterLib.IDXEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 45 33 31 46 42 38 31 42 2D 31 33 33 35   // ..$E31FB81B-1335
                                                                                                  2D 31 31 44 31 2D 38 31 38 39 2D 30 30 30 30 46   // -11D1-8189-0000F
                                                                                                  38 37 35 35 37 44 42 00 00 )                      // 87557DB..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 40 10 00 00 )                               // ..@...
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
  } // end of method IDXEffect::get_Capabilities

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDXEffect::get_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDXEffect::set_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
  } // end of method IDXEffect::get_StepResolution

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDXEffect::get_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDXEffect::set_Duration

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.IDXEffect::get_Capabilities()
  } // end of property IDXEffect::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDXEffect::get_Progress()
    .set instance void DexterLib.IDXEffect::set_Progress(float32)
  } // end of property IDXEffect::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDXEffect::get_StepResolution()
  } // end of property IDXEffect::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDXEffect::get_Duration()
    .set instance void DexterLib.IDXEffect::set_Duration(float32)
  } // end of property IDXEffect::Duration
} // end of class DexterLib.IDXEffect

.class public auto ansi import DexterLib.DxtAlphaSetterClass
       extends [mscorlib]System.Object
       implements DexterLib.IDxtAlphaSetter,
                  DexterLib.DxtAlphaSetter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 30 36 44 38 39 41 45 2D 39 30 39 41   // ..$506D89AE-909A
                                                                                                  2D 34 34 46 37 2D 39 34 34 34 2D 41 42 44 35 37   // -44F7-9444-ABD57
                                                                                                  35 38 39 36 45 33 35 00 00 )                      // 5896E35..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method DxtAlphaSetterClass::.ctor

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtAlphaSetter::get_Capabilities
  } // end of method DxtAlphaSetterClass::get_Capabilities

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtAlphaSetter::get_Progress
  } // end of method DxtAlphaSetterClass::get_Progress

  .method public hidebysig newslot specialname virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtAlphaSetter::set_Progress
  } // end of method DxtAlphaSetterClass::set_Progress

  .method public hidebysig newslot specialname virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtAlphaSetter::get_StepResolution
  } // end of method DxtAlphaSetterClass::get_StepResolution

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtAlphaSetter::get_Duration
  } // end of method DxtAlphaSetterClass::get_Duration

  .method public hidebysig newslot specialname virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtAlphaSetter::set_Duration
  } // end of method DxtAlphaSetterClass::set_Duration

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Alpha() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtAlphaSetter::get_Alpha
  } // end of method DxtAlphaSetterClass::get_Alpha

  .method public hidebysig newslot specialname virtual 
          instance void  set_Alpha([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtAlphaSetter::set_Alpha
  } // end of method DxtAlphaSetterClass::set_Alpha

  .method public hidebysig newslot specialname virtual 
          instance float64  get_AlphaRamp() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtAlphaSetter::get_AlphaRamp
  } // end of method DxtAlphaSetterClass::get_AlphaRamp

  .method public hidebysig newslot specialname virtual 
          instance void  set_AlphaRamp([in] float64 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtAlphaSetter::set_AlphaRamp
  } // end of method DxtAlphaSetterClass::set_AlphaRamp

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.DxtAlphaSetterClass::get_Capabilities()
  } // end of property DxtAlphaSetterClass::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtAlphaSetterClass::get_Progress()
    .set instance void DexterLib.DxtAlphaSetterClass::set_Progress(float32)
  } // end of property DxtAlphaSetterClass::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtAlphaSetterClass::get_StepResolution()
  } // end of property DxtAlphaSetterClass::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtAlphaSetterClass::get_Duration()
    .set instance void DexterLib.DxtAlphaSetterClass::set_Duration(float32)
  } // end of property DxtAlphaSetterClass::Duration
  .property int32 Alpha()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtAlphaSetterClass::get_Alpha()
    .set instance void DexterLib.DxtAlphaSetterClass::set_Alpha(int32)
  } // end of property DxtAlphaSetterClass::Alpha
  .property float64 AlphaRamp()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtAlphaSetterClass::set_AlphaRamp(float64)
    .get instance float64 DexterLib.DxtAlphaSetterClass::get_AlphaRamp()
  } // end of property DxtAlphaSetterClass::AlphaRamp
} // end of class DexterLib.DxtAlphaSetterClass

.class interface public abstract auto ansi import DexterLib.DxtAlphaSetter
       implements DexterLib.IDxtAlphaSetter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 34 45 45 39 45 41 44 39 2D 44 41 34 44   // ..$4EE9EAD9-DA4D
                                                                                                  2D 34 33 44 30 2D 39 33 38 33 2D 30 36 42 39 30   // -43D0-9383-06B90
                                                                                                  43 30 38 42 31 32 42 00 00 )                      // C08B12B..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1D 44 65 78 74 65 72 4C 69 62 2E 44 78 74   // ...DexterLib.Dxt
                                                                                                                          41 6C 70 68 61 53 65 74 74 65 72 43 6C 61 73 73   // AlphaSetterClass
                                                                                                                          00 00 ) 
} // end of class DexterLib.DxtAlphaSetter

.class interface public abstract auto ansi import DexterLib.IDxtAlphaSetter
       implements DexterLib.IDXEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 40 10 00 00 )                               // ..@...
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 34 45 45 39 45 41 44 39 2D 44 41 34 44   // ..$4EE9EAD9-DA4D
                                                                                                  2D 34 33 44 30 2D 39 33 38 33 2D 30 36 42 39 30   // -43D0-9383-06B90
                                                                                                  43 30 38 42 31 32 42 00 00 )                      // C08B12B..
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtAlphaSetter::get_Capabilities

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtAlphaSetter::get_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtAlphaSetter::set_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtAlphaSetter::get_StepResolution

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtAlphaSetter::get_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtAlphaSetter::set_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Alpha() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtAlphaSetter::get_Alpha

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Alpha([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtAlphaSetter::set_Alpha

  .method public hidebysig newslot specialname abstract virtual 
          instance float64  get_AlphaRamp() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtAlphaSetter::get_AlphaRamp

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_AlphaRamp([in] float64 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtAlphaSetter::set_AlphaRamp

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.IDxtAlphaSetter::get_Capabilities()
  } // end of property IDxtAlphaSetter::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtAlphaSetter::get_Progress()
    .set instance void DexterLib.IDxtAlphaSetter::set_Progress(float32)
  } // end of property IDxtAlphaSetter::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtAlphaSetter::get_StepResolution()
  } // end of property IDxtAlphaSetter::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtAlphaSetter::get_Duration()
    .set instance void DexterLib.IDxtAlphaSetter::set_Duration(float32)
  } // end of property IDxtAlphaSetter::Duration
  .property int32 Alpha()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtAlphaSetter::get_Alpha()
    .set instance void DexterLib.IDxtAlphaSetter::set_Alpha(int32)
  } // end of property IDxtAlphaSetter::Alpha
  .property float64 AlphaRamp()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance float64 DexterLib.IDxtAlphaSetter::get_AlphaRamp()
    .set instance void DexterLib.IDxtAlphaSetter::set_AlphaRamp(float64)
  } // end of property IDxtAlphaSetter::AlphaRamp
} // end of class DexterLib.IDxtAlphaSetter

.class public auto ansi import DexterLib.DxtJpegClass
       extends [mscorlib]System.Object
       implements DexterLib.IDxtJpeg,
                  DexterLib.DxtJpeg
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 44 45 37 35 44 30 31 32 2D 37 41 36 35   // ..$DE75D012-7A65
                                                                                                  2D 31 31 44 32 2D 38 43 45 41 2D 30 30 41 30 43   // -11D2-8CEA-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method DxtJpegClass::.ctor

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtJpeg::get_Capabilities
  } // end of method DxtJpegClass::get_Capabilities

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtJpeg::get_Progress
  } // end of method DxtJpegClass::get_Progress

  .method public hidebysig newslot specialname virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtJpeg::set_Progress
  } // end of method DxtJpegClass::set_Progress

  .method public hidebysig newslot specialname virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtJpeg::get_StepResolution
  } // end of method DxtJpegClass::get_StepResolution

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtJpeg::get_Duration
  } // end of method DxtJpegClass::get_Duration

  .method public hidebysig newslot specialname virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtJpeg::set_Duration
  } // end of method DxtJpegClass::set_Duration

  .method public hidebysig newslot specialname virtual 
          instance int32  get_MaskNum() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_MaskNum
  } // end of method DxtJpegClass::get_MaskNum

  .method public hidebysig newslot specialname virtual 
          instance void  set_MaskNum([in] int32 __MIDL_0021) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_MaskNum
  } // end of method DxtJpegClass::set_MaskNum

  .method public hidebysig newslot specialname virtual 
          instance string 
          marshal( bstr) 
          get_MaskName() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_MaskName
  } // end of method DxtJpegClass::get_MaskName

  .method public hidebysig newslot specialname virtual 
          instance void  set_MaskName([in] string  marshal( bstr) pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_MaskName
  } // end of method DxtJpegClass::set_MaskName

  .method public hidebysig newslot specialname virtual 
          instance float64  get_ScaleX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_ScaleX
  } // end of method DxtJpegClass::get_ScaleX

  .method public hidebysig newslot specialname virtual 
          instance void  set_ScaleX([in] float64 __MIDL_0023) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_ScaleX
  } // end of method DxtJpegClass::set_ScaleX

  .method public hidebysig newslot specialname virtual 
          instance float64  get_ScaleY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_ScaleY
  } // end of method DxtJpegClass::get_ScaleY

  .method public hidebysig newslot specialname virtual 
          instance void  set_ScaleY([in] float64 __MIDL_0025) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_ScaleY
  } // end of method DxtJpegClass::set_ScaleY

  .method public hidebysig newslot specialname virtual 
          instance int32  get_OffsetX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_OffsetX
  } // end of method DxtJpegClass::get_OffsetX

  .method public hidebysig newslot specialname virtual 
          instance void  set_OffsetX([in] int32 __MIDL_0027) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_OffsetX
  } // end of method DxtJpegClass::set_OffsetX

  .method public hidebysig newslot specialname virtual 
          instance int32  get_OffsetY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_OffsetY
  } // end of method DxtJpegClass::get_OffsetY

  .method public hidebysig newslot specialname virtual 
          instance void  set_OffsetY([in] int32 __MIDL_0029) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_OffsetY
  } // end of method DxtJpegClass::set_OffsetY

  .method public hidebysig newslot specialname virtual 
          instance int32  get_ReplicateX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_ReplicateX
  } // end of method DxtJpegClass::get_ReplicateX

  .method public hidebysig newslot specialname virtual 
          instance void  set_ReplicateX([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_ReplicateX
  } // end of method DxtJpegClass::set_ReplicateX

  .method public hidebysig newslot specialname virtual 
          instance int32  get_ReplicateY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_ReplicateY
  } // end of method DxtJpegClass::get_ReplicateY

  .method public hidebysig newslot specialname virtual 
          instance void  set_ReplicateY([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_ReplicateY
  } // end of method DxtJpegClass::set_ReplicateY

  .method public hidebysig newslot specialname virtual 
          instance int32  get_BorderColor() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 09 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_BorderColor
  } // end of method DxtJpegClass::get_BorderColor

  .method public hidebysig newslot specialname virtual 
          instance void  set_BorderColor([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 09 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_BorderColor
  } // end of method DxtJpegClass::set_BorderColor

  .method public hidebysig newslot specialname virtual 
          instance int32  get_BorderWidth() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_BorderWidth
  } // end of method DxtJpegClass::get_BorderWidth

  .method public hidebysig newslot specialname virtual 
          instance void  set_BorderWidth([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_BorderWidth
  } // end of method DxtJpegClass::set_BorderWidth

  .method public hidebysig newslot specialname virtual 
          instance int32  get_BorderSoftness() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::get_BorderSoftness
  } // end of method DxtJpegClass::get_BorderSoftness

  .method public hidebysig newslot specialname virtual 
          instance void  set_BorderSoftness([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
    .override DexterLib.IDxtJpeg::set_BorderSoftness
  } // end of method DxtJpegClass::set_BorderSoftness

  .method public hidebysig newslot virtual 
          instance void  ApplyChanges() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 16 00 03 60 00 00 )                         // .....`..
    .override DexterLib.IDxtJpeg::ApplyChanges
  } // end of method DxtJpegClass::ApplyChanges

  .method public hidebysig newslot virtual 
          instance void  LoadDefSettings() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 17 00 03 60 00 00 )                         // .....`..
    .override DexterLib.IDxtJpeg::LoadDefSettings
  } // end of method DxtJpegClass::LoadDefSettings

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.DxtJpegClass::get_Capabilities()
  } // end of property DxtJpegClass::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtJpegClass::get_Progress()
    .set instance void DexterLib.DxtJpegClass::set_Progress(float32)
  } // end of property DxtJpegClass::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtJpegClass::get_StepResolution()
  } // end of property DxtJpegClass::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtJpegClass::get_Duration()
    .set instance void DexterLib.DxtJpegClass::set_Duration(float32)
  } // end of property DxtJpegClass::Duration
  .property int32 MaskNum()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtJpegClass::set_MaskNum(int32)
    .get instance int32 DexterLib.DxtJpegClass::get_MaskNum()
  } // end of property DxtJpegClass::MaskNum
  .property string MaskName()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance string DexterLib.DxtJpegClass::get_MaskName()
    .set instance void DexterLib.DxtJpegClass::set_MaskName(string)
  } // end of property DxtJpegClass::MaskName
  .property float64 ScaleX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .get instance float64 DexterLib.DxtJpegClass::get_ScaleX()
    .set instance void DexterLib.DxtJpegClass::set_ScaleX(float64)
  } // end of property DxtJpegClass::ScaleX
  .property float64 ScaleY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtJpegClass::set_ScaleY(float64)
    .get instance float64 DexterLib.DxtJpegClass::get_ScaleY()
  } // end of property DxtJpegClass::ScaleY
  .property int32 OffsetX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtJpegClass::get_OffsetX()
    .set instance void DexterLib.DxtJpegClass::set_OffsetX(int32)
  } // end of property DxtJpegClass::OffsetX
  .property int32 OffsetY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtJpegClass::set_OffsetY(int32)
    .get instance int32 DexterLib.DxtJpegClass::get_OffsetY()
  } // end of property DxtJpegClass::OffsetY
  .property int32 ReplicateX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtJpegClass::set_ReplicateX(int32)
    .get instance int32 DexterLib.DxtJpegClass::get_ReplicateX()
  } // end of property DxtJpegClass::ReplicateX
  .property int32 ReplicateY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtJpegClass::get_ReplicateY()
    .set instance void DexterLib.DxtJpegClass::set_ReplicateY(int32)
  } // end of property DxtJpegClass::ReplicateY
  .property int32 BorderColor()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 09 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtJpegClass::get_BorderColor()
    .set instance void DexterLib.DxtJpegClass::set_BorderColor(int32)
  } // end of property DxtJpegClass::BorderColor
  .property int32 BorderWidth()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtJpegClass::set_BorderWidth(int32)
    .get instance int32 DexterLib.DxtJpegClass::get_BorderWidth()
  } // end of property DxtJpegClass::BorderWidth
  .property int32 BorderSoftness()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtJpegClass::get_BorderSoftness()
    .set instance void DexterLib.DxtJpegClass::set_BorderSoftness(int32)
  } // end of property DxtJpegClass::BorderSoftness
} // end of class DexterLib.DxtJpegClass

.class interface public abstract auto ansi import DexterLib.DxtJpeg
       implements DexterLib.IDxtJpeg
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 16 44 65 78 74 65 72 4C 69 62 2E 44 78 74   // ...DexterLib.Dxt
                                                                                                                          4A 70 65 67 43 6C 61 73 73 00 00 )                // JpegClass..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 44 45 37 35 44 30 31 31 2D 37 41 36 35   // ..$DE75D011-7A65
                                                                                                  2D 31 31 44 32 2D 38 43 45 41 2D 30 30 41 30 43   // -11D2-8CEA-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
} // end of class DexterLib.DxtJpeg

.class interface public abstract auto ansi import DexterLib.IDxtJpeg
       implements DexterLib.IDXEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 44 45 37 35 44 30 31 31 2D 37 41 36 35   // ..$DE75D011-7A65
                                                                                                  2D 31 31 44 32 2D 38 43 45 41 2D 30 30 41 30 43   // -11D2-8CEA-00A0C
                                                                                                  39 34 34 31 45 32 30 00 00 )                      // 9441E20..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 40 10 00 00 )                               // ..@...
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtJpeg::get_Capabilities

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtJpeg::get_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtJpeg::set_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtJpeg::get_StepResolution

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtJpeg::get_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtJpeg::set_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_MaskNum() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_MaskNum

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_MaskNum([in] int32 __MIDL_0021) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_MaskNum

  .method public hidebysig newslot specialname abstract virtual 
          instance string 
          marshal( bstr) 
          get_MaskName() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_MaskName

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_MaskName([in] string  marshal( bstr) pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_MaskName

  .method public hidebysig newslot specialname abstract virtual 
          instance float64  get_ScaleX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_ScaleX

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_ScaleX([in] float64 __MIDL_0023) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_ScaleX

  .method public hidebysig newslot specialname abstract virtual 
          instance float64  get_ScaleY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_ScaleY

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_ScaleY([in] float64 __MIDL_0025) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_ScaleY

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_OffsetX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_OffsetX

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_OffsetX([in] int32 __MIDL_0027) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_OffsetX

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_OffsetY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_OffsetY

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_OffsetY([in] int32 __MIDL_0029) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_OffsetY

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_ReplicateX() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_ReplicateX

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_ReplicateX([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_ReplicateX

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_ReplicateY() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_ReplicateY

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_ReplicateY([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_ReplicateY

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_BorderColor() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 09 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_BorderColor

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_BorderColor([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 09 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_BorderColor

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_BorderWidth() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_BorderWidth

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_BorderWidth([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_BorderWidth

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_BorderSoftness() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::get_BorderSoftness

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_BorderSoftness([in] int32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
  } // end of method IDxtJpeg::set_BorderSoftness

  .method public hidebysig newslot abstract virtual 
          instance void  ApplyChanges() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 16 00 03 60 00 00 )                         // .....`..
  } // end of method IDxtJpeg::ApplyChanges

  .method public hidebysig newslot abstract virtual 
          instance void  LoadDefSettings() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 17 00 03 60 00 00 )                         // .....`..
  } // end of method IDxtJpeg::LoadDefSettings

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.IDxtJpeg::get_Capabilities()
  } // end of property IDxtJpeg::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtJpeg::get_Progress()
    .set instance void DexterLib.IDxtJpeg::set_Progress(float32)
  } // end of property IDxtJpeg::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtJpeg::get_StepResolution()
  } // end of property IDxtJpeg::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtJpeg::get_Duration()
    .set instance void DexterLib.IDxtJpeg::set_Duration(float32)
  } // end of property IDxtJpeg::Duration
  .property int32 MaskNum()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtJpeg::set_MaskNum(int32)
    .get instance int32 DexterLib.IDxtJpeg::get_MaskNum()
  } // end of property IDxtJpeg::MaskNum
  .property string MaskName()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance string DexterLib.IDxtJpeg::get_MaskName()
    .set instance void DexterLib.IDxtJpeg::set_MaskName(string)
  } // end of property IDxtJpeg::MaskName
  .property float64 ScaleX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .get instance float64 DexterLib.IDxtJpeg::get_ScaleX()
    .set instance void DexterLib.IDxtJpeg::set_ScaleX(float64)
  } // end of property IDxtJpeg::ScaleX
  .property float64 ScaleY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .get instance float64 DexterLib.IDxtJpeg::get_ScaleY()
    .set instance void DexterLib.IDxtJpeg::set_ScaleY(float64)
  } // end of property IDxtJpeg::ScaleY
  .property int32 OffsetX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtJpeg::get_OffsetX()
    .set instance void DexterLib.IDxtJpeg::set_OffsetX(int32)
  } // end of property IDxtJpeg::OffsetX
  .property int32 OffsetY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtJpeg::set_OffsetY(int32)
    .get instance int32 DexterLib.IDxtJpeg::get_OffsetY()
  } // end of property IDxtJpeg::OffsetY
  .property int32 ReplicateX()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 07 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtJpeg::get_ReplicateX()
    .set instance void DexterLib.IDxtJpeg::set_ReplicateX(int32)
  } // end of property IDxtJpeg::ReplicateX
  .property int32 ReplicateY()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtJpeg::get_ReplicateY()
    .set instance void DexterLib.IDxtJpeg::set_ReplicateY(int32)
  } // end of property IDxtJpeg::ReplicateY
  .property int32 BorderColor()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 09 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtJpeg::set_BorderColor(int32)
    .get instance int32 DexterLib.IDxtJpeg::get_BorderColor()
  } // end of property IDxtJpeg::BorderColor
  .property int32 BorderWidth()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0A 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtJpeg::get_BorderWidth()
    .set instance void DexterLib.IDxtJpeg::set_BorderWidth(int32)
  } // end of property IDxtJpeg::BorderWidth
  .property int32 BorderSoftness()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtJpeg::get_BorderSoftness()
    .set instance void DexterLib.IDxtJpeg::set_BorderSoftness(int32)
  } // end of property IDxtJpeg::BorderSoftness
} // end of class DexterLib.IDxtJpeg

.class public auto ansi import DexterLib.ColorSourceClass
       extends [mscorlib]System.Object
       implements DexterLib.IBaseFilter,
                  DexterLib.ColorSource
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 43 46 44 44 30 37 30 2D 35 38 31 41   // ..$0CFDD070-581A
                                                                                                  2D 31 31 44 32 2D 39 45 45 36 2D 30 30 36 30 30   // -11D2-9EE6-00600
                                                                                                  38 30 33 39 45 33 37 00 00 )                      // 8039E37..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method ColorSourceClass::.ctor

  .method public hidebysig newslot virtual 
          instance void  GetClassID([out] valuetype [mscorlib]System.Guid& pClassID) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetClassID
  } // end of method ColorSourceClass::GetClassID

  .method public hidebysig newslot virtual 
          instance void  Stop() runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Stop
  } // end of method ColorSourceClass::Stop

  .method public hidebysig newslot virtual 
          instance void  Pause() runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Pause
  } // end of method ColorSourceClass::Pause

  .method public hidebysig newslot virtual 
          instance void  Run(int64 tStart) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::Run
  } // end of method ColorSourceClass::Run

  .method public hidebysig newslot virtual 
          instance void  GetState([in] uint32 dwMilliSecsTimeout,
                                  [out] valuetype DexterLib._FilterState& State) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetState
  } // end of method ColorSourceClass::GetState

  .method public hidebysig newslot virtual 
          instance void  SetSyncSource([in] class DexterLib.IReferenceClock  marshal( interface ) pClock) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::SetSyncSource
  } // end of method ColorSourceClass::SetSyncSource

  .method public hidebysig newslot virtual 
          instance void  GetSyncSource([out] class DexterLib.IReferenceClock&  marshal( interface ) pClock) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::GetSyncSource
  } // end of method ColorSourceClass::GetSyncSource

  .method public hidebysig newslot virtual 
          instance void  EnumPins([out] class DexterLib.IEnumPins&  marshal( interface ) ppEnum) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::EnumPins
  } // end of method ColorSourceClass::EnumPins

  .method public hidebysig newslot virtual 
          instance void  FindPin([in] string  marshal( lpwstr) Id,
                                 [out] class DexterLib.IPin&  marshal( interface ) ppPin) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::FindPin
  } // end of method ColorSourceClass::FindPin

  .method public hidebysig newslot virtual 
          instance void  QueryFilterInfo([out] valuetype DexterLib._FilterInfo& pInfo) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::QueryFilterInfo
  } // end of method ColorSourceClass::QueryFilterInfo

  .method public hidebysig newslot virtual 
          instance void  JoinFilterGraph([in] class DexterLib.IFilterGraph  marshal( interface ) pGraph,
                                         [in] string  marshal( lpwstr) pName) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::JoinFilterGraph
  } // end of method ColorSourceClass::JoinFilterGraph

  .method public hidebysig newslot virtual 
          instance void  QueryVendorInfo([out] string&  marshal( lpwstr) pVendorInfo) runtime managed internalcall
  {
    .override DexterLib.IBaseFilter::QueryVendorInfo
  } // end of method ColorSourceClass::QueryVendorInfo

} // end of class DexterLib.ColorSourceClass

.class interface public abstract auto ansi import DexterLib.ColorSource
       implements DexterLib.IBaseFilter
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 36 41 38 36 38 39 35 2D 30 41 44 34   // ..$56A86895-0AD4
                                                                                                  2D 31 31 43 45 2D 42 30 33 41 2D 30 30 32 30 41   // -11CE-B03A-0020A
                                                                                                  46 30 42 41 37 37 30 00 00 )                      // F0BA770..
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 1A 44 65 78 74 65 72 4C 69 62 2E 43 6F 6C   // ...DexterLib.Col
                                                                                                                          6F 72 53 6F 75 72 63 65 43 6C 61 73 73 00 00 )    // orSourceClass..
} // end of class DexterLib.ColorSource

.class public auto ansi import DexterLib.DxtKeyClass
       extends [mscorlib]System.Object
       implements DexterLib.IDxtKey,
                  DexterLib.DxtKey
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(int16) = ( 01 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 43 35 42 31 39 35 39 32 2D 31 34 35 45   // ..$C5B19592-145E
                                                                                                  2D 31 31 44 33 2D 39 46 30 34 2D 30 30 36 30 30   // -11D3-9F04-00600
                                                                                                  38 30 33 39 45 33 37 00 00 )                      // 8039E37..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 02 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() runtime managed internalcall
  {
  } // end of method DxtKeyClass::.ctor

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtKey::get_Capabilities
  } // end of method DxtKeyClass::get_Capabilities

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtKey::get_Progress
  } // end of method DxtKeyClass::get_Progress

  .method public hidebysig newslot specialname virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtKey::set_Progress
  } // end of method DxtKeyClass::set_Progress

  .method public hidebysig newslot specialname virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtKey::get_StepResolution
  } // end of method DxtKeyClass::get_StepResolution

  .method public hidebysig newslot specialname virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtKey::get_Duration
  } // end of method DxtKeyClass::get_Duration

  .method public hidebysig newslot specialname virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .override DexterLib.IDxtKey::set_Duration
  } // end of method DxtKeyClass::set_Duration

  .method public hidebysig newslot specialname virtual 
          instance int32  get_KeyType() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::get_KeyType
  } // end of method DxtKeyClass::get_KeyType

  .method public hidebysig newslot specialname virtual 
          instance void  set_KeyType([in] int32 __MIDL_0031) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::set_KeyType
  } // end of method DxtKeyClass::set_KeyType

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Hue() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::get_Hue
  } // end of method DxtKeyClass::get_Hue

  .method public hidebysig newslot specialname virtual 
          instance void  set_Hue([in] int32 __MIDL_0033) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::set_Hue
  } // end of method DxtKeyClass::set_Hue

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Luminance() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::get_Luminance
  } // end of method DxtKeyClass::get_Luminance

  .method public hidebysig newslot specialname virtual 
          instance void  set_Luminance([in] int32 __MIDL_0035) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::set_Luminance
  } // end of method DxtKeyClass::set_Luminance

  .method public hidebysig newslot specialname virtual 
          instance uint32  get_RGB() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::get_RGB
  } // end of method DxtKeyClass::get_RGB

  .method public hidebysig newslot specialname virtual 
          instance void  set_RGB([in] uint32 __MIDL_0037) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::set_RGB
  } // end of method DxtKeyClass::set_RGB

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Similarity() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::get_Similarity
  } // end of method DxtKeyClass::get_Similarity

  .method public hidebysig newslot specialname virtual 
          instance void  set_Similarity([in] int32 __MIDL_0039) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::set_Similarity
  } // end of method DxtKeyClass::set_Similarity

  .method public hidebysig newslot specialname virtual 
          instance int32  get_Invert() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::get_Invert
  } // end of method DxtKeyClass::get_Invert

  .method public hidebysig newslot specialname virtual 
          instance void  set_Invert([in] int32 __MIDL_0041) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .override DexterLib.IDxtKey::set_Invert
  } // end of method DxtKeyClass::set_Invert

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.DxtKeyClass::get_Capabilities()
  } // end of property DxtKeyClass::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtKeyClass::get_Progress()
    .set instance void DexterLib.DxtKeyClass::set_Progress(float32)
  } // end of property DxtKeyClass::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtKeyClass::get_StepResolution()
  } // end of property DxtKeyClass::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.DxtKeyClass::get_Duration()
    .set instance void DexterLib.DxtKeyClass::set_Duration(float32)
  } // end of property DxtKeyClass::Duration
  .property int32 KeyType()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtKeyClass::set_KeyType(int32)
    .get instance int32 DexterLib.DxtKeyClass::get_KeyType()
  } // end of property DxtKeyClass::KeyType
  .property int32 Hue()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtKeyClass::get_Hue()
    .set instance void DexterLib.DxtKeyClass::set_Hue(int32)
  } // end of property DxtKeyClass::Hue
  .property int32 Luminance()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtKeyClass::set_Luminance(int32)
    .get instance int32 DexterLib.DxtKeyClass::get_Luminance()
  } // end of property DxtKeyClass::Luminance
  .property uint32 RGB()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .set instance void DexterLib.DxtKeyClass::set_RGB(uint32)
    .get instance uint32 DexterLib.DxtKeyClass::get_RGB()
  } // end of property DxtKeyClass::RGB
  .property int32 Similarity()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtKeyClass::get_Similarity()
    .set instance void DexterLib.DxtKeyClass::set_Similarity(int32)
  } // end of property DxtKeyClass::Similarity
  .property int32 Invert()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .get instance int32 DexterLib.DxtKeyClass::get_Invert()
    .set instance void DexterLib.DxtKeyClass::set_Invert(int32)
  } // end of property DxtKeyClass::Invert
} // end of class DexterLib.DxtKeyClass

.class interface public abstract auto ansi import DexterLib.DxtKey
       implements DexterLib.IDxtKey
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.CoClassAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 15 44 65 78 74 65 72 4C 69 62 2E 44 78 74   // ...DexterLib.Dxt
                                                                                                                          4B 65 79 43 6C 61 73 73 00 00 )                   // KeyClass..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 33 32 35 35 44 45 35 36 2D 33 38 46 42   // ..$3255DE56-38FB
                                                                                                  2D 34 39 30 31 2D 42 39 38 30 2D 39 34 42 34 33   // -4901-B980-94B43
                                                                                                  38 30 31 30 44 37 42 00 00 )                      // 8010D7B..
} // end of class DexterLib.DxtKey

.class interface public abstract auto ansi import DexterLib.IDxtKey
       implements DexterLib.IDXEffect
{
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 33 32 35 35 44 45 35 36 2D 33 38 46 42   // ..$3255DE56-38FB
                                                                                                  2D 34 39 30 31 2D 42 39 38 30 2D 39 34 42 34 33   // -4901-B980-94B43
                                                                                                  38 30 31 30 44 37 42 00 00 )                      // 8010D7B..
  .custom instance void [mscorlib]System.Runtime.InteropServices.TypeLibTypeAttribute::.ctor(int16) = ( 01 00 40 10 00 00 )                               // ..@...
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Capabilities() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtKey::get_Capabilities

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Progress() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtKey::get_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Progress([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtKey::set_Progress

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_StepResolution() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtKey::get_StepResolution

  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_Duration() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtKey::get_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Duration([in] float32 pVal) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
  } // end of method IDxtKey::set_Duration

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_KeyType() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtKey::get_KeyType

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_KeyType([in] int32 __MIDL_0031) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  } // end of method IDxtKey::set_KeyType

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Hue() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtKey::get_Hue

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Hue([in] int32 __MIDL_0033) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
  } // end of method IDxtKey::set_Hue

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Luminance() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  } // end of method IDxtKey::get_Luminance

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Luminance([in] int32 __MIDL_0035) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  } // end of method IDxtKey::set_Luminance

  .method public hidebysig newslot specialname abstract virtual 
          instance uint32  get_RGB() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
  } // end of method IDxtKey::get_RGB

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_RGB([in] uint32 __MIDL_0037) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
  } // end of method IDxtKey::set_RGB

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Similarity() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
  } // end of method IDxtKey::get_Similarity

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Similarity([in] int32 __MIDL_0039) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
  } // end of method IDxtKey::set_Similarity

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Invert() runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
  } // end of method IDxtKey::get_Invert

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Invert([in] int32 __MIDL_0041) runtime managed internalcall
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
  } // end of method IDxtKey::set_Invert

  .property int32 Capabilities()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 10 27 00 00 00 00 )                         // ...'....
    .get instance int32 DexterLib.IDxtKey::get_Capabilities()
  } // end of property IDxtKey::Capabilities
  .property float32 Progress()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 11 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtKey::get_Progress()
    .set instance void DexterLib.IDxtKey::set_Progress(float32)
  } // end of property IDxtKey::Progress
  .property float32 StepResolution()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 12 27 00 00 00 00 )                         // ...'....
    .get instance float32 DexterLib.IDxtKey::get_StepResolution()
  } // end of property IDxtKey::StepResolution
  .property float32 Duration()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 13 27 00 00 00 00 )                         // ...'....
    .set instance void DexterLib.IDxtKey::set_Duration(float32)
    .get instance float32 DexterLib.IDxtKey::get_Duration()
  } // end of property IDxtKey::Duration
  .property int32 KeyType()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtKey::set_KeyType(int32)
    .get instance int32 DexterLib.IDxtKey::get_KeyType()
  } // end of property IDxtKey::KeyType
  .property int32 Hue()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 02 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtKey::get_Hue()
    .set instance void DexterLib.IDxtKey::set_Hue(int32)
  } // end of property IDxtKey::Hue
  .property int32 Luminance()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
    .set instance void DexterLib.IDxtKey::set_Luminance(int32)
    .get instance int32 DexterLib.IDxtKey::get_Luminance()
  } // end of property IDxtKey::Luminance
  .property uint32 RGB()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 04 00 00 00 00 00 ) 
    .get instance uint32 DexterLib.IDxtKey::get_RGB()
    .set instance void DexterLib.IDxtKey::set_RGB(uint32)
  } // end of property IDxtKey::RGB
  .property int32 Similarity()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 05 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtKey::get_Similarity()
    .set instance void DexterLib.IDxtKey::set_Similarity(int32)
  } // end of property IDxtKey::Similarity
  .property int32 Invert()
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.DispIdAttribute::.ctor(int32) = ( 01 00 06 00 00 00 00 00 ) 
    .get instance int32 DexterLib.IDxtKey::get_Invert()
    .set instance void DexterLib.IDxtKey::set_Invert(int32)
  } // end of property IDxtKey::Invert
} // end of class DexterLib.IDxtKey


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file Interop.DexterLib.res
