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

if test -r 3DBorder.3.gz; then
    rm -f Tk_Alloc3DBorderFromObj.3.gz
    rm -f Tk_Get3DBorder.3.gz
    rm -f Tk_Get3DBorderFromObj.3.gz
    rm -f Tk_Draw3DRectangle.3.gz
    rm -f Tk_Fill3DRectangle.3.gz
    rm -f Tk_Draw3DPolygon.3.gz
    rm -f Tk_Fill3DPolygon.3.gz
    rm -f Tk_3DVerticalBevel.3.gz
    rm -f Tk_3DHorizontalBevel.3.gz
    rm -f Tk_SetBackgroundFromBorder.3.gz
    rm -f Tk_NameOf3DBorder.3.gz
    rm -f Tk_3DBorderColor.3.gz
    rm -f Tk_3DBorderGC.3.gz
    rm -f Tk_Free3DBorderFromObj.3.gz
    rm -f Tk_Free3DBorder.3.gz
    ln -sf 3DBorder.3.gz Tk_Alloc3DBorderFromObj.3.gz
    ln -sf 3DBorder.3.gz Tk_Get3DBorder.3.gz
    ln -sf 3DBorder.3.gz Tk_Get3DBorderFromObj.3.gz
    ln -sf 3DBorder.3.gz Tk_Draw3DRectangle.3.gz
    ln -sf 3DBorder.3.gz Tk_Fill3DRectangle.3.gz
    ln -sf 3DBorder.3.gz Tk_Draw3DPolygon.3.gz
    ln -sf 3DBorder.3.gz Tk_Fill3DPolygon.3.gz
    ln -sf 3DBorder.3.gz Tk_3DVerticalBevel.3.gz
    ln -sf 3DBorder.3.gz Tk_3DHorizontalBevel.3.gz
    ln -sf 3DBorder.3.gz Tk_SetBackgroundFromBorder.3.gz
    ln -sf 3DBorder.3.gz Tk_NameOf3DBorder.3.gz
    ln -sf 3DBorder.3.gz Tk_3DBorderColor.3.gz
    ln -sf 3DBorder.3.gz Tk_3DBorderGC.3.gz
    ln -sf 3DBorder.3.gz Tk_Free3DBorderFromObj.3.gz
    ln -sf 3DBorder.3.gz Tk_Free3DBorder.3.gz
fi
if test -r AddOption.3.gz; then
    rm -f Tk_AddOption.3.gz
    ln -sf AddOption.3.gz Tk_AddOption.3.gz
fi
if test -r BindTable.3.gz; then
    rm -f Tk_CreateBindingTable.3.gz
    rm -f Tk_DeleteBindingTable.3.gz
    rm -f Tk_CreateBinding.3.gz
    rm -f Tk_DeleteBinding.3.gz
    rm -f Tk_GetBinding.3.gz
    rm -f Tk_GetAllBindings.3.gz
    rm -f Tk_DeleteAllBindings.3.gz
    rm -f Tk_BindEvent.3.gz
    ln -sf BindTable.3.gz Tk_CreateBindingTable.3.gz
    ln -sf BindTable.3.gz Tk_DeleteBindingTable.3.gz
    ln -sf BindTable.3.gz Tk_CreateBinding.3.gz
    ln -sf BindTable.3.gz Tk_DeleteBinding.3.gz
    ln -sf BindTable.3.gz Tk_GetBinding.3.gz
    ln -sf BindTable.3.gz Tk_GetAllBindings.3.gz
    ln -sf BindTable.3.gz Tk_DeleteAllBindings.3.gz
    ln -sf BindTable.3.gz Tk_BindEvent.3.gz
fi
if test -r CanvPsY.3.gz; then
    rm -f Tk_CanvasPsY.3.gz
    rm -f Tk_CanvasPsBitmap.3.gz
    rm -f Tk_CanvasPsColor.3.gz
    rm -f Tk_CanvasPsFont.3.gz
    rm -f Tk_CanvasPsPath.3.gz
    rm -f Tk_CanvasPsStipple.3.gz
    ln -sf CanvPsY.3.gz Tk_CanvasPsY.3.gz
    ln -sf CanvPsY.3.gz Tk_CanvasPsBitmap.3.gz
    ln -sf CanvPsY.3.gz Tk_CanvasPsColor.3.gz
    ln -sf CanvPsY.3.gz Tk_CanvasPsFont.3.gz
    ln -sf CanvPsY.3.gz Tk_CanvasPsPath.3.gz
    ln -sf CanvPsY.3.gz Tk_CanvasPsStipple.3.gz
fi
if test -r CanvTkwin.3.gz; then
    rm -f Tk_CanvasTkwin.3.gz
    rm -f Tk_CanvasGetCoord.3.gz
    rm -f Tk_CanvasDrawableCoords.3.gz
    rm -f Tk_CanvasSetStippleOrigin.3.gz
    rm -f Tk_CanvasWindowCoords.3.gz
    rm -f Tk_CanvasEventuallyRedraw.3.gz
    rm -f Tk_CanvasTagsOption.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasTkwin.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasGetCoord.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasDrawableCoords.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasSetStippleOrigin.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasWindowCoords.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasEventuallyRedraw.3.gz
    ln -sf CanvTkwin.3.gz Tk_CanvasTagsOption.3.gz
fi
if test -r CanvTxtInfo.3.gz; then
    rm -f Tk_CanvasTextInfo.3.gz
    ln -sf CanvTxtInfo.3.gz Tk_CanvasTextInfo.3.gz
fi
if test -r Clipboard.3.gz; then
    rm -f Tk_ClipboardClear.3.gz
    rm -f Tk_ClipboardAppend.3.gz
    ln -sf Clipboard.3.gz Tk_ClipboardClear.3.gz
    ln -sf Clipboard.3.gz Tk_ClipboardAppend.3.gz
fi
if test -r ClrSelect.3.gz; then
    rm -f Tk_ClearSelection.3.gz
    ln -sf ClrSelect.3.gz Tk_ClearSelection.3.gz
fi
if test -r ConfigWidg.3.gz; then
    rm -f Tk_ConfigureWidget.3.gz
    rm -f Tk_Offset.3.gz
    rm -f Tk_ConfigureInfo.3.gz
    rm -f Tk_ConfigureValue.3.gz
    rm -f Tk_FreeOptions.3.gz
    ln -sf ConfigWidg.3.gz Tk_ConfigureWidget.3.gz
    ln -sf ConfigWidg.3.gz Tk_Offset.3.gz
    ln -sf ConfigWidg.3.gz Tk_ConfigureInfo.3.gz
    ln -sf ConfigWidg.3.gz Tk_ConfigureValue.3.gz
    ln -sf ConfigWidg.3.gz Tk_FreeOptions.3.gz
fi
if test -r ConfigWind.3.gz; then
    rm -f Tk_ConfigureWindow.3.gz
    rm -f Tk_MoveWindow.3.gz
    rm -f Tk_ResizeWindow.3.gz
    rm -f Tk_MoveResizeWindow.3.gz
    rm -f Tk_SetWindowBorderWidth.3.gz
    rm -f Tk_ChangeWindowAttributes.3.gz
    rm -f Tk_SetWindowBackground.3.gz
    rm -f Tk_SetWindowBackgroundPixmap.3.gz
    rm -f Tk_SetWindowBorder.3.gz
    rm -f Tk_SetWindowBorderPixmap.3.gz
    rm -f Tk_SetWindowColormap.3.gz
    rm -f Tk_DefineCursor.3.gz
    rm -f Tk_UndefineCursor.3.gz
    ln -sf ConfigWind.3.gz Tk_ConfigureWindow.3.gz
    ln -sf ConfigWind.3.gz Tk_MoveWindow.3.gz
    ln -sf ConfigWind.3.gz Tk_ResizeWindow.3.gz
    ln -sf ConfigWind.3.gz Tk_MoveResizeWindow.3.gz
    ln -sf ConfigWind.3.gz Tk_SetWindowBorderWidth.3.gz
    ln -sf ConfigWind.3.gz Tk_ChangeWindowAttributes.3.gz
    ln -sf ConfigWind.3.gz Tk_SetWindowBackground.3.gz
    ln -sf ConfigWind.3.gz Tk_SetWindowBackgroundPixmap.3.gz
    ln -sf ConfigWind.3.gz Tk_SetWindowBorder.3.gz
    ln -sf ConfigWind.3.gz Tk_SetWindowBorderPixmap.3.gz
    ln -sf ConfigWind.3.gz Tk_SetWindowColormap.3.gz
    ln -sf ConfigWind.3.gz Tk_DefineCursor.3.gz
    ln -sf ConfigWind.3.gz Tk_UndefineCursor.3.gz
fi
if test -r CoordToWin.3.gz; then
    rm -f Tk_CoordsToWindow.3.gz
    ln -sf CoordToWin.3.gz Tk_CoordsToWindow.3.gz
fi
if test -r CrtErrHdlr.3.gz; then
    rm -f Tk_CreateErrorHandler.3.gz
    rm -f Tk_DeleteErrorHandler.3.gz
    ln -sf CrtErrHdlr.3.gz Tk_CreateErrorHandler.3.gz
    ln -sf CrtErrHdlr.3.gz Tk_DeleteErrorHandler.3.gz
fi
if test -r CrtGenHdlr.3.gz; then
    rm -f Tk_CreateGenericHandler.3.gz
    rm -f Tk_DeleteGenericHandler.3.gz
    ln -sf CrtGenHdlr.3.gz Tk_CreateGenericHandler.3.gz
    ln -sf CrtGenHdlr.3.gz Tk_DeleteGenericHandler.3.gz
fi
if test -r CrtImgType.3.gz; then
    rm -f Tk_CreateImageType.3.gz
    rm -f Tk_GetImageMasterData.3.gz
    rm -f Tk_InitImageArgs.3.gz
    ln -sf CrtImgType.3.gz Tk_CreateImageType.3.gz
    ln -sf CrtImgType.3.gz Tk_GetImageMasterData.3.gz
    ln -sf CrtImgType.3.gz Tk_InitImageArgs.3.gz
fi
if test -r CrtItemType.3.gz; then
    rm -f Tk_CreateItemType.3.gz
    rm -f Tk_GetItemTypes.3.gz
    ln -sf CrtItemType.3.gz Tk_CreateItemType.3.gz
    ln -sf CrtItemType.3.gz Tk_GetItemTypes.3.gz
fi
if test -r CrtPhImgFmt.3.gz; then
    rm -f Tk_CreatePhotoImageFormat.3.gz
    ln -sf CrtPhImgFmt.3.gz Tk_CreatePhotoImageFormat.3.gz
fi
if test -r CrtSelHdlr.3.gz; then
    rm -f Tk_CreateSelHandler.3.gz
    rm -f Tk_DeleteSelHandler.3.gz
    ln -sf CrtSelHdlr.3.gz Tk_CreateSelHandler.3.gz
    ln -sf CrtSelHdlr.3.gz Tk_DeleteSelHandler.3.gz
fi
if test -r CrtWindow.3.gz; then
    rm -f Tk_CreateWindow.3.gz
    rm -f Tk_CreateWindowFromPath.3.gz
    rm -f Tk_DestroyWindow.3.gz
    rm -f Tk_MakeWindowExist.3.gz
    ln -sf CrtWindow.3.gz Tk_CreateWindow.3.gz
    ln -sf CrtWindow.3.gz Tk_CreateWindowFromPath.3.gz
    ln -sf CrtWindow.3.gz Tk_DestroyWindow.3.gz
    ln -sf CrtWindow.3.gz Tk_MakeWindowExist.3.gz
fi
if test -r DeleteImg.3.gz; then
    rm -f Tk_DeleteImage.3.gz
    ln -sf DeleteImg.3.gz Tk_DeleteImage.3.gz
fi
if test -r DrawFocHlt.3.gz; then
    rm -f Tk_DrawFocusHighlight.3.gz
    ln -sf DrawFocHlt.3.gz Tk_DrawFocusHighlight.3.gz
fi
if test -r EventHndlr.3.gz; then
    rm -f Tk_CreateEventHandler.3.gz
    rm -f Tk_DeleteEventHandler.3.gz
    ln -sf EventHndlr.3.gz Tk_CreateEventHandler.3.gz
    ln -sf EventHndlr.3.gz Tk_DeleteEventHandler.3.gz
fi
if test -r FindPhoto.3.gz; then
    rm -f Tk_FindPhoto.3.gz
    rm -f Tk_PhotoPutBlock.3.gz
    rm -f Tk_PhotoPutZoomedBlock.3.gz
    rm -f Tk_PhotoGetImage.3.gz
    rm -f Tk_PhotoBlank.3.gz
    rm -f Tk_PhotoExpand.3.gz
    rm -f Tk_PhotoGetSize.3.gz
    rm -f Tk_PhotoSetSize.3.gz
    ln -sf FindPhoto.3.gz Tk_FindPhoto.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoPutBlock.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoPutZoomedBlock.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoGetImage.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoBlank.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoExpand.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoGetSize.3.gz
    ln -sf FindPhoto.3.gz Tk_PhotoSetSize.3.gz
fi
if test -r FontId.3.gz; then
    rm -f Tk_FontId.3.gz
    rm -f Tk_GetFontMetrics.3.gz
    rm -f Tk_PostscriptFontName.3.gz
    ln -sf FontId.3.gz Tk_FontId.3.gz
    ln -sf FontId.3.gz Tk_GetFontMetrics.3.gz
    ln -sf FontId.3.gz Tk_PostscriptFontName.3.gz
fi
if test -r FreeXId.3.gz; then
    rm -f Tk_FreeXId.3.gz
    ln -sf FreeXId.3.gz Tk_FreeXId.3.gz
fi
if test -r GeomReq.3.gz; then
    rm -f Tk_GeometryRequest.3.gz
    rm -f Tk_SetInternalBorder.3.gz
    ln -sf GeomReq.3.gz Tk_GeometryRequest.3.gz
    ln -sf GeomReq.3.gz Tk_SetInternalBorder.3.gz
fi
if test -r GetAnchor.3.gz; then
    rm -f Tk_GetAnchorFromObj.3.gz
    rm -f Tk_GetAnchor.3.gz
    rm -f Tk_NameOfAnchor.3.gz
    ln -sf GetAnchor.3.gz Tk_GetAnchorFromObj.3.gz
    ln -sf GetAnchor.3.gz Tk_GetAnchor.3.gz
    ln -sf GetAnchor.3.gz Tk_NameOfAnchor.3.gz
fi
if test -r GetBitmap.3.gz; then
    rm -f Tk_AllocBitmapFromObj.3.gz
    rm -f Tk_GetBitmap.3.gz
    rm -f Tk_GetBitmapFromObj.3.gz
    rm -f Tk_DefineBitmap.3.gz
    rm -f Tk_NameOfBitmap.3.gz
    rm -f Tk_SizeOfBitmap.3.gz
    rm -f Tk_FreeBitmapFromObj.3.gz
    rm -f Tk_FreeBitmap.3.gz
    rm -f Tk_GetBitmapFromData.3.gz
    ln -sf GetBitmap.3.gz Tk_AllocBitmapFromObj.3.gz
    ln -sf GetBitmap.3.gz Tk_GetBitmap.3.gz
    ln -sf GetBitmap.3.gz Tk_GetBitmapFromObj.3.gz
    ln -sf GetBitmap.3.gz Tk_DefineBitmap.3.gz
    ln -sf GetBitmap.3.gz Tk_NameOfBitmap.3.gz
    ln -sf GetBitmap.3.gz Tk_SizeOfBitmap.3.gz
    ln -sf GetBitmap.3.gz Tk_FreeBitmapFromObj.3.gz
    ln -sf GetBitmap.3.gz Tk_FreeBitmap.3.gz
    ln -sf GetBitmap.3.gz Tk_GetBitmapFromData.3.gz
fi
if test -r GetCapStyl.3.gz; then
    rm -f Tk_GetCapStyle.3.gz
    rm -f Tk_NameOfCapStyle.3.gz
    ln -sf GetCapStyl.3.gz Tk_GetCapStyle.3.gz
    ln -sf GetCapStyl.3.gz Tk_NameOfCapStyle.3.gz
fi
if test -r GetClrmap.3.gz; then
    rm -f Tk_GetColormap.3.gz
    rm -f Tk_FreeColormap.3.gz
    ln -sf GetClrmap.3.gz Tk_GetColormap.3.gz
    ln -sf GetClrmap.3.gz Tk_FreeColormap.3.gz
fi
if test -r GetColor.3.gz; then
    rm -f Tk_AllocColorFromObj.3.gz
    rm -f Tk_GetColor.3.gz
    rm -f Tk_GetColorFromObj.3.gz
    rm -f Tk_GetColorByValue.3.gz
    rm -f Tk_NameOfColor.3.gz
    rm -f Tk_FreeColorFromObj.3.gz
    rm -f Tk_FreeColor.3.gz
    ln -sf GetColor.3.gz Tk_AllocColorFromObj.3.gz
    ln -sf GetColor.3.gz Tk_GetColor.3.gz
    ln -sf GetColor.3.gz Tk_GetColorFromObj.3.gz
    ln -sf GetColor.3.gz Tk_GetColorByValue.3.gz
    ln -sf GetColor.3.gz Tk_NameOfColor.3.gz
    ln -sf GetColor.3.gz Tk_FreeColorFromObj.3.gz
    ln -sf GetColor.3.gz Tk_FreeColor.3.gz
fi
if test -r GetCursor.3.gz; then
    rm -f Tk_AllocCursorFromObj.3.gz
    rm -f Tk_GetCursor.3.gz
    rm -f Tk_GetCursorFromObj.3.gz
    rm -f Tk_GetCursorFromData.3.gz
    rm -f Tk_NameOfCursor.3.gz
    rm -f Tk_FreeCursorFromObj.3.gz
    rm -f Tk_FreeCursor.3.gz
    ln -sf GetCursor.3.gz Tk_AllocCursorFromObj.3.gz
    ln -sf GetCursor.3.gz Tk_GetCursor.3.gz
    ln -sf GetCursor.3.gz Tk_GetCursorFromObj.3.gz
    ln -sf GetCursor.3.gz Tk_GetCursorFromData.3.gz
    ln -sf GetCursor.3.gz Tk_NameOfCursor.3.gz
    ln -sf GetCursor.3.gz Tk_FreeCursorFromObj.3.gz
    ln -sf GetCursor.3.gz Tk_FreeCursor.3.gz
fi
if test -r GetDash.3.gz; then
    rm -f Tk_GetDash.3.gz
    ln -sf GetDash.3.gz Tk_GetDash.3.gz
fi
if test -r GetFont.3.gz; then
    rm -f Tk_AllocFontFromObj.3.gz
    rm -f Tk_GetFont.3.gz
    rm -f Tk_GetFontFromObj.3.gz
    rm -f Tk_NameOfFont.3.gz
    rm -f Tk_FreeFontFromObj.3.gz
    rm -f Tk_FreeFont.3.gz
    ln -sf GetFont.3.gz Tk_AllocFontFromObj.3.gz
    ln -sf GetFont.3.gz Tk_GetFont.3.gz
    ln -sf GetFont.3.gz Tk_GetFontFromObj.3.gz
    ln -sf GetFont.3.gz Tk_NameOfFont.3.gz
    ln -sf GetFont.3.gz Tk_FreeFontFromObj.3.gz
    ln -sf GetFont.3.gz Tk_FreeFont.3.gz
fi
if test -r GetGC.3.gz; then
    rm -f Tk_GetGC.3.gz
    rm -f Tk_FreeGC.3.gz
    ln -sf GetGC.3.gz Tk_GetGC.3.gz
    ln -sf GetGC.3.gz Tk_FreeGC.3.gz
fi
if test -r GetHINSTANCE.3.gz; then
    rm -f Tk_GetHINSTANCE.3.gz
    ln -sf GetHINSTANCE.3.gz Tk_GetHINSTANCE.3.gz
fi
if test -r GetHWND.3.gz; then
    rm -f Tk_GetHWND.3.gz
    ln -sf GetHWND.3.gz Tk_GetHWND.3.gz
fi
if test -r GetImage.3.gz; then
    rm -f Tk_GetImage.3.gz
    rm -f Tk_RedrawImage.3.gz
    rm -f Tk_SizeOfImage.3.gz
    rm -f Tk_FreeImage.3.gz
    ln -sf GetImage.3.gz Tk_GetImage.3.gz
    ln -sf GetImage.3.gz Tk_RedrawImage.3.gz
    ln -sf GetImage.3.gz Tk_SizeOfImage.3.gz
    ln -sf GetImage.3.gz Tk_FreeImage.3.gz
fi
if test -r GetJoinStl.3.gz; then
    rm -f Tk_GetJoinStyle.3.gz
    rm -f Tk_NameOfJoinStyle.3.gz
    ln -sf GetJoinStl.3.gz Tk_GetJoinStyle.3.gz
    ln -sf GetJoinStl.3.gz Tk_NameOfJoinStyle.3.gz
fi
if test -r GetJustify.3.gz; then
    rm -f Tk_GetJustifyFromObj.3.gz
    rm -f Tk_GetJustify.3.gz
    rm -f Tk_NameOfJustify.3.gz
    ln -sf GetJustify.3.gz Tk_GetJustifyFromObj.3.gz
    ln -sf GetJustify.3.gz Tk_GetJustify.3.gz
    ln -sf GetJustify.3.gz Tk_NameOfJustify.3.gz
fi
if test -r GetOption.3.gz; then
    rm -f Tk_GetOption.3.gz
    ln -sf GetOption.3.gz Tk_GetOption.3.gz
fi
if test -r GetPixels.3.gz; then
    rm -f Tk_GetPixelsFromObj.3.gz
    rm -f Tk_GetPixels.3.gz
    rm -f Tk_GetMMFromObj.3.gz
    rm -f Tk_GetScreenMM.3.gz
    ln -sf GetPixels.3.gz Tk_GetPixelsFromObj.3.gz
    ln -sf GetPixels.3.gz Tk_GetPixels.3.gz
    ln -sf GetPixels.3.gz Tk_GetMMFromObj.3.gz
    ln -sf GetPixels.3.gz Tk_GetScreenMM.3.gz
fi
if test -r GetPixmap.3.gz; then
    rm -f Tk_GetPixmap.3.gz
    rm -f Tk_FreePixmap.3.gz
    ln -sf GetPixmap.3.gz Tk_GetPixmap.3.gz
    ln -sf GetPixmap.3.gz Tk_FreePixmap.3.gz
fi
if test -r GetRelief.3.gz; then
    rm -f Tk_GetReliefFromObj.3.gz
    rm -f Tk_GetRelief.3.gz
    rm -f Tk_NameOfRelief.3.gz
    ln -sf GetRelief.3.gz Tk_GetReliefFromObj.3.gz
    ln -sf GetRelief.3.gz Tk_GetRelief.3.gz
    ln -sf GetRelief.3.gz Tk_NameOfRelief.3.gz
fi
if test -r GetRootCrd.3.gz; then
    rm -f Tk_GetRootCoords.3.gz
    ln -sf GetRootCrd.3.gz Tk_GetRootCoords.3.gz
fi
if test -r GetScroll.3.gz; then
    rm -f Tk_GetScrollInfo.3.gz
    rm -f Tk_GetScrollInfoObj.3.gz
    ln -sf GetScroll.3.gz Tk_GetScrollInfo.3.gz
    ln -sf GetScroll.3.gz Tk_GetScrollInfoObj.3.gz
fi
if test -r GetSelect.3.gz; then
    rm -f Tk_GetSelection.3.gz
    ln -sf GetSelect.3.gz Tk_GetSelection.3.gz
fi
if test -r GetUid.3.gz; then
    rm -f Tk_GetUid.3.gz
    rm -f Tk_Uid.3.gz
    ln -sf GetUid.3.gz Tk_GetUid.3.gz
    ln -sf GetUid.3.gz Tk_Uid.3.gz
fi
if test -r GetVRoot.3.gz; then
    rm -f Tk_GetVRootGeometry.3.gz
    ln -sf GetVRoot.3.gz Tk_GetVRootGeometry.3.gz
fi
if test -r GetVisual.3.gz; then
    rm -f Tk_GetVisual.3.gz
    ln -sf GetVisual.3.gz Tk_GetVisual.3.gz
fi
if test -r Grab.3.gz; then
    rm -f Tk_Grab.3.gz
    rm -f Tk_Ungrab.3.gz
    ln -sf Grab.3.gz Tk_Grab.3.gz
    ln -sf Grab.3.gz Tk_Ungrab.3.gz
fi
if test -r HWNDToWindow.3.gz; then
    rm -f Tk_HWNDToWindow.3.gz
    ln -sf HWNDToWindow.3.gz Tk_HWNDToWindow.3.gz
fi
if test -r HandleEvent.3.gz; then
    rm -f Tk_HandleEvent.3.gz
    ln -sf HandleEvent.3.gz Tk_HandleEvent.3.gz
fi
if test -r IdToWindow.3.gz; then
    rm -f Tk_IdToWindow.3.gz
    ln -sf IdToWindow.3.gz Tk_IdToWindow.3.gz
fi
if test -r ImgChanged.3.gz; then
    rm -f Tk_ImageChanged.3.gz
    ln -sf ImgChanged.3.gz Tk_ImageChanged.3.gz
fi
if test -r InternAtom.3.gz; then
    rm -f Tk_InternAtom.3.gz
    rm -f Tk_GetAtomName.3.gz
    ln -sf InternAtom.3.gz Tk_InternAtom.3.gz
    ln -sf InternAtom.3.gz Tk_GetAtomName.3.gz
fi
if test -r MainLoop.3.gz; then
    rm -f Tk_MainLoop.3.gz
    ln -sf MainLoop.3.gz Tk_MainLoop.3.gz
fi
if test -r MainWin.3.gz; then
    rm -f Tk_MainWindow.3.gz
    rm -f Tk_GetNumMainWindows.3.gz
    ln -sf MainWin.3.gz Tk_MainWindow.3.gz
    ln -sf MainWin.3.gz Tk_GetNumMainWindows.3.gz
fi
if test -r MaintGeom.3.gz; then
    rm -f Tk_MaintainGeometry.3.gz
    rm -f Tk_UnmaintainGeometry.3.gz
    ln -sf MaintGeom.3.gz Tk_MaintainGeometry.3.gz
    ln -sf MaintGeom.3.gz Tk_UnmaintainGeometry.3.gz
fi
if test -r ManageGeom.3.gz; then
    rm -f Tk_ManageGeometry.3.gz
    ln -sf ManageGeom.3.gz Tk_ManageGeometry.3.gz
fi
if test -r MapWindow.3.gz; then
    rm -f Tk_MapWindow.3.gz
    rm -f Tk_UnmapWindow.3.gz
    ln -sf MapWindow.3.gz Tk_MapWindow.3.gz
    ln -sf MapWindow.3.gz Tk_UnmapWindow.3.gz
fi
if test -r MeasureChar.3.gz; then
    rm -f Tk_MeasureChars.3.gz
    rm -f Tk_TextWidth.3.gz
    rm -f Tk_DrawChars.3.gz
    rm -f Tk_UnderlineChars.3.gz
    ln -sf MeasureChar.3.gz Tk_MeasureChars.3.gz
    ln -sf MeasureChar.3.gz Tk_TextWidth.3.gz
    ln -sf MeasureChar.3.gz Tk_DrawChars.3.gz
    ln -sf MeasureChar.3.gz Tk_UnderlineChars.3.gz
fi
if test -r MoveToplev.3.gz; then
    rm -f Tk_MoveToplevelWindow.3.gz
    ln -sf MoveToplev.3.gz Tk_MoveToplevelWindow.3.gz
fi
if test -r Name.3.gz; then
    rm -f Tk_Name.3.gz
    rm -f Tk_PathName.3.gz
    rm -f Tk_NameToWindow.3.gz
    ln -sf Name.3.gz Tk_Name.3.gz
    ln -sf Name.3.gz Tk_PathName.3.gz
    ln -sf Name.3.gz Tk_NameToWindow.3.gz
fi
if test -r NameOfImg.3.gz; then
    rm -f Tk_NameOfImage.3.gz
    ln -sf NameOfImg.3.gz Tk_NameOfImage.3.gz
fi
if test -r OwnSelect.3.gz; then
    rm -f Tk_OwnSelection.3.gz
    ln -sf OwnSelect.3.gz Tk_OwnSelection.3.gz
fi
if test -r ParseArgv.3.gz; then
    rm -f Tk_ParseArgv.3.gz
    ln -sf ParseArgv.3.gz Tk_ParseArgv.3.gz
fi
if test -r QWinEvent.3.gz; then
    rm -f Tk_QueueWindowEvent.3.gz
    ln -sf QWinEvent.3.gz Tk_QueueWindowEvent.3.gz
fi
if test -r Restack.3.gz; then
    rm -f Tk_RestackWindow.3.gz
    ln -sf Restack.3.gz Tk_RestackWindow.3.gz
fi
if test -r RestrictEv.3.gz; then
    rm -f Tk_RestrictEvents.3.gz
    ln -sf RestrictEv.3.gz Tk_RestrictEvents.3.gz
fi
if test -r SetAppName.3.gz; then
    rm -f Tk_SetAppName.3.gz
    ln -sf SetAppName.3.gz Tk_SetAppName.3.gz
fi
if test -r SetClass.3.gz; then
    rm -f Tk_SetClass.3.gz
    rm -f Tk_Class.3.gz
    ln -sf SetClass.3.gz Tk_SetClass.3.gz
    ln -sf SetClass.3.gz Tk_Class.3.gz
fi
if test -r SetGrid.3.gz; then
    rm -f Tk_SetGrid.3.gz
    rm -f Tk_UnsetGrid.3.gz
    ln -sf SetGrid.3.gz Tk_SetGrid.3.gz
    ln -sf SetGrid.3.gz Tk_UnsetGrid.3.gz
fi
if test -r SetOptions.3.gz; then
    rm -f Tk_CreateOptionTable.3.gz
    rm -f Tk_DeleteOptionTable.3.gz
    rm -f Tk_InitOptions.3.gz
    rm -f Tk_SetOptions.3.gz
    rm -f Tk_FreeSavedOptions.3.gz
    rm -f Tk_RestoreSavedOptions.3.gz
    rm -f Tk_GetOptionValue.3.gz
    rm -f Tk_GetOptionInfo.3.gz
    rm -f Tk_FreeConfigOptions.3.gz
    rm -f Tk_Offset.3.gz
    ln -sf SetOptions.3.gz Tk_CreateOptionTable.3.gz
    ln -sf SetOptions.3.gz Tk_DeleteOptionTable.3.gz
    ln -sf SetOptions.3.gz Tk_InitOptions.3.gz
    ln -sf SetOptions.3.gz Tk_SetOptions.3.gz
    ln -sf SetOptions.3.gz Tk_FreeSavedOptions.3.gz
    ln -sf SetOptions.3.gz Tk_RestoreSavedOptions.3.gz
    ln -sf SetOptions.3.gz Tk_GetOptionValue.3.gz
    ln -sf SetOptions.3.gz Tk_GetOptionInfo.3.gz
    ln -sf SetOptions.3.gz Tk_FreeConfigOptions.3.gz
    ln -sf SetOptions.3.gz Tk_Offset.3.gz
fi
if test -r SetVisual.3.gz; then
    rm -f Tk_SetWindowVisual.3.gz
    ln -sf SetVisual.3.gz Tk_SetWindowVisual.3.gz
fi
if test -r StrictMotif.3.gz; then
    rm -f Tk_StrictMotif.3.gz
    ln -sf StrictMotif.3.gz Tk_StrictMotif.3.gz
fi
if test -r TextLayout.3.gz; then
    rm -f Tk_ComputeTextLayout.3.gz
    rm -f Tk_FreeTextLayout.3.gz
    rm -f Tk_DrawTextLayout.3.gz
    rm -f Tk_UnderlineTextLayout.3.gz
    rm -f Tk_PointToChar.3.gz
    rm -f Tk_CharBbox.3.gz
    rm -f Tk_DistanceToTextLayout.3.gz
    rm -f Tk_IntersectTextLayout.3.gz
    rm -f Tk_TextLayoutToPostscript.3.gz
    ln -sf TextLayout.3.gz Tk_ComputeTextLayout.3.gz
    ln -sf TextLayout.3.gz Tk_FreeTextLayout.3.gz
    ln -sf TextLayout.3.gz Tk_DrawTextLayout.3.gz
    ln -sf TextLayout.3.gz Tk_UnderlineTextLayout.3.gz
    ln -sf TextLayout.3.gz Tk_PointToChar.3.gz
    ln -sf TextLayout.3.gz Tk_CharBbox.3.gz
    ln -sf TextLayout.3.gz Tk_DistanceToTextLayout.3.gz
    ln -sf TextLayout.3.gz Tk_IntersectTextLayout.3.gz
    ln -sf TextLayout.3.gz Tk_TextLayoutToPostscript.3.gz
fi
if test -r TkInitStubs.3.gz; then
    rm -f Tk_InitStubs.3.gz
    ln -sf TkInitStubs.3.gz Tk_InitStubs.3.gz
fi
if test -r Tk_Init.3.gz; then
    rm -f Tk_SafeInit.3.gz
    ln -sf Tk_Init.3.gz Tk_SafeInit.3.gz
fi
if test -r WindowId.3.gz; then
    rm -f Tk_WindowId.3.gz
    rm -f Tk_Parent.3.gz
    rm -f Tk_Display.3.gz
    rm -f Tk_DisplayName.3.gz
    rm -f Tk_ScreenNumber.3.gz
    rm -f Tk_Screen.3.gz
    rm -f Tk_X.3.gz
    rm -f Tk_Y.3.gz
    rm -f Tk_Width.3.gz
    rm -f Tk_Height.3.gz
    rm -f Tk_Changes.3.gz
    rm -f Tk_Attributes.3.gz
    rm -f Tk_IsContainer.3.gz
    rm -f Tk_IsEmbedded.3.gz
    rm -f Tk_IsMapped.3.gz
    rm -f Tk_IsTopLevel.3.gz
    rm -f Tk_ReqWidth.3.gz
    rm -f Tk_ReqHeight.3.gz
    rm -f Tk_InternalBorderWidth.3.gz
    rm -f Tk_Visual.3.gz
    rm -f Tk_Depth.3.gz
    rm -f Tk_Colormap.3.gz
    ln -sf WindowId.3.gz Tk_WindowId.3.gz
    ln -sf WindowId.3.gz Tk_Parent.3.gz
    ln -sf WindowId.3.gz Tk_Display.3.gz
    ln -sf WindowId.3.gz Tk_DisplayName.3.gz
    ln -sf WindowId.3.gz Tk_ScreenNumber.3.gz
    ln -sf WindowId.3.gz Tk_Screen.3.gz
    ln -sf WindowId.3.gz Tk_X.3.gz
    ln -sf WindowId.3.gz Tk_Y.3.gz
    ln -sf WindowId.3.gz Tk_Width.3.gz
    ln -sf WindowId.3.gz Tk_Height.3.gz
    ln -sf WindowId.3.gz Tk_Changes.3.gz
    ln -sf WindowId.3.gz Tk_Attributes.3.gz
    ln -sf WindowId.3.gz Tk_IsContainer.3.gz
    ln -sf WindowId.3.gz Tk_IsEmbedded.3.gz
    ln -sf WindowId.3.gz Tk_IsMapped.3.gz
    ln -sf WindowId.3.gz Tk_IsTopLevel.3.gz
    ln -sf WindowId.3.gz Tk_ReqWidth.3.gz
    ln -sf WindowId.3.gz Tk_ReqHeight.3.gz
    ln -sf WindowId.3.gz Tk_InternalBorderWidth.3.gz
    ln -sf WindowId.3.gz Tk_Visual.3.gz
    ln -sf WindowId.3.gz Tk_Depth.3.gz
    ln -sf WindowId.3.gz Tk_Colormap.3.gz
fi
if test -r chooseColor.n.gz; then
    rm -f tk_chooseColor.n.gz
    ln -sf chooseColor.n.gz tk_chooseColor.n.gz
fi
if test -r chooseDirectory.n.gz; then
    rm -f tk_chooseDirectory.n.gz
    ln -sf chooseDirectory.n.gz tk_chooseDirectory.n.gz
fi
if test -r dialog.n.gz; then
    rm -f tk_dialog.n.gz
    ln -sf dialog.n.gz tk_dialog.n.gz
fi
if test -r focusNext.n.gz; then
    rm -f tk_focusNext.n.gz
    rm -f tk_focusPrev.n.gz
    rm -f tk_focusFollowsMouse.n.gz
    ln -sf focusNext.n.gz tk_focusNext.n.gz
    ln -sf focusNext.n.gz tk_focusPrev.n.gz
    ln -sf focusNext.n.gz tk_focusFollowsMouse.n.gz
fi
if test -r getOpenFile.n.gz; then
    rm -f tk_getOpenFile.n.gz
    rm -f tk_getSaveFile.n.gz
    ln -sf getOpenFile.n.gz tk_getOpenFile.n.gz
    ln -sf getOpenFile.n.gz tk_getSaveFile.n.gz
fi
if test -r menubar.n.gz; then
    rm -f tk_menuBar.n.gz
    rm -f tk_bindForTraversal.n.gz
    ln -sf menubar.n.gz tk_menuBar.n.gz
    ln -sf menubar.n.gz tk_bindForTraversal.n.gz
fi
if test -r messageBox.n.gz; then
    rm -f tk_messageBox.n.gz
    ln -sf messageBox.n.gz tk_messageBox.n.gz
fi
if test -r optionMenu.n.gz; then
    rm -f tk_optionMenu.n.gz
    ln -sf optionMenu.n.gz tk_optionMenu.n.gz
fi
if test -r palette.n.gz; then
    rm -f tk_setPalette.n.gz
    rm -f tk_bisque.n.gz
    ln -sf palette.n.gz tk_setPalette.n.gz
    ln -sf palette.n.gz tk_bisque.n.gz
fi
if test -r popup.n.gz; then
    rm -f tk_popup.n.gz
    ln -sf popup.n.gz tk_popup.n.gz
fi
exit 0
