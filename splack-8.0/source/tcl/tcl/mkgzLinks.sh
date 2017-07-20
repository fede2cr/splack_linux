#!/bin/sh
# This script is invoked when installing manual entries.  It generates
# additional links to manual entries, corresponding to the procedure
# and command names described by the manual entry.  For example, the
# Tcl manual entry Hash.3.gz describes procedures Tcl_InitHashTable,
# Tcl_CreateHashEntry, and many more.  This script will make hard
# links so that Tcl_InitHashTable.3.gz, Tcl_CreateHashEntry.3.gz, and so
# on all refer to Hash.3.gz in the installed directory.
#
# Because of the length of command and procedure names, this mechanism
# only works on machines that support file names longer than 14 characters.
# This script checks to see if long file names are supported, and it
# doesn't make any links if they are not.
#
# The script takes one argument, which is the name of the directory
# where the manual entries have been installed.

if test $# != 1; then
    echo "Usage: mkLinks dir"
    exit 1
fi

cd $1
echo foo > xyzzyTestingAVeryLongFileName.foo
x=`echo xyzzyTe*`
rm xyzzyTe*
if test "$x" != "xyzzyTestingAVeryLongFileName.foo"; then
    exit
fi

if test -r Access.3.gz; then
    rm -f Tcl_Access.3.gz
    rm -f Tcl_Stat.3.gz
    ln -sf Access.3.gz Tcl_Access.3.gz
    ln -sf Access.3.gz Tcl_Stat.3.gz
fi
if test -r AddErrInfo.3.gz; then
    rm -f Tcl_AddObjErrorInfo.3.gz
    rm -f Tcl_AddErrorInfo.3.gz
    rm -f Tcl_SetObjErrorCode.3.gz
    rm -f Tcl_SetErrorCode.3.gz
    rm -f Tcl_SetErrorCodeVA.3.gz
    rm -f Tcl_PosixError.3.gz
    rm -f Tcl_LogCommandInfo.3.gz
    ln -sf AddErrInfo.3.gz Tcl_AddObjErrorInfo.3.gz
    ln -sf AddErrInfo.3.gz Tcl_AddErrorInfo.3.gz
    ln -sf AddErrInfo.3.gz Tcl_SetObjErrorCode.3.gz
    ln -sf AddErrInfo.3.gz Tcl_SetErrorCode.3.gz
    ln -sf AddErrInfo.3.gz Tcl_SetErrorCodeVA.3.gz
    ln -sf AddErrInfo.3.gz Tcl_PosixError.3.gz
    ln -sf AddErrInfo.3.gz Tcl_LogCommandInfo.3.gz
fi
if test -r Alloc.3.gz; then
    rm -f Tcl_Alloc.3.gz
    rm -f Tcl_Free.3.gz
    rm -f Tcl_Realloc.3.gz
    ln -sf Alloc.3.gz Tcl_Alloc.3.gz
    ln -sf Alloc.3.gz Tcl_Free.3.gz
    ln -sf Alloc.3.gz Tcl_Realloc.3.gz
fi
if test -r AllowExc.3.gz; then
    rm -f Tcl_AllowExceptions.3.gz
    ln -sf AllowExc.3.gz Tcl_AllowExceptions.3.gz
fi
if test -r AppInit.3.gz; then
    rm -f Tcl_AppInit.3.gz
    ln -sf AppInit.3.gz Tcl_AppInit.3.gz
fi
if test -r AssocData.3.gz; then
    rm -f Tcl_GetAssocData.3.gz
    rm -f Tcl_SetAssocData.3.gz
    rm -f Tcl_DeleteAssocData.3.gz
    ln -sf AssocData.3.gz Tcl_GetAssocData.3.gz
    ln -sf AssocData.3.gz Tcl_SetAssocData.3.gz
    ln -sf AssocData.3.gz Tcl_DeleteAssocData.3.gz
fi
if test -r Async.3.gz; then
    rm -f Tcl_AsyncCreate.3.gz
    rm -f Tcl_AsyncMark.3.gz
    rm -f Tcl_AsyncInvoke.3.gz
    rm -f Tcl_AsyncDelete.3.gz
    rm -f Tcl_AsyncReady.3.gz
    ln -sf Async.3.gz Tcl_AsyncCreate.3.gz
    ln -sf Async.3.gz Tcl_AsyncMark.3.gz
    ln -sf Async.3.gz Tcl_AsyncInvoke.3.gz
    ln -sf Async.3.gz Tcl_AsyncDelete.3.gz
    ln -sf Async.3.gz Tcl_AsyncReady.3.gz
fi
if test -r BackgdErr.3.gz; then
    rm -f Tcl_BackgroundError.3.gz
    ln -sf BackgdErr.3.gz Tcl_BackgroundError.3.gz
fi
if test -r Backslash.3.gz; then
    rm -f Tcl_Backslash.3.gz
    ln -sf Backslash.3.gz Tcl_Backslash.3.gz
fi
if test -r BoolObj.3.gz; then
    rm -f Tcl_NewBooleanObj.3.gz
    rm -f Tcl_SetBooleanObj.3.gz
    rm -f Tcl_GetBooleanFromObj.3.gz
    ln -sf BoolObj.3.gz Tcl_NewBooleanObj.3.gz
    ln -sf BoolObj.3.gz Tcl_SetBooleanObj.3.gz
    ln -sf BoolObj.3.gz Tcl_GetBooleanFromObj.3.gz
fi
if test -r ByteArrObj.3.gz; then
    rm -f Tcl_NewByteArrayObj.3.gz
    rm -f Tcl_SetByteArrayObj.3.gz
    rm -f Tcl_GetByteArrayFromObj.3.gz
    rm -f Tcl_SetByteArrayLength.3.gz
    ln -sf ByteArrObj.3.gz Tcl_NewByteArrayObj.3.gz
    ln -sf ByteArrObj.3.gz Tcl_SetByteArrayObj.3.gz
    ln -sf ByteArrObj.3.gz Tcl_GetByteArrayFromObj.3.gz
    ln -sf ByteArrObj.3.gz Tcl_SetByteArrayLength.3.gz
fi
if test -r CallDel.3.gz; then
    rm -f Tcl_CallWhenDeleted.3.gz
    rm -f Tcl_DontCallWhenDeleted.3.gz
    ln -sf CallDel.3.gz Tcl_CallWhenDeleted.3.gz
    ln -sf CallDel.3.gz Tcl_DontCallWhenDeleted.3.gz
fi
if test -r ChnlStack.3.gz; then
    rm -f Tcl_StackChannel.3.gz
    rm -f Tcl_UnstackChannel.3.gz
    rm -f Tcl_GetStackedChannel.3.gz
    ln -sf ChnlStack.3.gz Tcl_StackChannel.3.gz
    ln -sf ChnlStack.3.gz Tcl_UnstackChannel.3.gz
    ln -sf ChnlStack.3.gz Tcl_GetStackedChannel.3.gz
fi
if test -r CmdCmplt.3.gz; then
    rm -f Tcl_CommandComplete.3.gz
    ln -sf CmdCmplt.3.gz Tcl_CommandComplete.3.gz
fi
if test -r Concat.3.gz; then
    rm -f Tcl_Concat.3.gz
    ln -sf Concat.3.gz Tcl_Concat.3.gz
fi
if test -r CrtChannel.3.gz; then
    rm -f Tcl_CreateChannel.3.gz
    rm -f Tcl_GetChannelInstanceData.3.gz
    rm -f Tcl_GetChannelType.3.gz
    rm -f Tcl_GetChannelName.3.gz
    rm -f Tcl_GetChannelHandle.3.gz
    rm -f Tcl_GetChannelMode.3.gz
    rm -f Tcl_GetChannelBufferSize.3.gz
    rm -f Tcl_SetChannelBufferSize.3.gz
    rm -f Tcl_NotifyChannel.3.gz
    rm -f Tcl_BadChannelOption.3.gz
    rm -f Tcl_ChannelName.3.gz
    rm -f Tcl_ChannelVersion.3.gz
    rm -f Tcl_ChannelBlockModeProc.3.gz
    rm -f Tcl_ChannelCloseProc.3.gz
    rm -f Tcl_ChannelClose2Proc.3.gz
    rm -f Tcl_ChannelInputProc.3.gz
    rm -f Tcl_ChannelOutputProc.3.gz
    rm -f Tcl_ChannelSeekProc.3.gz
    rm -f Tcl_ChannelSetOptionProc.3.gz
    rm -f Tcl_ChannelGetOptionProc.3.gz
    rm -f Tcl_ChannelWatchProc.3.gz
    rm -f Tcl_ChannelGetHandleProc.3.gz
    rm -f Tcl_ChannelFlushProc.3.gz
    rm -f Tcl_ChannelHandlerProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_CreateChannel.3.gz
    ln -sf CrtChannel.3.gz Tcl_GetChannelInstanceData.3.gz
    ln -sf CrtChannel.3.gz Tcl_GetChannelType.3.gz
    ln -sf CrtChannel.3.gz Tcl_GetChannelName.3.gz
    ln -sf CrtChannel.3.gz Tcl_GetChannelHandle.3.gz
    ln -sf CrtChannel.3.gz Tcl_GetChannelMode.3.gz
    ln -sf CrtChannel.3.gz Tcl_GetChannelBufferSize.3.gz
    ln -sf CrtChannel.3.gz Tcl_SetChannelBufferSize.3.gz
    ln -sf CrtChannel.3.gz Tcl_NotifyChannel.3.gz
    ln -sf CrtChannel.3.gz Tcl_BadChannelOption.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelName.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelVersion.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelBlockModeProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelCloseProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelClose2Proc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelInputProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelOutputProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelSeekProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelSetOptionProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelGetOptionProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelWatchProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelGetHandleProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelFlushProc.3.gz
    ln -sf CrtChannel.3.gz Tcl_ChannelHandlerProc.3.gz
fi
if test -r CrtChnlHdlr.3.gz; then
    rm -f Tcl_CreateChannelHandler.3.gz
    rm -f Tcl_DeleteChannelHandler.3.gz
    ln -sf CrtChnlHdlr.3.gz Tcl_CreateChannelHandler.3.gz
    ln -sf CrtChnlHdlr.3.gz Tcl_DeleteChannelHandler.3.gz
fi
if test -r CrtCloseHdlr.3.gz; then
    rm -f Tcl_CreateCloseHandler.3.gz
    rm -f Tcl_DeleteCloseHandler.3.gz
    ln -sf CrtCloseHdlr.3.gz Tcl_CreateCloseHandler.3.gz
    ln -sf CrtCloseHdlr.3.gz Tcl_DeleteCloseHandler.3.gz
fi
if test -r CrtCommand.3.gz; then
    rm -f Tcl_CreateCommand.3.gz
    ln -sf CrtCommand.3.gz Tcl_CreateCommand.3.gz
fi
if test -r CrtFileHdlr.3.gz; then
    rm -f Tcl_CreateFileHandler.3.gz
    rm -f Tcl_DeleteFileHandler.3.gz
    ln -sf CrtFileHdlr.3.gz Tcl_CreateFileHandler.3.gz
    ln -sf CrtFileHdlr.3.gz Tcl_DeleteFileHandler.3.gz
fi
if test -r CrtInterp.3.gz; then
    rm -f Tcl_CreateInterp.3.gz
    rm -f Tcl_DeleteInterp.3.gz
    rm -f Tcl_InterpDeleted.3.gz
    ln -sf CrtInterp.3.gz Tcl_CreateInterp.3.gz
    ln -sf CrtInterp.3.gz Tcl_DeleteInterp.3.gz
    ln -sf CrtInterp.3.gz Tcl_InterpDeleted.3.gz
fi
if test -r CrtMathFnc.3.gz; then
    rm -f Tcl_CreateMathFunc.3.gz
    ln -sf CrtMathFnc.3.gz Tcl_CreateMathFunc.3.gz
fi
if test -r CrtObjCmd.3.gz; then
    rm -f Tcl_CreateObjCommand.3.gz
    rm -f Tcl_DeleteCommand.3.gz
    rm -f Tcl_DeleteCommandFromToken.3.gz
    rm -f Tcl_GetCommandInfo.3.gz
    rm -f Tcl_SetCommandInfo.3.gz
    rm -f Tcl_GetCommandName.3.gz
    ln -sf CrtObjCmd.3.gz Tcl_CreateObjCommand.3.gz
    ln -sf CrtObjCmd.3.gz Tcl_DeleteCommand.3.gz
    ln -sf CrtObjCmd.3.gz Tcl_DeleteCommandFromToken.3.gz
    ln -sf CrtObjCmd.3.gz Tcl_GetCommandInfo.3.gz
    ln -sf CrtObjCmd.3.gz Tcl_SetCommandInfo.3.gz
    ln -sf CrtObjCmd.3.gz Tcl_GetCommandName.3.gz
fi
if test -r CrtSlave.3.gz; then
    rm -f Tcl_IsSafe.3.gz
    rm -f Tcl_MakeSafe.3.gz
    rm -f Tcl_CreateSlave.3.gz
    rm -f Tcl_GetSlave.3.gz
    rm -f Tcl_GetMaster.3.gz
    rm -f Tcl_GetInterpPath.3.gz
    rm -f Tcl_CreateAlias.3.gz
    rm -f Tcl_CreateAliasObj.3.gz
    rm -f Tcl_GetAlias.3.gz
    rm -f Tcl_GetAliasObj.3.gz
    rm -f Tcl_ExposeCommand.3.gz
    rm -f Tcl_HideCommand.3.gz
    ln -sf CrtSlave.3.gz Tcl_IsSafe.3.gz
    ln -sf CrtSlave.3.gz Tcl_MakeSafe.3.gz
    ln -sf CrtSlave.3.gz Tcl_CreateSlave.3.gz
    ln -sf CrtSlave.3.gz Tcl_GetSlave.3.gz
    ln -sf CrtSlave.3.gz Tcl_GetMaster.3.gz
    ln -sf CrtSlave.3.gz Tcl_GetInterpPath.3.gz
    ln -sf CrtSlave.3.gz Tcl_CreateAlias.3.gz
    ln -sf CrtSlave.3.gz Tcl_CreateAliasObj.3.gz
    ln -sf CrtSlave.3.gz Tcl_GetAlias.3.gz
    ln -sf CrtSlave.3.gz Tcl_GetAliasObj.3.gz
    ln -sf CrtSlave.3.gz Tcl_ExposeCommand.3.gz
    ln -sf CrtSlave.3.gz Tcl_HideCommand.3.gz
fi
if test -r CrtTimerHdlr.3.gz; then
    rm -f Tcl_CreateTimerHandler.3.gz
    rm -f Tcl_DeleteTimerHandler.3.gz
    ln -sf CrtTimerHdlr.3.gz Tcl_CreateTimerHandler.3.gz
    ln -sf CrtTimerHdlr.3.gz Tcl_DeleteTimerHandler.3.gz
fi
if test -r CrtTrace.3.gz; then
    rm -f Tcl_CreateTrace.3.gz
    rm -f Tcl_DeleteTrace.3.gz
    ln -sf CrtTrace.3.gz Tcl_CreateTrace.3.gz
    ln -sf CrtTrace.3.gz Tcl_DeleteTrace.3.gz
fi
if test -r DString.3.gz; then
    rm -f Tcl_DStringInit.3.gz
    rm -f Tcl_DStringAppend.3.gz
    rm -f Tcl_DStringAppendElement.3.gz
    rm -f Tcl_DStringStartSublist.3.gz
    rm -f Tcl_DStringEndSublist.3.gz
    rm -f Tcl_DStringLength.3.gz
    rm -f Tcl_DStringValue.3.gz
    rm -f Tcl_DStringSetLength.3.gz
    rm -f Tcl_DStringFree.3.gz
    rm -f Tcl_DStringResult.3.gz
    rm -f Tcl_DStringGetResult.3.gz
    ln -sf DString.3.gz Tcl_DStringInit.3.gz
    ln -sf DString.3.gz Tcl_DStringAppend.3.gz
    ln -sf DString.3.gz Tcl_DStringAppendElement.3.gz
    ln -sf DString.3.gz Tcl_DStringStartSublist.3.gz
    ln -sf DString.3.gz Tcl_DStringEndSublist.3.gz
    ln -sf DString.3.gz Tcl_DStringLength.3.gz
    ln -sf DString.3.gz Tcl_DStringValue.3.gz
    ln -sf DString.3.gz Tcl_DStringSetLength.3.gz
    ln -sf DString.3.gz Tcl_DStringFree.3.gz
    ln -sf DString.3.gz Tcl_DStringResult.3.gz
    ln -sf DString.3.gz Tcl_DStringGetResult.3.gz
fi
if test -r DetachPids.3.gz; then
    rm -f Tcl_DetachPids.3.gz
    rm -f Tcl_ReapDetachedProcs.3.gz
    rm -f Tcl_WaitPid.3.gz
    ln -sf DetachPids.3.gz Tcl_DetachPids.3.gz
    ln -sf DetachPids.3.gz Tcl_ReapDetachedProcs.3.gz
    ln -sf DetachPids.3.gz Tcl_WaitPid.3.gz
fi
if test -r DoOneEvent.3.gz; then
    rm -f Tcl_DoOneEvent.3.gz
    ln -sf DoOneEvent.3.gz Tcl_DoOneEvent.3.gz
fi
if test -r DoWhenIdle.3.gz; then
    rm -f Tcl_DoWhenIdle.3.gz
    rm -f Tcl_CancelIdleCall.3.gz
    ln -sf DoWhenIdle.3.gz Tcl_DoWhenIdle.3.gz
    ln -sf DoWhenIdle.3.gz Tcl_CancelIdleCall.3.gz
fi
if test -r DoubleObj.3.gz; then
    rm -f Tcl_NewDoubleObj.3.gz
    rm -f Tcl_SetDoubleObj.3.gz
    rm -f Tcl_GetDoubleFromObj.3.gz
    ln -sf DoubleObj.3.gz Tcl_NewDoubleObj.3.gz
    ln -sf DoubleObj.3.gz Tcl_SetDoubleObj.3.gz
    ln -sf DoubleObj.3.gz Tcl_GetDoubleFromObj.3.gz
fi
if test -r DumpActiveMemory.3.gz; then
    rm -f Tcl_DumpActiveMemory.3.gz
    rm -f Tcl_InitMemory.3.gz
    rm -f Tcl_ValidateAllMemory.3.gz
    ln -sf DumpActiveMemory.3.gz Tcl_DumpActiveMemory.3.gz
    ln -sf DumpActiveMemory.3.gz Tcl_InitMemory.3.gz
    ln -sf DumpActiveMemory.3.gz Tcl_ValidateAllMemory.3.gz
fi
if test -r Encoding.3.gz; then
    rm -f Tcl_GetEncoding.3.gz
    rm -f Tcl_FreeEncoding.3.gz
    rm -f Tcl_ExternalToUtfDString.3.gz
    rm -f Tcl_ExternalToUtf.3.gz
    rm -f Tcl_UtfToExternalDString.3.gz
    rm -f Tcl_UtfToExternal.3.gz
    rm -f Tcl_WinTCharToUtf.3.gz
    rm -f Tcl_WinUtfToTChar.3.gz
    rm -f Tcl_GetEncodingName.3.gz
    rm -f Tcl_SetSystemEncoding.3.gz
    rm -f Tcl_GetEncodingNames.3.gz
    rm -f Tcl_CreateEncoding.3.gz
    rm -f Tcl_GetDefaultEncodingDir.3.gz
    rm -f Tcl_SetDefaultEncodingDir.3.gz
    ln -sf Encoding.3.gz Tcl_GetEncoding.3.gz
    ln -sf Encoding.3.gz Tcl_FreeEncoding.3.gz
    ln -sf Encoding.3.gz Tcl_ExternalToUtfDString.3.gz
    ln -sf Encoding.3.gz Tcl_ExternalToUtf.3.gz
    ln -sf Encoding.3.gz Tcl_UtfToExternalDString.3.gz
    ln -sf Encoding.3.gz Tcl_UtfToExternal.3.gz
    ln -sf Encoding.3.gz Tcl_WinTCharToUtf.3.gz
    ln -sf Encoding.3.gz Tcl_WinUtfToTChar.3.gz
    ln -sf Encoding.3.gz Tcl_GetEncodingName.3.gz
    ln -sf Encoding.3.gz Tcl_SetSystemEncoding.3.gz
    ln -sf Encoding.3.gz Tcl_GetEncodingNames.3.gz
    ln -sf Encoding.3.gz Tcl_CreateEncoding.3.gz
    ln -sf Encoding.3.gz Tcl_GetDefaultEncodingDir.3.gz
    ln -sf Encoding.3.gz Tcl_SetDefaultEncodingDir.3.gz
fi
if test -r Eval.3.gz; then
    rm -f Tcl_EvalObjEx.3.gz
    rm -f Tcl_EvalFile.3.gz
    rm -f Tcl_EvalObjv.3.gz
    rm -f Tcl_Eval.3.gz
    rm -f Tcl_EvalEx.3.gz
    rm -f Tcl_GlobalEval.3.gz
    rm -f Tcl_GlobalEvalObj.3.gz
    rm -f Tcl_VarEval.3.gz
    rm -f Tcl_VarEvalVA.3.gz
    ln -sf Eval.3.gz Tcl_EvalObjEx.3.gz
    ln -sf Eval.3.gz Tcl_EvalFile.3.gz
    ln -sf Eval.3.gz Tcl_EvalObjv.3.gz
    ln -sf Eval.3.gz Tcl_Eval.3.gz
    ln -sf Eval.3.gz Tcl_EvalEx.3.gz
    ln -sf Eval.3.gz Tcl_GlobalEval.3.gz
    ln -sf Eval.3.gz Tcl_GlobalEvalObj.3.gz
    ln -sf Eval.3.gz Tcl_VarEval.3.gz
    ln -sf Eval.3.gz Tcl_VarEvalVA.3.gz
fi
if test -r Exit.3.gz; then
    rm -f Tcl_Exit.3.gz
    rm -f Tcl_Finalize.3.gz
    rm -f Tcl_CreateExitHandler.3.gz
    rm -f Tcl_DeleteExitHandler.3.gz
    rm -f Tcl_ExitThread.3.gz
    rm -f Tcl_FinalizeThread.3.gz
    rm -f Tcl_CreateThreadExitHandler.3.gz
    rm -f Tcl_DeleteThreadExitHandler.3.gz
    ln -sf Exit.3.gz Tcl_Exit.3.gz
    ln -sf Exit.3.gz Tcl_Finalize.3.gz
    ln -sf Exit.3.gz Tcl_CreateExitHandler.3.gz
    ln -sf Exit.3.gz Tcl_DeleteExitHandler.3.gz
    ln -sf Exit.3.gz Tcl_ExitThread.3.gz
    ln -sf Exit.3.gz Tcl_FinalizeThread.3.gz
    ln -sf Exit.3.gz Tcl_CreateThreadExitHandler.3.gz
    ln -sf Exit.3.gz Tcl_DeleteThreadExitHandler.3.gz
fi
if test -r ExprLong.3.gz; then
    rm -f Tcl_ExprLong.3.gz
    rm -f Tcl_ExprDouble.3.gz
    rm -f Tcl_ExprBoolean.3.gz
    rm -f Tcl_ExprString.3.gz
    ln -sf ExprLong.3.gz Tcl_ExprLong.3.gz
    ln -sf ExprLong.3.gz Tcl_ExprDouble.3.gz
    ln -sf ExprLong.3.gz Tcl_ExprBoolean.3.gz
    ln -sf ExprLong.3.gz Tcl_ExprString.3.gz
fi
if test -r ExprLongObj.3.gz; then
    rm -f Tcl_ExprLongObj.3.gz
    rm -f Tcl_ExprDoubleObj.3.gz
    rm -f Tcl_ExprBooleanObj.3.gz
    rm -f Tcl_ExprObj.3.gz
    ln -sf ExprLongObj.3.gz Tcl_ExprLongObj.3.gz
    ln -sf ExprLongObj.3.gz Tcl_ExprDoubleObj.3.gz
    ln -sf ExprLongObj.3.gz Tcl_ExprBooleanObj.3.gz
    ln -sf ExprLongObj.3.gz Tcl_ExprObj.3.gz
fi
if test -r FindExec.3.gz; then
    rm -f Tcl_FindExecutable.3.gz
    rm -f Tcl_GetNameOfExecutable.3.gz
    ln -sf FindExec.3.gz Tcl_FindExecutable.3.gz
    ln -sf FindExec.3.gz Tcl_GetNameOfExecutable.3.gz
fi
if test -r GetCwd.3.gz; then
    rm -f Tcl_GetCwd.3.gz
    rm -f Tcl_Chdir.3.gz
    ln -sf GetCwd.3.gz Tcl_GetCwd.3.gz
    ln -sf GetCwd.3.gz Tcl_Chdir.3.gz
fi
if test -r GetHostName.3.gz; then
    rm -f Tcl_GetHostName.3.gz
    ln -sf GetHostName.3.gz Tcl_GetHostName.3.gz
fi
if test -r GetIndex.3.gz; then
    rm -f Tcl_GetIndexFromObj.3.gz
    rm -f Tcl_GetIndexFromObjStruct.3.gz
    ln -sf GetIndex.3.gz Tcl_GetIndexFromObj.3.gz
    ln -sf GetIndex.3.gz Tcl_GetIndexFromObjStruct.3.gz
fi
if test -r GetInt.3.gz; then
    rm -f Tcl_GetInt.3.gz
    rm -f Tcl_GetDouble.3.gz
    rm -f Tcl_GetBoolean.3.gz
    ln -sf GetInt.3.gz Tcl_GetInt.3.gz
    ln -sf GetInt.3.gz Tcl_GetDouble.3.gz
    ln -sf GetInt.3.gz Tcl_GetBoolean.3.gz
fi
if test -r GetOpnFl.3.gz; then
    rm -f Tcl_GetOpenFile.3.gz
    ln -sf GetOpnFl.3.gz Tcl_GetOpenFile.3.gz
fi
if test -r GetStdChan.3.gz; then
    rm -f Tcl_GetStdChannel.3.gz
    rm -f Tcl_SetStdChannel.3.gz
    ln -sf GetStdChan.3.gz Tcl_GetStdChannel.3.gz
    ln -sf GetStdChan.3.gz Tcl_SetStdChannel.3.gz
fi
if test -r GetVersion.3.gz; then
    rm -f Tcl_GetVersion.3.gz
    ln -sf GetVersion.3.gz Tcl_GetVersion.3.gz
fi
if test -r Hash.3.gz; then
    rm -f Tcl_InitHashTable.3.gz
    rm -f Tcl_DeleteHashTable.3.gz
    rm -f Tcl_CreateHashEntry.3.gz
    rm -f Tcl_DeleteHashEntry.3.gz
    rm -f Tcl_FindHashEntry.3.gz
    rm -f Tcl_GetHashValue.3.gz
    rm -f Tcl_SetHashValue.3.gz
    rm -f Tcl_GetHashKey.3.gz
    rm -f Tcl_FirstHashEntry.3.gz
    rm -f Tcl_NextHashEntry.3.gz
    rm -f Tcl_HashStats.3.gz
    ln -sf Hash.3.gz Tcl_InitHashTable.3.gz
    ln -sf Hash.3.gz Tcl_DeleteHashTable.3.gz
    ln -sf Hash.3.gz Tcl_CreateHashEntry.3.gz
    ln -sf Hash.3.gz Tcl_DeleteHashEntry.3.gz
    ln -sf Hash.3.gz Tcl_FindHashEntry.3.gz
    ln -sf Hash.3.gz Tcl_GetHashValue.3.gz
    ln -sf Hash.3.gz Tcl_SetHashValue.3.gz
    ln -sf Hash.3.gz Tcl_GetHashKey.3.gz
    ln -sf Hash.3.gz Tcl_FirstHashEntry.3.gz
    ln -sf Hash.3.gz Tcl_NextHashEntry.3.gz
    ln -sf Hash.3.gz Tcl_HashStats.3.gz
fi
if test -r Init.3.gz; then
    rm -f Tcl_Init.3.gz
    ln -sf Init.3.gz Tcl_Init.3.gz
fi
if test -r InitStubs.3.gz; then
    rm -f Tcl_InitStubs.3.gz
    ln -sf InitStubs.3.gz Tcl_InitStubs.3.gz
fi
if test -r IntObj.3.gz; then
    rm -f Tcl_NewIntObj.3.gz
    rm -f Tcl_NewLongObj.3.gz
    rm -f Tcl_SetIntObj.3.gz
    rm -f Tcl_SetLongObj.3.gz
    rm -f Tcl_GetIntFromObj.3.gz
    rm -f Tcl_GetLongFromObj.3.gz
    ln -sf IntObj.3.gz Tcl_NewIntObj.3.gz
    ln -sf IntObj.3.gz Tcl_NewLongObj.3.gz
    ln -sf IntObj.3.gz Tcl_SetIntObj.3.gz
    ln -sf IntObj.3.gz Tcl_SetLongObj.3.gz
    ln -sf IntObj.3.gz Tcl_GetIntFromObj.3.gz
    ln -sf IntObj.3.gz Tcl_GetLongFromObj.3.gz
fi
if test -r Interp.3.gz; then
    rm -f Tcl_Interp.3.gz
    ln -sf Interp.3.gz Tcl_Interp.3.gz
fi
if test -r LinkVar.3.gz; then
    rm -f Tcl_LinkVar.3.gz
    rm -f Tcl_UnlinkVar.3.gz
    rm -f Tcl_UpdateLinkedVar.3.gz
    ln -sf LinkVar.3.gz Tcl_LinkVar.3.gz
    ln -sf LinkVar.3.gz Tcl_UnlinkVar.3.gz
    ln -sf LinkVar.3.gz Tcl_UpdateLinkedVar.3.gz
fi
if test -r ListObj.3.gz; then
    rm -f Tcl_ListObjAppendList.3.gz
    rm -f Tcl_ListObjAppendElement.3.gz
    rm -f Tcl_NewListObj.3.gz
    rm -f Tcl_SetListObj.3.gz
    rm -f Tcl_ListObjGetElements.3.gz
    rm -f Tcl_ListObjLength.3.gz
    rm -f Tcl_ListObjIndex.3.gz
    rm -f Tcl_ListObjReplace.3.gz
    ln -sf ListObj.3.gz Tcl_ListObjAppendList.3.gz
    ln -sf ListObj.3.gz Tcl_ListObjAppendElement.3.gz
    ln -sf ListObj.3.gz Tcl_NewListObj.3.gz
    ln -sf ListObj.3.gz Tcl_SetListObj.3.gz
    ln -sf ListObj.3.gz Tcl_ListObjGetElements.3.gz
    ln -sf ListObj.3.gz Tcl_ListObjLength.3.gz
    ln -sf ListObj.3.gz Tcl_ListObjIndex.3.gz
    ln -sf ListObj.3.gz Tcl_ListObjReplace.3.gz
fi
if test -r Notifier.3.gz; then
    rm -f Tcl_CreateEventSource.3.gz
    rm -f Tcl_DeleteEventSource.3.gz
    rm -f Tcl_SetMaxBlockTime.3.gz
    rm -f Tcl_QueueEvent.3.gz
    rm -f Tcl_ThreadQueueEvent.3.gz
    rm -f Tcl_ThreadAlert.3.gz
    rm -f Tcl_GetCurrentThread.3.gz
    rm -f Tcl_DeleteEvents.3.gz
    rm -f Tcl_InitNotifier.3.gz
    rm -f Tcl_FinalizeNotifier.3.gz
    rm -f Tcl_WaitForEvent.3.gz
    rm -f Tcl_AlertNotifier.3.gz
    rm -f Tcl_SetTimer.3.gz
    rm -f Tcl_ServiceAll.3.gz
    rm -f Tcl_ServiceEvent.3.gz
    rm -f Tcl_GetServiceMode.3.gz
    rm -f Tcl_SetServiceMode.3.gz
    ln -sf Notifier.3.gz Tcl_CreateEventSource.3.gz
    ln -sf Notifier.3.gz Tcl_DeleteEventSource.3.gz
    ln -sf Notifier.3.gz Tcl_SetMaxBlockTime.3.gz
    ln -sf Notifier.3.gz Tcl_QueueEvent.3.gz
    ln -sf Notifier.3.gz Tcl_ThreadQueueEvent.3.gz
    ln -sf Notifier.3.gz Tcl_ThreadAlert.3.gz
    ln -sf Notifier.3.gz Tcl_GetCurrentThread.3.gz
    ln -sf Notifier.3.gz Tcl_DeleteEvents.3.gz
    ln -sf Notifier.3.gz Tcl_InitNotifier.3.gz
    ln -sf Notifier.3.gz Tcl_FinalizeNotifier.3.gz
    ln -sf Notifier.3.gz Tcl_WaitForEvent.3.gz
    ln -sf Notifier.3.gz Tcl_AlertNotifier.3.gz
    ln -sf Notifier.3.gz Tcl_SetTimer.3.gz
    ln -sf Notifier.3.gz Tcl_ServiceAll.3.gz
    ln -sf Notifier.3.gz Tcl_ServiceEvent.3.gz
    ln -sf Notifier.3.gz Tcl_GetServiceMode.3.gz
    ln -sf Notifier.3.gz Tcl_SetServiceMode.3.gz
fi
if test -r Object.3.gz; then
    rm -f Tcl_NewObj.3.gz
    rm -f Tcl_DuplicateObj.3.gz
    rm -f Tcl_IncrRefCount.3.gz
    rm -f Tcl_DecrRefCount.3.gz
    rm -f Tcl_IsShared.3.gz
    rm -f Tcl_InvalidateStringRep.3.gz
    ln -sf Object.3.gz Tcl_NewObj.3.gz
    ln -sf Object.3.gz Tcl_DuplicateObj.3.gz
    ln -sf Object.3.gz Tcl_IncrRefCount.3.gz
    ln -sf Object.3.gz Tcl_DecrRefCount.3.gz
    ln -sf Object.3.gz Tcl_IsShared.3.gz
    ln -sf Object.3.gz Tcl_InvalidateStringRep.3.gz
fi
if test -r ObjectType.3.gz; then
    rm -f Tcl_RegisterObjType.3.gz
    rm -f Tcl_GetObjType.3.gz
    rm -f Tcl_AppendAllObjTypes.3.gz
    rm -f Tcl_ConvertToType.3.gz
    ln -sf ObjectType.3.gz Tcl_RegisterObjType.3.gz
    ln -sf ObjectType.3.gz Tcl_GetObjType.3.gz
    ln -sf ObjectType.3.gz Tcl_AppendAllObjTypes.3.gz
    ln -sf ObjectType.3.gz Tcl_ConvertToType.3.gz
fi
if test -r OpenFileChnl.3.gz; then
    rm -f Tcl_OpenFileChannel.3.gz
    rm -f Tcl_OpenCommandChannel.3.gz
    rm -f Tcl_MakeFileChannel.3.gz
    rm -f Tcl_GetChannel.3.gz
    rm -f Tcl_GetChannelNames.3.gz
    rm -f Tcl_GetChannelNamesEx.3.gz
    rm -f Tcl_RegisterChannel.3.gz
    rm -f Tcl_UnregisterChannel.3.gz
    rm -f Tcl_Close.3.gz
    rm -f Tcl_ReadChars.3.gz
    rm -f Tcl_Read.3.gz
    rm -f Tcl_GetsObj.3.gz
    rm -f Tcl_Gets.3.gz
    rm -f Tcl_WriteObj.3.gz
    rm -f Tcl_WriteChars.3.gz
    rm -f Tcl_Write.3.gz
    rm -f Tcl_Flush.3.gz
    rm -f Tcl_Seek.3.gz
    rm -f Tcl_Tell.3.gz
    rm -f Tcl_GetChannelOption.3.gz
    rm -f Tcl_SetChannelOption.3.gz
    rm -f Tcl_Eof.3.gz
    rm -f Tcl_InputBlocked.3.gz
    rm -f Tcl_InputBuffered.3.gz
    rm -f Tcl_Ungets.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_OpenFileChannel.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_OpenCommandChannel.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_MakeFileChannel.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_GetChannel.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_GetChannelNames.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_GetChannelNamesEx.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_RegisterChannel.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_UnregisterChannel.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Close.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_ReadChars.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Read.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_GetsObj.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Gets.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_WriteObj.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_WriteChars.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Write.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Flush.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Seek.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Tell.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_GetChannelOption.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_SetChannelOption.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Eof.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_InputBlocked.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_InputBuffered.3.gz
    ln -sf OpenFileChnl.3.gz Tcl_Ungets.3.gz
fi
if test -r OpenTcp.3.gz; then
    rm -f Tcl_OpenTcpClient.3.gz
    rm -f Tcl_MakeTcpClientChannel.3.gz
    rm -f Tcl_OpenTcpServer.3.gz
    ln -sf OpenTcp.3.gz Tcl_OpenTcpClient.3.gz
    ln -sf OpenTcp.3.gz Tcl_MakeTcpClientChannel.3.gz
    ln -sf OpenTcp.3.gz Tcl_OpenTcpServer.3.gz
fi
if test -r ParseCmd.3.gz; then
    rm -f Tcl_ParseCommand.3.gz
    rm -f Tcl_ParseExpr.3.gz
    rm -f Tcl_ParseBraces.3.gz
    rm -f Tcl_ParseQuotedString.3.gz
    rm -f Tcl_ParseVarName.3.gz
    rm -f Tcl_ParseVar.3.gz
    rm -f Tcl_FreeParse.3.gz
    rm -f Tcl_EvalTokens.3.gz
    ln -sf ParseCmd.3.gz Tcl_ParseCommand.3.gz
    ln -sf ParseCmd.3.gz Tcl_ParseExpr.3.gz
    ln -sf ParseCmd.3.gz Tcl_ParseBraces.3.gz
    ln -sf ParseCmd.3.gz Tcl_ParseQuotedString.3.gz
    ln -sf ParseCmd.3.gz Tcl_ParseVarName.3.gz
    ln -sf ParseCmd.3.gz Tcl_ParseVar.3.gz
    ln -sf ParseCmd.3.gz Tcl_FreeParse.3.gz
    ln -sf ParseCmd.3.gz Tcl_EvalTokens.3.gz
fi
if test -r PkgRequire.3.gz; then
    rm -f Tcl_PkgRequire.3.gz
    rm -f Tcl_PkgRequireEx.3.gz
    rm -f Tcl_PkgPresent.3.gz
    rm -f Tcl_PkgPresentEx.3.gz
    rm -f Tcl_PkgProvide.3.gz
    rm -f Tcl_PkgProvideEx.3.gz
    ln -sf PkgRequire.3.gz Tcl_PkgRequire.3.gz
    ln -sf PkgRequire.3.gz Tcl_PkgRequireEx.3.gz
    ln -sf PkgRequire.3.gz Tcl_PkgPresent.3.gz
    ln -sf PkgRequire.3.gz Tcl_PkgPresentEx.3.gz
    ln -sf PkgRequire.3.gz Tcl_PkgProvide.3.gz
    ln -sf PkgRequire.3.gz Tcl_PkgProvideEx.3.gz
fi
if test -r Preserve.3.gz; then
    rm -f Tcl_Preserve.3.gz
    rm -f Tcl_Release.3.gz
    rm -f Tcl_EventuallyFree.3.gz
    ln -sf Preserve.3.gz Tcl_Preserve.3.gz
    ln -sf Preserve.3.gz Tcl_Release.3.gz
    ln -sf Preserve.3.gz Tcl_EventuallyFree.3.gz
fi
if test -r PrintDbl.3.gz; then
    rm -f Tcl_PrintDouble.3.gz
    ln -sf PrintDbl.3.gz Tcl_PrintDouble.3.gz
fi
if test -r RecEvalObj.3.gz; then
    rm -f Tcl_RecordAndEvalObj.3.gz
    ln -sf RecEvalObj.3.gz Tcl_RecordAndEvalObj.3.gz
fi
if test -r RecordEval.3.gz; then
    rm -f Tcl_RecordAndEval.3.gz
    ln -sf RecordEval.3.gz Tcl_RecordAndEval.3.gz
fi
if test -r RegExp.3.gz; then
    rm -f Tcl_RegExpMatch.3.gz
    rm -f Tcl_RegExpCompile.3.gz
    rm -f Tcl_RegExpExec.3.gz
    rm -f Tcl_RegExpRange.3.gz
    rm -f Tcl_GetRegExpFromObj.3.gz
    rm -f Tcl_RegExpMatchObj.3.gz
    rm -f Tcl_RegExpExecObj.3.gz
    rm -f Tcl_RegExpGetInfo.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpMatch.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpCompile.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpExec.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpRange.3.gz
    ln -sf RegExp.3.gz Tcl_GetRegExpFromObj.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpMatchObj.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpExecObj.3.gz
    ln -sf RegExp.3.gz Tcl_RegExpGetInfo.3.gz
fi
if test -r SaveResult.3.gz; then
    rm -f Tcl_SaveResult.3.gz
    rm -f Tcl_RestoreResult.3.gz
    rm -f Tcl_DiscardResult.3.gz
    ln -sf SaveResult.3.gz Tcl_SaveResult.3.gz
    ln -sf SaveResult.3.gz Tcl_RestoreResult.3.gz
    ln -sf SaveResult.3.gz Tcl_DiscardResult.3.gz
fi
if test -r SetErrno.3.gz; then
    rm -f Tcl_SetErrno.3.gz
    rm -f Tcl_GetErrno.3.gz
    rm -f Tcl_ErrnoId.3.gz
    rm -f Tcl_ErrnoMsg.3.gz
    ln -sf SetErrno.3.gz Tcl_SetErrno.3.gz
    ln -sf SetErrno.3.gz Tcl_GetErrno.3.gz
    ln -sf SetErrno.3.gz Tcl_ErrnoId.3.gz
    ln -sf SetErrno.3.gz Tcl_ErrnoMsg.3.gz
fi
if test -r SetRecLmt.3.gz; then
    rm -f Tcl_SetRecursionLimit.3.gz
    ln -sf SetRecLmt.3.gz Tcl_SetRecursionLimit.3.gz
fi
if test -r SetResult.3.gz; then
    rm -f Tcl_SetObjResult.3.gz
    rm -f Tcl_GetObjResult.3.gz
    rm -f Tcl_SetResult.3.gz
    rm -f Tcl_GetStringResult.3.gz
    rm -f Tcl_AppendResult.3.gz
    rm -f Tcl_AppendResultVA.3.gz
    rm -f Tcl_AppendElement.3.gz
    rm -f Tcl_ResetResult.3.gz
    rm -f Tcl_FreeResult.3.gz
    ln -sf SetResult.3.gz Tcl_SetObjResult.3.gz
    ln -sf SetResult.3.gz Tcl_GetObjResult.3.gz
    ln -sf SetResult.3.gz Tcl_SetResult.3.gz
    ln -sf SetResult.3.gz Tcl_GetStringResult.3.gz
    ln -sf SetResult.3.gz Tcl_AppendResult.3.gz
    ln -sf SetResult.3.gz Tcl_AppendResultVA.3.gz
    ln -sf SetResult.3.gz Tcl_AppendElement.3.gz
    ln -sf SetResult.3.gz Tcl_ResetResult.3.gz
    ln -sf SetResult.3.gz Tcl_FreeResult.3.gz
fi
if test -r SetVar.3.gz; then
    rm -f Tcl_SetVar2Ex.3.gz
    rm -f Tcl_SetVar.3.gz
    rm -f Tcl_SetVar2.3.gz
    rm -f Tcl_ObjSetVar2.3.gz
    rm -f Tcl_GetVar2Ex.3.gz
    rm -f Tcl_GetVar.3.gz
    rm -f Tcl_GetVar2.3.gz
    rm -f Tcl_ObjGetVar2.3.gz
    rm -f Tcl_UnsetVar.3.gz
    rm -f Tcl_UnsetVar2.3.gz
    ln -sf SetVar.3.gz Tcl_SetVar2Ex.3.gz
    ln -sf SetVar.3.gz Tcl_SetVar.3.gz
    ln -sf SetVar.3.gz Tcl_SetVar2.3.gz
    ln -sf SetVar.3.gz Tcl_ObjSetVar2.3.gz
    ln -sf SetVar.3.gz Tcl_GetVar2Ex.3.gz
    ln -sf SetVar.3.gz Tcl_GetVar.3.gz
    ln -sf SetVar.3.gz Tcl_GetVar2.3.gz
    ln -sf SetVar.3.gz Tcl_ObjGetVar2.3.gz
    ln -sf SetVar.3.gz Tcl_UnsetVar.3.gz
    ln -sf SetVar.3.gz Tcl_UnsetVar2.3.gz
fi
if test -r Sleep.3.gz; then
    rm -f Tcl_Sleep.3.gz
    ln -sf Sleep.3.gz Tcl_Sleep.3.gz
fi
if test -r SourceRCFile.3.gz; then
    rm -f Tcl_SourceRCFile.3.gz
    ln -sf SourceRCFile.3.gz Tcl_SourceRCFile.3.gz
fi
if test -r SplitList.3.gz; then
    rm -f Tcl_SplitList.3.gz
    rm -f Tcl_Merge.3.gz
    rm -f Tcl_ScanElement.3.gz
    rm -f Tcl_ConvertElement.3.gz
    rm -f Tcl_ScanCountedElement.3.gz
    rm -f Tcl_ConvertCountedElement.3.gz
    ln -sf SplitList.3.gz Tcl_SplitList.3.gz
    ln -sf SplitList.3.gz Tcl_Merge.3.gz
    ln -sf SplitList.3.gz Tcl_ScanElement.3.gz
    ln -sf SplitList.3.gz Tcl_ConvertElement.3.gz
    ln -sf SplitList.3.gz Tcl_ScanCountedElement.3.gz
    ln -sf SplitList.3.gz Tcl_ConvertCountedElement.3.gz
fi
if test -r SplitPath.3.gz; then
    rm -f Tcl_SplitPath.3.gz
    rm -f Tcl_JoinPath.3.gz
    rm -f Tcl_GetPathType.3.gz
    ln -sf SplitPath.3.gz Tcl_SplitPath.3.gz
    ln -sf SplitPath.3.gz Tcl_JoinPath.3.gz
    ln -sf SplitPath.3.gz Tcl_GetPathType.3.gz
fi
if test -r StaticPkg.3.gz; then
    rm -f Tcl_StaticPackage.3.gz
    ln -sf StaticPkg.3.gz Tcl_StaticPackage.3.gz
fi
if test -r StrMatch.3.gz; then
    rm -f Tcl_StringMatch.3.gz
    rm -f Tcl_StringCaseMatch.3.gz
    ln -sf StrMatch.3.gz Tcl_StringMatch.3.gz
    ln -sf StrMatch.3.gz Tcl_StringCaseMatch.3.gz
fi
if test -r StringObj.3.gz; then
    rm -f Tcl_NewStringObj.3.gz
    rm -f Tcl_NewUnicodeObj.3.gz
    rm -f Tcl_SetStringObj.3.gz
    rm -f Tcl_SetUnicodeObj.3.gz
    rm -f Tcl_GetStringFromObj.3.gz
    rm -f Tcl_GetString.3.gz
    rm -f Tcl_GetUnicode.3.gz
    rm -f Tcl_GetUniChar.3.gz
    rm -f Tcl_GetCharLength.3.gz
    rm -f Tcl_GetRange.3.gz
    rm -f Tcl_AppendToObj.3.gz
    rm -f Tcl_AppendUnicodeToObj.3.gz
    rm -f Tcl_AppendStringsToObj.3.gz
    rm -f Tcl_AppendStringsToObjVA.3.gz
    rm -f Tcl_AppendObjToObj.3.gz
    rm -f Tcl_SetObjLength.3.gz
    rm -f Tcl_ConcatObj.3.gz
    ln -sf StringObj.3.gz Tcl_NewStringObj.3.gz
    ln -sf StringObj.3.gz Tcl_NewUnicodeObj.3.gz
    ln -sf StringObj.3.gz Tcl_SetStringObj.3.gz
    ln -sf StringObj.3.gz Tcl_SetUnicodeObj.3.gz
    ln -sf StringObj.3.gz Tcl_GetStringFromObj.3.gz
    ln -sf StringObj.3.gz Tcl_GetString.3.gz
    ln -sf StringObj.3.gz Tcl_GetUnicode.3.gz
    ln -sf StringObj.3.gz Tcl_GetUniChar.3.gz
    ln -sf StringObj.3.gz Tcl_GetCharLength.3.gz
    ln -sf StringObj.3.gz Tcl_GetRange.3.gz
    ln -sf StringObj.3.gz Tcl_AppendToObj.3.gz
    ln -sf StringObj.3.gz Tcl_AppendUnicodeToObj.3.gz
    ln -sf StringObj.3.gz Tcl_AppendStringsToObj.3.gz
    ln -sf StringObj.3.gz Tcl_AppendStringsToObjVA.3.gz
    ln -sf StringObj.3.gz Tcl_AppendObjToObj.3.gz
    ln -sf StringObj.3.gz Tcl_SetObjLength.3.gz
    ln -sf StringObj.3.gz Tcl_ConcatObj.3.gz
fi
if test -r Thread.3.gz; then
    rm -f Tcl_ConditionNotify.3.gz
    rm -f Tcl_ConditionWait.3.gz
    rm -f Tcl_ConditionFinalize.3.gz
    rm -f Tcl_GetThreadData.3.gz
    rm -f Tcl_MutexLock.3.gz
    rm -f Tcl_MutexUnlock.3.gz
    rm -f Tcl_MutexFinalize.3.gz
    rm -f Tcl_CreateThread.3.gz
    ln -sf Thread.3.gz Tcl_ConditionNotify.3.gz
    ln -sf Thread.3.gz Tcl_ConditionWait.3.gz
    ln -sf Thread.3.gz Tcl_ConditionFinalize.3.gz
    ln -sf Thread.3.gz Tcl_GetThreadData.3.gz
    ln -sf Thread.3.gz Tcl_MutexLock.3.gz
    ln -sf Thread.3.gz Tcl_MutexUnlock.3.gz
    ln -sf Thread.3.gz Tcl_MutexFinalize.3.gz
    ln -sf Thread.3.gz Tcl_CreateThread.3.gz
fi
if test -r ToUpper.3.gz; then
    rm -f Tcl_UniCharToUpper.3.gz
    rm -f Tcl_UniCharToLower.3.gz
    rm -f Tcl_UniCharToTitle.3.gz
    rm -f Tcl_UtfToUpper.3.gz
    rm -f Tcl_UtfToLower.3.gz
    rm -f Tcl_UtfToTitle.3.gz
    ln -sf ToUpper.3.gz Tcl_UniCharToUpper.3.gz
    ln -sf ToUpper.3.gz Tcl_UniCharToLower.3.gz
    ln -sf ToUpper.3.gz Tcl_UniCharToTitle.3.gz
    ln -sf ToUpper.3.gz Tcl_UtfToUpper.3.gz
    ln -sf ToUpper.3.gz Tcl_UtfToLower.3.gz
    ln -sf ToUpper.3.gz Tcl_UtfToTitle.3.gz
fi
if test -r TraceVar.3.gz; then
    rm -f Tcl_TraceVar.3.gz
    rm -f Tcl_TraceVar2.3.gz
    rm -f Tcl_UntraceVar.3.gz
    rm -f Tcl_UntraceVar2.3.gz
    rm -f Tcl_VarTraceInfo.3.gz
    rm -f Tcl_VarTraceInfo2.3.gz
    ln -sf TraceVar.3.gz Tcl_TraceVar.3.gz
    ln -sf TraceVar.3.gz Tcl_TraceVar2.3.gz
    ln -sf TraceVar.3.gz Tcl_UntraceVar.3.gz
    ln -sf TraceVar.3.gz Tcl_UntraceVar2.3.gz
    ln -sf TraceVar.3.gz Tcl_VarTraceInfo.3.gz
    ln -sf TraceVar.3.gz Tcl_VarTraceInfo2.3.gz
fi
if test -r Translate.3.gz; then
    rm -f Tcl_TranslateFileName.3.gz
    ln -sf Translate.3.gz Tcl_TranslateFileName.3.gz
fi
if test -r UpVar.3.gz; then
    rm -f Tcl_UpVar.3.gz
    rm -f Tcl_UpVar2.3.gz
    ln -sf UpVar.3.gz Tcl_UpVar.3.gz
    ln -sf UpVar.3.gz Tcl_UpVar2.3.gz
fi
if test -r Utf.3.gz; then
    rm -f Tcl_UniChar.3.gz
    rm -f Tcl_UniCharToUtf.3.gz
    rm -f Tcl_UtfToUniChar.3.gz
    rm -f Tcl_UniCharToUtfDString.3.gz
    rm -f Tcl_UtfToUniCharDString.3.gz
    rm -f Tcl_UniCharLen.3.gz
    rm -f Tcl_UniCharNcmp.3.gz
    rm -f Tcl_UtfCharComplete.3.gz
    rm -f Tcl_NumUtfChars.3.gz
    rm -f Tcl_UtfFindFirst.3.gz
    rm -f Tcl_UtfFindLast.3.gz
    rm -f Tcl_UtfNext.3.gz
    rm -f Tcl_UtfPrev.3.gz
    rm -f Tcl_UniCharAtIndex.3.gz
    rm -f Tcl_UtfAtIndex.3.gz
    rm -f Tcl_UtfBackslash.3.gz
    ln -sf Utf.3.gz Tcl_UniChar.3.gz
    ln -sf Utf.3.gz Tcl_UniCharToUtf.3.gz
    ln -sf Utf.3.gz Tcl_UtfToUniChar.3.gz
    ln -sf Utf.3.gz Tcl_UniCharToUtfDString.3.gz
    ln -sf Utf.3.gz Tcl_UtfToUniCharDString.3.gz
    ln -sf Utf.3.gz Tcl_UniCharLen.3.gz
    ln -sf Utf.3.gz Tcl_UniCharNcmp.3.gz
    ln -sf Utf.3.gz Tcl_UtfCharComplete.3.gz
    ln -sf Utf.3.gz Tcl_NumUtfChars.3.gz
    ln -sf Utf.3.gz Tcl_UtfFindFirst.3.gz
    ln -sf Utf.3.gz Tcl_UtfFindLast.3.gz
    ln -sf Utf.3.gz Tcl_UtfNext.3.gz
    ln -sf Utf.3.gz Tcl_UtfPrev.3.gz
    ln -sf Utf.3.gz Tcl_UniCharAtIndex.3.gz
    ln -sf Utf.3.gz Tcl_UtfAtIndex.3.gz
    ln -sf Utf.3.gz Tcl_UtfBackslash.3.gz
fi
if test -r WrongNumArgs.3.gz; then
    rm -f Tcl_WrongNumArgs.3.gz
    ln -sf WrongNumArgs.3.gz Tcl_WrongNumArgs.3.gz
fi
if test -r http.n.gz; then
    rm -f Http.n.gz
    ln -sf http.n.gz Http.n.gz
fi
if test -r library.n.gz; then
    rm -f auto_execok.n.gz
    rm -f auto_import.n.gz
    rm -f auto_load.n.gz
    rm -f auto_mkindex.n.gz
    rm -f auto_mkindex_old.n.gz
    rm -f auto_qualify.n.gz
    rm -f auto_reset.n.gz
    rm -f tcl_findLibrary.n.gz
    rm -f parray.n.gz
    rm -f tcl_endOfWord.n.gz
    rm -f tcl_startOfNextWord.n.gz
    rm -f tcl_startOfPreviousWord.n.gz
    rm -f tcl_wordBreakAfter.n.gz
    rm -f tcl_wordBreakBefore.n.gz
    ln -sf library.n.gz auto_execok.n.gz
    ln -sf library.n.gz auto_import.n.gz
    ln -sf library.n.gz auto_load.n.gz
    ln -sf library.n.gz auto_mkindex.n.gz
    ln -sf library.n.gz auto_mkindex_old.n.gz
    ln -sf library.n.gz auto_qualify.n.gz
    ln -sf library.n.gz auto_reset.n.gz
    ln -sf library.n.gz tcl_findLibrary.n.gz
    ln -sf library.n.gz parray.n.gz
    ln -sf library.n.gz tcl_endOfWord.n.gz
    ln -sf library.n.gz tcl_startOfNextWord.n.gz
    ln -sf library.n.gz tcl_startOfPreviousWord.n.gz
    ln -sf library.n.gz tcl_wordBreakAfter.n.gz
    ln -sf library.n.gz tcl_wordBreakBefore.n.gz
fi
if test -r packagens.n.gz; then
    rm -f pkg::create.n.gz
    ln -sf packagens.n.gz pkg::create.n.gz
fi
if test -r pkgMkIndex.n.gz; then
    rm -f pkg_mkIndex.n.gz
    ln -sf pkgMkIndex.n.gz pkg_mkIndex.n.gz
fi
if test -r safe.n.gz; then
    rm -f SafeBase.n.gz
    ln -sf safe.n.gz SafeBase.n.gz
fi
if test -r tcltest.n.gz; then
    rm -f Tcltest.n.gz
    ln -sf tcltest.n.gz Tcltest.n.gz
fi
exit 0
