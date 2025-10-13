.class public abstract Lorg/telegram/ui/ActionBar/ThemeColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static colorKeysMap:Landroid/util/SparseArray;

.field private static colorKeysStringMap:Ljava/util/HashMap;


# direct methods
.method public static createColorKeysMap()Landroid/util/SparseArray;
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_wallpaperFileOffset:I

    const-string v2, "wallpaperFileOffset"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const-string v2, "dialogBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    const-string v2, "dialogBackgroundGray"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const-string v2, "dialogTextBlack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    const-string v2, "dialogTextLink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLinkSelection:I

    const-string v2, "dialogLinkSelection"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    const-string v2, "dialogTextBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const-string v2, "dialogTextBlue2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue4:I

    const-string v2, "dialogTextBlue4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray:I

    const-string v2, "dialogTextGray"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    const-string v2, "dialogTextGray2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    const-string v2, "dialogTextGray3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    const-string v2, "dialogTextGray4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    const-string v2, "dialogTextHint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputField:I

    const-string v2, "dialogInputField"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputFieldActivated:I

    const-string v2, "dialogInputFieldActivated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareBackground:I

    const-string v2, "dialogCheckboxSquareBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareCheck:I

    const-string v2, "dialogCheckboxSquareCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareUnchecked:I

    const-string v2, "dialogCheckboxSquareUnchecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareDisabled:I

    const-string v2, "dialogCheckboxSquareDisabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const-string v2, "dialogScrollGlow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBox:I

    const-string v2, "dialogRoundCheckBox"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBoxCheck:I

    const-string v2, "dialogRoundCheckBoxCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    const-string v2, "dialogRadioBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    const-string v2, "dialogRadioBackgroundChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgress:I

    const-string v2, "dialogLineProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgressBackground:I

    const-string v2, "dialogLineProgressBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButton:I

    const-string v2, "dialogButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    const-string v2, "dialogButtonSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    const-string v2, "dialogIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGrayLine:I

    const-string v2, "dialogGrayLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    const-string v2, "dialogTopBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCameraIcon:I

    const-string v2, "dialogCameraIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgressBackground:I

    const-string v2, "dialog_inlineProgressBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgress:I

    const-string v2, "dialog_inlineProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    const-string v2, "dialogSearchBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    const-string v2, "dialogSearchHint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    const-string v2, "bot_loadingIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    const-string v2, "gift_ribbon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon_soldout:I

    const-string v2, "gift_ribbon_soldout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    const-string v2, "dialogSearchIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    const-string v2, "dialogSearchText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    const-string v2, "dialogFloatingButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButtonPressed:I

    const-string v2, "dialogFloatingButtonPressed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    const-string v2, "dialogFloatingIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    const-string v2, "dialogShadowLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    const-string v2, "dialogEmptyImage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    const-string v2, "dialogEmptyText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    const-string v2, "dialogSwipeRemove"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogReactionMentionBackground:I

    const-string v2, "dialogReactionMentionBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    const-string v2, "windowBackgroundUnchecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const-string v2, "windowBackgroundChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const-string v2, "windowBackgroundCheckText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const-string v2, "progressCircle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const-string v2, "listSelectorSDK21"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const-string v2, "windowBackgroundWhiteInputField"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const-string v2, "windowBackgroundWhiteInputFieldActivated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const-string v2, "windowBackgroundWhiteGrayIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    const-string v2, "windowBackgroundWhiteBlueText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    const-string v2, "windowBackgroundWhiteBlueText2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    const-string v2, "windowBackgroundWhiteBlueText3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const-string v2, "windowBackgroundWhiteBlueText4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText5:I

    const-string v2, "windowBackgroundWhiteBlueText5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    const-string v2, "windowBackgroundWhiteBlueText6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText7:I

    const-string v2, "windowBackgroundWhiteBlueText7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    const-string v2, "windowBackgroundWhiteBlueButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    const-string v2, "windowBackgroundWhiteBlueIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    const-string v2, "windowBackgroundWhiteGreenText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    const-string v2, "windowBackgroundWhiteGreenText2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const-string v2, "windowBackgroundWhiteGrayText2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const-string v2, "windowBackgroundWhiteGrayText3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const-string v2, "windowBackgroundWhiteGrayText4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText5:I

    const-string v2, "windowBackgroundWhiteGrayText5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    const-string v2, "windowBackgroundWhiteGrayText7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    const-string v2, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const-string v2, "windowBackgroundWhiteHintText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const-string v2, "windowBackgroundWhiteValueText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const-string v2, "windowBackgroundWhiteLinkText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    const-string v2, "windowBackgroundWhiteLinkSelection"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const-string v2, "windowBackgroundWhiteBlueHeader"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const-string v2, "switchTrack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const-string v2, "switchTrackChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const-string v2, "switchTrackBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    const-string v2, "switchTrackBlueChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    const-string v2, "switchTrackBlueThumb"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    const-string v2, "switchTrackBlueThumbChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    const-string v2, "switchTrackBlueSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    const-string v2, "switchTrackBlueSelectorChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2Track:I

    const-string v2, "switch2Track"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    const-string v2, "switch2TrackChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    const-string v2, "checkboxSquareBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    const-string v2, "checkboxSquareCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    const-string v2, "checkboxSquareUnchecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareDisabled:I

    const-string v2, "checkboxSquareDisabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const-string v2, "windowBackgroundGray"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const-string v2, "windowBackgroundGrayShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const-string v2, "emptyListPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const-string v2, "divider"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const-string v2, "graySection"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const-string v2, "key_graySectionText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    const-string v2, "radioBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    const-string v2, "radioBackgroundChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const-string v2, "checkbox"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    const-string v2, "checkboxDisabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const-string v2, "checkboxCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    const-string v2, "fastScrollActive"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    const-string v2, "fastScrollInactive"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    const-string v2, "fastScrollText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const-string v2, "text_RedRegular"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    const-string v2, "text_RedBold"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    const-string v2, "fill_RedNormal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedDark:I

    const-string v2, "fill_RedDark"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    const-string v2, "inappPlayerPerformer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    const-string v2, "inappPlayerTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    const-string v2, "inappPlayerBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPlayPause:I

    const-string v2, "inappPlayerPlayPause"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    const-string v2, "inappPlayerClose"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    const-string v2, "returnToCallBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallMutedBackground:I

    const-string v2, "returnToCallMutedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    const-string v2, "returnToCallText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner1:I

    const-string v2, "contextProgressInner1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter1:I

    const-string v2, "contextProgressOuter1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const-string v2, "contextProgressInner2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    const-string v2, "contextProgressOuter2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner3:I

    const-string v2, "contextProgressInner3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter3:I

    const-string v2, "contextProgressOuter3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner4:I

    const-string v2, "contextProgressInner4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter4:I

    const-string v2, "contextProgressOuter4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const-string v2, "avatar_text"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    const-string v2, "avatar_backgroundSaved"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    const-string v2, "avatar_background2Saved"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchived:I

    const-string v2, "avatar_backgroundArchived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    const-string v2, "avatar_backgroundArchivedHidden"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const-string v2, "avatar_backgroundRed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    const-string v2, "avatar_backgroundOrange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    const-string v2, "avatar_backgroundViolet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    const-string v2, "avatar_backgroundGreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    const-string v2, "avatar_backgroundCyan"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    const-string v2, "avatar_backgroundBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    const-string v2, "avatar_backgroundPink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Red:I

    const-string v2, "avatar_background2Red"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Orange:I

    const-string v2, "avatar_background2Orange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Violet:I

    const-string v2, "avatar_background2Violet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Green:I

    const-string v2, "avatar_background2Green"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Cyan:I

    const-string v2, "avatar_background2Cyan"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Blue:I

    const-string v2, "avatar_background2Blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    const-string v2, "avatar_background2Pink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundInProfileBlue:I

    const-string v2, "avatar_backgroundInProfileBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundActionBarBlue:I

    const-string v2, "avatar_backgroundActionBarBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    const-string v2, "avatar_actionBarSelectorBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    const-string v2, "avatar_actionBarIconBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    const-string v2, "avatar_subtitleInProfileBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageRed:I

    const-string v2, "avatar_nameInMessageRed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageOrange:I

    const-string v2, "avatar_nameInMessageOrange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageViolet:I

    const-string v2, "avatar_nameInMessageViolet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageGreen:I

    const-string v2, "avatar_nameInMessageGreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageCyan:I

    const-string v2, "avatar_nameInMessageCyan"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageBlue:I

    const-string v2, "avatar_nameInMessageBlue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessagePink:I

    const-string v2, "avatar_nameInMessagePink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const-string v2, "actionBarDefault"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const-string v2, "actionBarDefaultSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    const-string v2, "actionBarWhiteSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const-string v2, "actionBarDefaultIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    const-string v2, "actionBarActionModeDefault"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultTop:I

    const-string v2, "actionBarActionModeDefaultTop"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    const-string v2, "actionBarActionModeDefaultIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    const-string v2, "actionBarActionModeDefaultSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeReaction:I

    const-string v2, "actionBarActionModeReaction"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeReactionText:I

    const-string v2, "actionBarActionModeReactionText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeReactionDot:I

    const-string v2, "actionBarActionModeReactionDot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const-string v2, "actionBarDefaultTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    const-string v2, "actionBarDefaultSubtitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    const-string v2, "actionBarDefaultSearch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    const-string v2, "actionBarDefaultSearchPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    const-string v2, "actionBarDefaultSubmenuItemIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    const-string v2, "actionBarDefaultSubmenuBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    const-string v2, "actionBarDefaultSubmenuSeparator"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    const-string v2, "actionBarTabActiveText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    const-string v2, "actionBarTabUnactiveText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    const-string v2, "actionBarTabLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    const-string v2, "actionBarTabSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_table_background:I

    const-string v2, "table_background"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_table_border:I

    const-string v2, "table_border"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    const-string v2, "actionBarDefaultArchived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSelector:I

    const-string v2, "actionBarDefaultArchivedSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedIcon:I

    const-string v2, "actionBarDefaultArchivedIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedTitle:I

    const-string v2, "actionBarDefaultArchivedTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSearch:I

    const-string v2, "actionBarDefaultArchivedSearch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSearchPlaceholder:I

    const-string v2, "actionBarDefaultSearchArchivedPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarBrowser:I

    const-string v2, "actionBarBrowser"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    const-string v2, "chats_onlineCircle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    const-string v2, "chats_unreadCounter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    const-string v2, "chats_unreadCounterMuted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    const-string v2, "chats_unreadCounterText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    const-string v2, "chats_name"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    const-string v2, "chats_nameArchived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    const-string v2, "chats_secretName"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretIcon:I

    const-string v2, "chats_secretIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    const-string v2, "chats_pinnedIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    const-string v2, "chats_archiveBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    const-string v2, "chats_archivePinBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveIcon:I

    const-string v2, "chats_archiveIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveText:I

    const-string v2, "chats_archiveText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    const-string v2, "chats_message"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_messageArchived:I

    const-string v2, "chats_messageArchived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    const-string v2, "chats_message_threeLines"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    const-string v2, "chats_draft"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    const-string v2, "chats_nameMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived:I

    const-string v2, "chats_nameMessageArchived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    const-string v2, "chats_nameMessage_threeLines"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived_threeLines:I

    const-string v2, "chats_nameMessageArchived_threeLines"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    const-string v2, "chats_attachMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    const-string v2, "chats_actionMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    const-string v2, "chats_date"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const-string v2, "chats_pinnedOverlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabletSelectedOverlay:I

    const-string v2, "chats_tabletSelectedOverlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentCheck:I

    const-string v2, "chats_sentCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentReadCheck:I

    const-string v2, "chats_sentReadCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentClock:I

    const-string v2, "chats_sentClock"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentError:I

    const-string v2, "chats_sentError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentErrorIcon:I

    const-string v2, "chats_sentErrorIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    const-string v2, "chats_verifiedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    const-string v2, "chats_verifiedCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_muteIcon:I

    const-string v2, "chats_muteIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_mentionIcon:I

    const-string v2, "chats_mentionIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopShadow:I

    const-string v2, "chats_menuTopShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopShadowCats:I

    const-string v2, "chats_menuTopShadowCats"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuBackground:I

    const-string v2, "chats_menuBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    const-string v2, "chats_menuItemText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemCheck:I

    const-string v2, "chats_menuItemCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    const-string v2, "chats_menuItemIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    const-string v2, "chats_menuName"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhone:I

    const-string v2, "chats_menuPhone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    const-string v2, "chats_menuPhoneCats"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopBackgroundCats:I

    const-string v2, "chats_menuTopBackgroundCats"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopBackground:I

    const-string v2, "chats_menuTopBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    const-string v2, "chats_actionIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const-string v2, "chats_actionBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    const-string v2, "chats_actionPressedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    const-string v2, "chats_archivePullDownBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackgroundActive:I

    const-string v2, "chats_archivePullDownBackgroundActive"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    const-string v2, "chats_tabUnreadActiveBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    const-string v2, "chats_tabUnreadUnactiveBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxCheck:I

    const-string v2, "chat_attachCheckBoxCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxBackground:I

    const-string v2, "chat_attachCheckBoxBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    const-string v2, "chat_attachPhotoBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachActiveTab:I

    const-string v2, "chat_attachActiveTab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachUnactiveTab:I

    const-string v2, "chat_attachUnactiveTab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPermissionImage:I

    const-string v2, "chat_attachPermissionImage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPermissionMark:I

    const-string v2, "chat_attachPermissionMark"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPermissionText:I

    const-string v2, "chat_attachPermissionText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachEmptyImage:I

    const-string v2, "chat_attachEmptyImage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPollCorrectAnswer:I

    const-string v2, "chat_inPollCorrectAnswer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPollCorrectAnswer:I

    const-string v2, "chat_outPollCorrectAnswer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPollWrongAnswer:I

    const-string v2, "chat_inPollWrongAnswer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPollWrongAnswer:I

    const-string v2, "chat_outPollWrongAnswer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    const-string v2, "chat_attachIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryBackground:I

    const-string v2, "chat_attachGalleryBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryText:I

    const-string v2, "chat_attachGalleryText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    const-string v2, "chat_attachAudioBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioText:I

    const-string v2, "chat_attachAudioText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileBackground:I

    const-string v2, "chat_attachFileBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileText:I

    const-string v2, "chat_attachFileText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    const-string v2, "chat_attachContactBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactText:I

    const-string v2, "chat_attachContactText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    const-string v2, "chat_attachLocationBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationText:I

    const-string v2, "chat_attachLocationText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    const-string v2, "chat_attachPollBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollText:I

    const-string v2, "chat_attachPollText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    const-string v2, "chat_status"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    const-string v2, "chat_inDownCall"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outGreenCall:I

    const-string v2, "chat_outUpCall"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    const-string v2, "chat_inBubble"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    const-string v2, "chat_inBubbleSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelectedOverlay:I

    const-string v2, "chat_inBubbleSelectedOverlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    const-string v2, "chat_inBubbleShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    const-string v2, "chat_outBubble"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    const-string v2, "chat_outBubbleGradient"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    const-string v2, "chat_outBubbleGradient2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    const-string v2, "chat_outBubbleGradient3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    const-string v2, "chat_outBubbleGradientAnimated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    const-string v2, "chat_outBubbleGradientSelectedOverlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    const-string v2, "chat_outBubbleSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelectedOverlay:I

    const-string v2, "chat_outBubbleSelectedOverlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    const-string v2, "chat_outBubbleShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    const-string v2, "chat_messageTextIn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    const-string v2, "chat_messageTextOut"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    const-string v2, "chat_messageLinkIn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    const-string v2, "chat_messageLinkOut"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    const-string v2, "chat_serviceText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    const-string v2, "chat_serviceLink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    const-string v2, "chat_serviceIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    const-string v2, "chat_serviceBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackgroundSelected:I

    const-string v2, "chat_serviceBackgroundSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackgroundSelector:I

    const-string v2, "chat_serviceBackgroundSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inQuote:I

    const-string v2, "chat_inQuote"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outQuote:I

    const-string v2, "chat_outQuote"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_muteIcon:I

    const-string v2, "chat_muteIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_lockIcon:I

    const-string v2, "chat_lockIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    const-string v2, "chat_outSentCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    const-string v2, "chat_outSentCheckSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    const-string v2, "chat_outSentCheckRead"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    const-string v2, "chat_outSentCheckReadSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClock:I

    const-string v2, "chat_outSentClock"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClockSelected:I

    const-string v2, "chat_outSentClockSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSentClock:I

    const-string v2, "chat_inSentClock"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSentClockSelected:I

    const-string v2, "chat_inSentClockSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    const-string v2, "chat_mediaSentCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentClock:I

    const-string v2, "chat_mediaSentClock"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    const-string v2, "chat_inMediaIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    const-string v2, "chat_outMediaIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    const-string v2, "chat_inMediaIconSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIconSelected:I

    const-string v2, "chat_outMediaIconSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    const-string v2, "chat_mediaTimeBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViews:I

    const-string v2, "chat_outViews"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViewsSelected:I

    const-string v2, "chat_outViewsSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViews:I

    const-string v2, "chat_inViews"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViewsSelected:I

    const-string v2, "chat_inViewsSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaViews:I

    const-string v2, "chat_mediaViews"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenu:I

    const-string v2, "chat_outMenu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenuSelected:I

    const-string v2, "chat_outMenuSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    const-string v2, "chat_inMenu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenuSelected:I

    const-string v2, "chat_inMenuSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaMenu:I

    const-string v2, "chat_mediaMenu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstant:I

    const-string v2, "chat_outInstant"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstantSelected:I

    const-string v2, "chat_outInstantSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inInstant:I

    const-string v2, "chat_inInstant"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inInstantSelected:I

    const-string v2, "chat_inInstantSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_sentError:I

    const-string v2, "chat_sentError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_sentErrorIcon:I

    const-string v2, "chat_sentErrorIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    const-string v2, "chat_selectedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_previewDurationText:I

    const-string v2, "chat_previewDurationText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_previewGameText:I

    const-string v2, "chat_previewGameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewInstantText:I

    const-string v2, "chat_inPreviewInstantText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    const-string v2, "chat_outPreviewInstantText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_secretTimeText:I

    const-string v2, "chat_secretTimeText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerNameText:I

    const-string v2, "chat_stickerNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botButtonText:I

    const-string v2, "chat_botButtonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inForwardedNameText:I

    const-string v2, "chat_inForwardedNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outForwardedNameText:I

    const-string v2, "chat_outForwardedNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPsaNameText:I

    const-string v2, "chat_inPsaNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPsaNameText:I

    const-string v2, "chat_outPsaNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViaBotNameText:I

    const-string v2, "chat_inViaBotNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViaBotNameText:I

    const-string v2, "chat_outViaBotNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerViaBotNameText:I

    const-string v2, "chat_stickerViaBotNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    const-string v2, "chat_inReplyLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    const-string v2, "chat_outReplyLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    const-string v2, "chat_outReplyLine2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyLine:I

    const-string v2, "chat_stickerReplyLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    const-string v2, "chat_inReplyNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    const-string v2, "chat_outReplyNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyNameText:I

    const-string v2, "chat_stickerReplyNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    const-string v2, "chat_inReplyMessageText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    const-string v2, "chat_outReplyMessageText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageText:I

    const-string v2, "chat_inReplyMediaMessageText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageText:I

    const-string v2, "chat_outReplyMediaMessageText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    const-string v2, "chat_inReplyMediaMessageSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    const-string v2, "chat_outReplyMediaMessageSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyMessageText:I

    const-string v2, "chat_stickerReplyMessageText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewLine:I

    const-string v2, "chat_inPreviewLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewLine:I

    const-string v2, "chat_outPreviewLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSiteNameText:I

    const-string v2, "chat_inSiteNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSiteNameText:I

    const-string v2, "chat_outSiteNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactNameText:I

    const-string v2, "chat_inContactNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactNameText:I

    const-string v2, "chat_outContactNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactPhoneText:I

    const-string v2, "chat_inContactPhoneText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactPhoneSelectedText:I

    const-string v2, "chat_inContactPhoneSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneText:I

    const-string v2, "chat_outContactPhoneText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneSelectedText:I

    const-string v2, "chat_outContactPhoneSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaProgress:I

    const-string v2, "chat_mediaProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    const-string v2, "chat_inAudioProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioProgress:I

    const-string v2, "chat_outAudioProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    const-string v2, "chat_inAudioSelectedProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSelectedProgress:I

    const-string v2, "chat_outAudioSelectedProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    const-string v2, "chat_mediaTimeText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAdminText:I

    const-string v2, "chat_adminText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAdminSelectedText:I

    const-string v2, "chat_adminSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAdminText:I

    const-string v2, "chat_outAdminText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAdminSelectedText:I

    const-string v2, "chat_outAdminSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    const-string v2, "chat_inTimeText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    const-string v2, "chat_outTimeText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    const-string v2, "chat_inTimeSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    const-string v2, "chat_outTimeSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioPerformerText:I

    const-string v2, "chat_inAudioPerfomerText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioPerformerSelectedText:I

    const-string v2, "chat_inAudioPerfomerSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerText:I

    const-string v2, "chat_outAudioPerfomerText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerSelectedText:I

    const-string v2, "chat_outAudioPerfomerSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioTitleText:I

    const-string v2, "chat_inAudioTitleText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioTitleText:I

    const-string v2, "chat_outAudioTitleText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioDurationText:I

    const-string v2, "chat_inAudioDurationText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationText:I

    const-string v2, "chat_outAudioDurationText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioDurationSelectedText:I

    const-string v2, "chat_inAudioDurationSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationSelectedText:I

    const-string v2, "chat_outAudioDurationSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbar:I

    const-string v2, "chat_inAudioSeekbar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioCacheSeekbar:I

    const-string v2, "chat_inAudioCacheSeekbar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbar:I

    const-string v2, "chat_outAudioSeekbar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioCacheSeekbar:I

    const-string v2, "chat_outAudioCacheSeekbar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarSelected:I

    const-string v2, "chat_inAudioSeekbarSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarSelected:I

    const-string v2, "chat_outAudioSeekbarSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarFill:I

    const-string v2, "chat_inAudioSeekbarFill"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarFill:I

    const-string v2, "chat_outAudioSeekbarFill"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbar:I

    const-string v2, "chat_inVoiceSeekbar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbar:I

    const-string v2, "chat_outVoiceSeekbar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbarSelected:I

    const-string v2, "chat_inVoiceSeekbarSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarSelected:I

    const-string v2, "chat_outVoiceSeekbarSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbarFill:I

    const-string v2, "chat_inVoiceSeekbarFill"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarFill:I

    const-string v2, "chat_outVoiceSeekbarFill"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgress:I

    const-string v2, "chat_inFileProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgress:I

    const-string v2, "chat_outFileProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgressSelected:I

    const-string v2, "chat_inFileProgressSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgressSelected:I

    const-string v2, "chat_outFileProgressSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileNameText:I

    const-string v2, "chat_inFileNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileNameText:I

    const-string v2, "chat_outFileNameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoText:I

    const-string v2, "chat_inFileInfoText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoText:I

    const-string v2, "chat_outFileInfoText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoSelectedText:I

    const-string v2, "chat_inFileInfoSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoSelectedText:I

    const-string v2, "chat_outFileInfoSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileBackground:I

    const-string v2, "chat_inFileBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileBackground:I

    const-string v2, "chat_outFileBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileBackgroundSelected:I

    const-string v2, "chat_inFileBackgroundSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileBackgroundSelected:I

    const-string v2, "chat_outFileBackgroundSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVenueInfoText:I

    const-string v2, "chat_inVenueInfoText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoText:I

    const-string v2, "chat_outVenueInfoText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVenueInfoSelectedText:I

    const-string v2, "chat_inVenueInfoSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoSelectedText:I

    const-string v2, "chat_outVenueInfoSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaInfoText:I

    const-string v2, "chat_mediaInfoText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    const-string v2, "chat_linkSelectBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLinkSelectBackground:I

    const-string v2, "chat_outLinkSelectBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_textSelectBackground:I

    const-string v2, "chat_textSelectBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    const-string v2, "chat_wallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    const-string v2, "chat_wallpaper_gradient_to"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    const-string v2, "key_chat_wallpaper_gradient_to2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    const-string v2, "key_chat_wallpaper_gradient_to3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    const-string v2, "chat_wallpaper_gradient_rotation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    const-string v2, "chat_messagePanelBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    const-string v2, "chat_messagePanelShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    const-string v2, "chat_messagePanelText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    const-string v2, "chat_messagePanelHint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCursor:I

    const-string v2, "chat_messagePanelCursor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    const-string v2, "chat_messagePanelIcons"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    const-string v2, "chat_messagePanelSend"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    const-string v2, "key_chat_messagePanelVoiceLock"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    const-string v2, "key_chat_messagePanelVoiceLockBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockShadow:I

    const-string v2, "key_chat_messagePanelVoiceLockShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelBackground:I

    const-string v2, "chat_topPanelBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    const-string v2, "chat_topPanelClose"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelLine:I

    const-string v2, "chat_topPanelLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelTitle:I

    const-string v2, "chat_topPanelTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelMessage:I

    const-string v2, "chat_topPanelMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_addContact:I

    const-string v2, "chat_addContact"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    const-string v2, "chat_inLoader"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    const-string v2, "chat_inLoaderSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    const-string v2, "chat_outLoader"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoaderSelected:I

    const-string v2, "chat_outLoaderSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderPhoto:I

    const-string v2, "chat_inLoaderPhoto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    const-string v2, "chat_mediaLoaderPhoto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    const-string v2, "chat_mediaLoaderPhotoSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    const-string v2, "chat_mediaLoaderPhotoIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    const-string v2, "chat_mediaLoaderPhotoIconSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationBackground:I

    const-string v2, "chat_inLocationBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationIcon:I

    const-string v2, "chat_inLocationIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLocationIcon:I

    const-string v2, "chat_outLocationIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactBackground:I

    const-string v2, "chat_inContactBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactIcon:I

    const-string v2, "chat_inContactIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactBackground:I

    const-string v2, "chat_outContactBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactIcon:I

    const-string v2, "chat_outContactIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelIcons:I

    const-string v2, "chat_replyPanelIcons"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelClose:I

    const-string v2, "chat_replyPanelClose"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelName:I

    const-string v2, "chat_replyPanelName"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelLine:I

    const-string v2, "chat_replyPanelLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelIcons:I

    const-string v2, "chat_searchPanelIcons"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelText:I

    const-string v2, "chat_searchPanelText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_secretChatStatusText:I

    const-string v2, "chat_secretChatStatusText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    const-string v2, "chat_fieldOverlayText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickersHintPanel:I

    const-string v2, "chat_stickersHintPanel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botSwitchToInlineText:I

    const-string v2, "chat_botSwitchToInlineText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartArrowIcon:I

    const-string v2, "chat_unreadMessagesStartArrowIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartText:I

    const-string v2, "chat_unreadMessagesStartText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartBackground:I

    const-string v2, "chat_unreadMessagesStartBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inlineResultIcon:I

    const-string v2, "chat_inlineResultIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    const-string v2, "chat_emojiPanelBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    const-string v2, "chat_emojiSearchBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    const-string v2, "chat_emojiSearchIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    const-string v2, "chat_emojiPanelShadowLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    const-string v2, "chat_emojiPanelEmptyText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    const-string v2, "chat_emojiPanelIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    const-string v2, "chat_emojiBottomPanelIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    const-string v2, "chat_emojiPanelIconSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelector:I

    const-string v2, "chat_emojiPanelStickerPackSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    const-string v2, "chat_emojiPanelStickerPackSelectorLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    const-string v2, "chat_emojiPanelBackspace"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingTitle:I

    const-string v2, "chat_emojiPanelTrendingTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    const-string v2, "chat_emojiPanelStickerSetName"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetNameHighlight:I

    const-string v2, "chat_emojiPanelStickerSetNameHighlight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetNameIcon:I

    const-string v2, "chat_emojiPanelStickerSetNameIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingDescription:I

    const-string v2, "chat_emojiPanelTrendingDescription"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonText:I

    const-string v2, "chat_botKeyboardButtonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonBackground:I

    const-string v2, "chat_botKeyboardButtonBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonBackgroundPressed:I

    const-string v2, "chat_botKeyboardButtonBackgroundPressed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelNewTrending:I

    const-string v2, "chat_emojiPanelNewTrending"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    const-string v2, "chat_messagePanelVoicePressed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    const-string v2, "chat_messagePanelVoiceBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceDelete:I

    const-string v2, "chat_messagePanelVoiceDelete"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceDuration:I

    const-string v2, "chat_messagePanelVoiceDuration"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoicePlayPause:I

    const-string v2, "chat_recordedVoicePlayPause"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceProgress:I

    const-string v2, "chat_recordedVoiceProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceProgressInner:I

    const-string v2, "chat_recordedVoiceProgressInner"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceDot:I

    const-string v2, "chat_recordedVoiceDot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceBackground:I

    const-string v2, "chat_recordedVoiceBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceDarkerBackground:I

    const-string v2, "chat_recordedVoiceDarkerBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordVoiceCancel:I

    const-string v2, "chat_recordVoiceCancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    const-string v2, "chat_recordTime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCancelInlineBot:I

    const-string v2, "chat_messagePanelCancelInlineBot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    const-string v2, "chat_gifSaveHintText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    const-string v2, "chat_gifSaveHintBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButton:I

    const-string v2, "chat_goDownButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonIcon:I

    const-string v2, "chat_goDownButtonIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounter:I

    const-string v2, "chat_goDownButtonCounter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounterBackground:I

    const-string v2, "chat_goDownButtonCounterBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    const-string v2, "chat_outTextSelectionHighlight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    const-string v2, "chat_inTextSelectionHighlight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    const-string v2, "chat_TextSelectionCursor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionCursor:I

    const-string v2, "chat_outTextSelectionCursor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleLocationPlaceholder:I

    const-string v2, "chat_inBubbleLocationPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleLocationPlaceholder:I

    const-string v2, "chat_outBubbleLocationPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    const-string v2, "chat_BlurAlpha"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    const-string v2, "chat_BlurAlphaSlow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    const-string v2, "chat_editMediaButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listSelector:I

    const-string v2, "voipgroup_listSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    const-string v2, "voipgroup_inviteMembersBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    const-string v2, "voipgroup_actionBar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    const-string v2, "voipgroup_actionBarItems"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    const-string v2, "voipgroup_actionBarItemsSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    const-string v2, "voipgroup_actionBarUnscrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    const-string v2, "voipgroup_listViewBackgroundUnscrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenTextUnscrolled:I

    const-string v2, "voipgroup_lastSeenTextUnscrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIconUnscrolled:I

    const-string v2, "voipgroup_mutedIconUnscrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    const-string v2, "voipgroup_nameText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    const-string v2, "voipgroup_lastSeenText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    const-string v2, "voipgroup_listeningText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    const-string v2, "voipgroup_speakingText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIcon:I

    const-string v2, "voipgroup_mutedIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminIcon:I

    const-string v2, "voipgroup_mutedByAdminIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    const-string v2, "voipgroup_listViewBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    const-string v2, "voipgroup_dialogBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveCallMenu:I

    const-string v2, "voipgroup_leaveCallMenu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_checkMenu:I

    const-string v2, "voipgroup_checkMenu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButton:I

    const-string v2, "voipgroup_soundButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActive:I

    const-string v2, "voipgroup_soundButtonActive"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActiveScrolled:I

    const-string v2, "voipgroup_soundButtonActiveScrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButton2:I

    const-string v2, "voipgroup_soundButton2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActive2:I

    const-string v2, "voipgroup_soundButtonActive2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActive2Scrolled:I

    const-string v2, "voipgroup_soundButtonActive2Scrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveButton:I

    const-string v2, "voipgroup_leaveButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveButtonScrolled:I

    const-string v2, "voipgroup_leaveButtonScrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton:I

    const-string v2, "voipgroup_muteButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton2:I

    const-string v2, "voipgroup_muteButton2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton3:I

    const-string v2, "voipgroup_muteButton3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton:I

    const-string v2, "voipgroup_unmuteButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton2:I

    const-string v2, "voipgroup_unmuteButton2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    const-string v2, "voipgroup_disabledButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_rtmpButton:I

    const-string v2, "voipgroup_rtmpButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButtonActive:I

    const-string v2, "voipgroup_disabledButtonActive"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButtonActiveScrolled:I

    const-string v2, "voipgroup_disabledButtonActiveScrolled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_connectingProgress:I

    const-string v2, "voipgroup_connectingProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_scrollUp:I

    const-string v2, "voipgroup_scrollUp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchPlaceholder:I

    const-string v2, "voipgroup_searchPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchBackground:I

    const-string v2, "voipgroup_searchBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchText:I

    const-string v2, "voipgroup_searchText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayGreen1:I

    const-string v2, "voipgroup_overlayGreen1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayGreen2:I

    const-string v2, "voipgroup_overlayGreen2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayBlue1:I

    const-string v2, "voipgroup_overlayBlue1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayBlue2:I

    const-string v2, "voipgroup_overlayBlue2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGreen1:I

    const-string v2, "voipgroup_topPanelGreen1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGreen2:I

    const-string v2, "voipgroup_topPanelGreen2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelBlue1:I

    const-string v2, "voipgroup_topPanelBlue1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelBlue2:I

    const-string v2, "voipgroup_topPanelBlue2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGray:I

    const-string v2, "voipgroup_topPanelGray"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted:I

    const-string v2, "voipgroup_overlayAlertGradientMuted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted2:I

    const-string v2, "voipgroup_overlayAlertGradientMuted2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted:I

    const-string v2, "voipgroup_overlayAlertGradientUnmuted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted2:I

    const-string v2, "voipgroup_overlayAlertGradientUnmuted2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin:I

    const-string v2, "voipgroup_overlayAlertMutedByAdmin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin2:I

    const-string v2, "voipgroup_overlayAlertMutedByAdmin2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient:I

    const-string v2, "voipgroup_mutedByAdminGradient"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient2:I

    const-string v2, "voipgroup_mutedByAdminGradient2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient3:I

    const-string v2, "voipgroup_mutedByAdminGradient3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminMuteButton:I

    const-string v2, "voipgroup_mutedByAdminMuteButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminMuteButtonDisabled:I

    const-string v2, "voipgroup_mutedByAdminMuteButtonDisabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_windowBackgroundWhiteInputField:I

    const-string v2, "voipgroup_windowBackgroundWhiteInputField"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_windowBackgroundWhiteInputFieldActivated:I

    const-string v2, "voipgroup_windowBackgroundWhiteInputFieldActivated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackground:I

    const-string v2, "passport_authorizeBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackgroundSelected:I

    const-string v2, "passport_authorizeBackgroundSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeText:I

    const-string v2, "passport_authorizeText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    const-string v2, "profile_creatorIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_title:I

    const-string v2, "profile_title"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_actionIcon:I

    const-string v2, "profile_actionIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_actionBackground:I

    const-string v2, "profile_actionBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_actionPressedBackground:I

    const-string v2, "profile_actionPressedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    const-string v2, "profile_verifiedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    const-string v2, "profile_verifiedCheck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_status:I

    const-string v2, "profile_status"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    const-string v2, "profile_tabText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    const-string v2, "profile_tabSelectedText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    const-string v2, "profile_tabSelectedLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    const-string v2, "profile_tabSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    const-string v2, "sharedMedia_startStopLoadIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholder:I

    const-string v2, "sharedMedia_linkPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholderText:I

    const-string v2, "sharedMedia_linkPlaceholderText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    const-string v2, "sharedMedia_photoPlaceholder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const-string v2, "featuredStickers_addedIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonProgress:I

    const-string v2, "featuredStickers_buttonProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const-string v2, "featuredStickers_addButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    const-string v2, "featuredStickers_addButtonPressed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_removeButtonText:I

    const-string v2, "featuredStickers_removeButtonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    const-string v2, "featuredStickers_buttonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_unread:I

    const-string v2, "featuredStickers_unread"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    const-string v2, "stickers_menu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    const-string v2, "stickers_menuSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    const-string v2, "changephoneinfo_image2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    const-string v2, "groupcreate_hintText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_cursor:I

    const-string v2, "groupcreate_cursor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionShadow:I

    const-string v2, "groupcreate_sectionShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionText:I

    const-string v2, "groupcreate_sectionText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    const-string v2, "groupcreate_spanText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    const-string v2, "groupcreate_spanBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    const-string v2, "groupcreate_spanDelete"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    const-string v2, "contacts_inviteBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    const-string v2, "contacts_inviteText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_login_progressInner:I

    const-string v2, "login_progressInner"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_login_progressOuter:I

    const-string v2, "login_progressOuter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_enabledButton:I

    const-string v2, "picker_enabledButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_disabledButton:I

    const-string v2, "picker_disabledButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_badge:I

    const-string v2, "picker_badge"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_badgeText:I

    const-string v2, "picker_badgeText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationBackground:I

    const-string v2, "location_sendLocationBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    const-string v2, "location_sendLocationIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationText:I

    const-string v2, "location_sendLocationText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationBackground:I

    const-string v2, "location_sendLiveLocationBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationIcon:I

    const-string v2, "location_sendLiveLocationIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationText:I

    const-string v2, "location_sendLiveLocationText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_liveLocationProgress:I

    const-string v2, "location_liveLocationProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_placeLocationBackground:I

    const-string v2, "location_placeLocationBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    const-string v2, "location_actionIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionActiveIcon:I

    const-string v2, "location_actionActiveIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionBackground:I

    const-string v2, "location_actionBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionPressedBackground:I

    const-string v2, "location_actionPressedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_liveLocationProgress:I

    const-string v2, "dialog_liveLocationProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    const-string v2, "files_folderIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIconBackground:I

    const-string v2, "files_folderIconBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    const-string v2, "files_iconText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sessions_devicesImage:I

    const-string v2, "sessions_devicesImage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_calls_callReceivedGreenIcon:I

    const-string v2, "calls_callReceivedGreenIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_calls_callReceivedRedIcon:I

    const-string v2, "calls_callReceivedRedIcon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const-string v2, "undo_background"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const-string v2, "undo_cancelColor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    const-string v2, "undo_infoColor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const-string v2, "key_sheet_scrollUp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    const-string v2, "key_sheet_other"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    const-string v2, "player_actionBarSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    const-string v2, "player_actionBarTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    const-string v2, "player_actionBarSubtitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarItems:I

    const-string v2, "player_actionBarItems"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    const-string v2, "player_background"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    const-string v2, "player_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const-string v2, "player_progressBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressCachedBackground:I

    const-string v2, "key_player_progressCachedBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    const-string v2, "player_progress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    const-string v2, "player_button"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_buttonActive:I

    const-string v2, "player_buttonActive"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    const-string v2, "statisticChartSignature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    const-string v2, "statisticChartSignatureAlpha"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartHintLine:I

    const-string v2, "statisticChartHintLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActiveLine:I

    const-string v2, "statisticChartActiveLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartInactivePickerChart:I

    const-string v2, "statisticChartInactivePickerChart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActivePickerChart:I

    const-string v2, "statisticChartActivePickerChart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartRipple:I

    const-string v2, "statisticChartRipple"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartBackZoomColor:I

    const-string v2, "statisticChartBackZoomColor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartChevronColor:I

    const-string v2, "statisticChartChevronColor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    const-string v2, "statisticChartLine_blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    const-string v2, "statisticChartLine_green"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    const-string v2, "statisticChartLine_red"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    const-string v2, "statisticChartLine_golden"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    const-string v2, "statisticChartLine_lightblue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    const-string v2, "statisticChartLine_lightgreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    const-string v2, "statisticChartLine_orange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_indigo:I

    const-string v2, "statisticChartLine_indigo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    const-string v2, "statisticChartLine_purple"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_cyan:I

    const-string v2, "statisticChartLine_cyan"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLineEmpty:I

    const-string v2, "statisticChartLineEmpty"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_lightblue:I

    const-string v2, "color_lightblue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_blue:I

    const-string v2, "color_blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    const-string v2, "color_green"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_lightgreen:I

    const-string v2, "color_lightgreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    const-string v2, "color_red"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    const-string v2, "color_orange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_yellow:I

    const-string v2, "color_yellow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_purple:I

    const-string v2, "color_purple"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_cyan:I

    const-string v2, "color_cyan"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    const-string v2, "chat_outReactionButtonBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    const-string v2, "chat_inReactionButtonBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonText:I

    const-string v2, "chat_outReactionButtonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonText:I

    const-string v2, "chat_inReactionButtonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonTextSelected:I

    const-string v2, "chat_inReactionButtonTextSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonTextSelected:I

    const-string v2, "chat_outReactionButtonTextSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_reactionServiceButtonBackgroundSelected:I

    const-string v2, "chat_reactionServiceButtonBackgroundSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_reactionServiceButtonTextSelected:I

    const-string v2, "chat_reactionServiceButtonTextSelected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient0:I

    const-string v2, "premiumGradient0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    const-string v2, "premiumGradient1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const-string v2, "premiumGradient2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    const-string v2, "premiumGradient3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    const-string v2, "premiumGradient4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    const-string v2, "premiumGradientBackground1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    const-string v2, "premiumGradientBackground2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    const-string v2, "premiumGradientBackground3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    const-string v2, "premiumGradientBackground4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    const-string v2, "premiumGradientBackgroundOverlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor:I

    const-string v2, "premiumStartSmallStarsColor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStarGradient1:I

    const-string v2, "premiumStarGradient1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStarGradient2:I

    const-string v2, "premiumStarGradient2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumCoinGradient1:I

    const-string v2, "premiumCoinGradient1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumCoinGradient2:I

    const-string v2, "premiumCoinGradient2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    const-string v2, "premiumStartSmallStarsColor2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet1:I

    const-string v2, "premiumGradientBottomSheet1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet2:I

    const-string v2, "premiumGradientBottomSheet2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet3:I

    const-string v2, "premiumGradientBottomSheet3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounter:I

    const-string v2, "topics_unreadCounter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounterMuted:I

    const-string v2, "topics_unreadCounterMuted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    const-string v2, "stories_circle1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    const-string v2, "stories_circle2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    const-string v2, "stories_circle_dialog1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    const-string v2, "stories_circle_dialog2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    const-string v2, "stories_circle_closeFriends1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    const-string v2, "stories_circle_closeFriends2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inCodeBackground:I

    const-string v2, "chat_inCodeBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    const-string v2, "chat_outCodeBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_keyword:I

    const-string v2, "code_keyword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_operator:I

    const-string v2, "code_operator"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_constant:I

    const-string v2, "code_constant"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_string:I

    const-string v2, "code_string"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_number:I

    const-string v2, "code_number"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_comment:I

    const-string v2, "code_comment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_function:I

    const-string v2, "code_function"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    const-string v2, "iv_background"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_backgroundGray:I

    const-string v2, "iv_backgroundGray"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_navigationBackground:I

    const-string v2, "iv_navigationBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_ab_progress:I

    const-string v2, "iv_ab_progress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_reactionStarSelector:I

    const-string v2, "reactionStarSelector"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCardShadow:I

    const-string v2, "dialogCardShadow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsBackground:I

    const-string v2, "dialogGiftsBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsTabText:I

    const-string v2, "dialogGiftsTabText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_share_icon:I

    const-string v2, "share_icon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkText:I

    const-string v2, "share_linkText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkBackground:I

    const-string v2, "share_linkBackground"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static createColorKeysStringMap()Ljava/util/HashMap;
    .locals 4

    sget-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ThemeColors;->createColorKeysMap()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createDefaultColors()[I
    .locals 22

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->colorsCount:I

    new-array v0, v0, [I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_wallpaperFileOffset:I

    const/4 v2, 0x0

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v2, -0x1

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    const v3, -0xf0f10

    aput v3, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const v4, -0xddddde

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    const v5, -0xd9874a

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLinkSelection:I

    const v6, 0x3362a9e3

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    const v7, -0xd07337

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const v7, -0xc56a2b

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue4:I

    const v8, -0xe65818

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray:I

    const v8, -0xcb743f

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    const v8, -0x8a8a8b

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    const v8, -0x666667

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    const v8, -0x4c4c4d

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    const v9, -0x686869

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    const v9, -0x989490

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGrayLine:I

    const v9, -0x2d2d2e

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    const v9, -0x904d1b

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputField:I

    const v9, -0x242425

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputFieldActivated:I

    const v10, -0xc85610

    aput v10, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareBackground:I

    const v11, -0xbc5f21

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareUnchecked:I

    const v11, -0x8c8c8d

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCheckboxSquareDisabled:I

    const v11, -0x4f4f50

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    aput v10, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgress:I

    const v11, -0xad825d

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgressBackground:I

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButton:I

    const v11, -0xb66e34

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    const/high16 v11, 0xf000000

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const v12, -0xa0909

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBox:I

    const v12, -0xb34b0b

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBoxCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCameraIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgressBackground:I

    const v12, -0x90f0d0b

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgress:I

    const v12, -0x948c88

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    const v12, -0xd0b0b

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    const v12, -0x675f59

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    const v12, -0x5e5751

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    const v12, -0xb34b0b

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButtonPressed:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    const/high16 v12, 0x12000000

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    const v12, -0x605b58

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    const v12, -0x736f6c

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    const v12, -0x1a9aab

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogReactionMentionBackground:I

    const v12, -0xfaba7

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCardShadow:I

    const/high16 v12, 0x17000000

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsBackground:I

    const v12, -0xa0909

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsTabText:I

    const v12, -0xa9a6a4

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    const v12, -0xd0d0e

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    const v13, -0xb95b0e

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon_soldout:I

    const v13, -0x33b8b9

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_share_icon:I

    const v13, -0x918d8b

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkText:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkBackground:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    const v13, -0x62584f

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const v13, -0xa86127

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const v13, -0xe36c1d

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v13, -0x7e7975

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    const v13, -0xbf6d33

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const v13, -0xe36c1d

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText5:I

    const v13, -0xb37136

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    const v13, -0xc57331

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText7:I

    const v14, -0xc88552

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    const v14, -0xe1772d

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    const v14, -0xc8621b

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    const v14, -0xd968d4

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    const v14, -0xc857e8

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const v14, -0x33d6d7

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    const v14, -0x33b8b9

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    const v14, -0x14a1a2

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const v14, -0x7c736a

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const v14, -0x7d7976

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const v14, -0x666667

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const v14, -0x7f7f80

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText5:I

    const v14, -0x5c5c5d

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    const v14, -0x8a8a8b

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    const v14, -0x39393a

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    const v14, -0x92928e

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const v14, -0x575758

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    aput v10, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const v14, -0x4f4a46

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const v14, -0xad5217

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const v14, -0x7d7167

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    const v14, -0xc37739

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    const v14, 0x17404a53

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    const v14, 0x21024781

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2Track:I

    const v14, -0xa8182

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    const v14, -0xad5217

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    const v14, -0xbc5f21

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    const v14, -0x8c8c8d

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareDisabled:I

    const v14, -0x4f4f50

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    aput v10, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    aput v3, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/high16 v14, -0x1000000

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v15, -0x6a6a6b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const v15, -0x262627

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const v15, -0xa0a0b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const v15, -0x7d7876

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner1:I

    const v15, -0x40200a

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter1:I

    const v15, -0xd4691e

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const v15, -0x40200a

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner3:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter3:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner4:I

    const v8, -0x353230

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter4:I

    const v8, -0xd0cbc8

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    const v15, -0xad5c25

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    const v15, -0x36322f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    const v15, -0x964207

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    const v15, -0xbf601f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchived:I

    const v15, -0x473d34

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    const v15, -0x994006

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/16 v15, -0x7ba2

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Red:I

    const v15, -0x2badba

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    const v15, -0x144a5

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Orange:I

    const v15, -0x97eca

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    const v15, -0x496b07

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Violet:I

    const v15, -0x939e21

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    const v15, -0x652e9c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Green:I

    const v15, -0xb945bd

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    const v15, -0xa4341d

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Cyan:I

    const v15, -0xca652c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    const v15, -0xa35006

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Blue:I

    const v15, -0xbf7531

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    const/16 v15, -0x7554

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    const v15, -0x26aa8c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGray:I

    const v15, -0x5e544b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundInProfileBlue:I

    const v15, -0xaf7a4f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundActionBarBlue:I

    const v15, -0xa67046

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    const v15, -0x281506

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    const v15, -0xb67e53

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageRed:I

    const v15, -0x33afb7

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageOrange:I

    const v15, -0x2988de

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageViolet:I

    const v15, -0x6aa325

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageGreen:I

    const v15, -0xbf56e0

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageCyan:I

    const v15, -0xcf6146

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageBlue:I

    const v15, -0xc9752f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessagePink:I

    const v15, -0x38af75

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const v15, -0xad825d

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultTop:I

    const/high16 v15, 0x10000000

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    const v15, -0x989591

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    const v15, -0x2a1709

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const v15, -0xbf926c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    const/high16 v15, 0x1d000000

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    const v15, -0x77000001

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    const v15, -0x989490

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    const v15, -0xa0a0b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    const v15, -0x1d1d1e

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeReaction:I

    aput v3, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeReactionText:I

    const v15, -0x7d7976

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeReactionDot:I

    const v15, -0x3f3f40

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    const v15, -0x2a1709

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    const v15, -0xbf926c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarBrowser:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_table_background:I

    const v15, -0x80809

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_table_border:I

    const v15, -0x1f1f20

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    const v15, -0x908579

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSelector:I

    const v15, -0xa1988e

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedTitle:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSearch:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSearchPlaceholder:I

    const v15, -0x77000001

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    const v15, -0xb434e4

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    const v15, -0xb133a2

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    const v15, -0x393634

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    const v15, -0x995620

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    const v15, -0x60554d

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    const v15, -0xadadae

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    const v15, -0xff59f2

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretIcon:I

    const v15, -0xe64eda

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    const v15, -0x575758

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    const v15, -0x747271

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_messageArchived:I

    const v15, -0x6e6e6f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    const v15, -0x716f6f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    const v15, -0x22b4c7

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    const v15, -0xc38150

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived:I

    const v15, -0x747271

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    const v15, -0xbdbbb7

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived_threeLines:I

    const v15, -0xa1a1a2

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    const v15, -0xc38150

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    const v15, -0x6a6664

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const/high16 v15, 0x8000000

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabletSelectedOverlay:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentCheck:I

    const v15, -0xb955ca

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentReadCheck:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentClock:I

    const v15, -0x8a42a2

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentError:I

    const v15, -0x2aadae

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentErrorIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    const v15, -0xcc571a

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_muteIcon:I

    const v15, -0x423e3c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_mentionIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    const v15, -0xbbbbbc

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemCheck:I

    const v15, -0xa67046

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    const v15, -0x776e68

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhone:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    const v15, -0x3d1a01

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const v15, -0x9a5620

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    const v15, -0xa9622a

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopBackgroundCats:I

    const v15, -0xa67046

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    const v15, -0x393634

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackgroundActive:I

    const v15, -0x995620

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxBackground:I

    const v15, -0xb34b0b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    const/high16 v15, 0xc000000

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachActiveTab:I

    const v15, -0xcc580b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachUnactiveTab:I

    const v15, -0x6d6662

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPermissionImage:I

    const v15, -0xcccccd

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPermissionMark:I

    const v15, -0x1dafb0

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPermissionText:I

    const v15, -0x908886

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachEmptyImage:I

    const v15, -0x333334

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryBackground:I

    const v15, -0xba620b

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryText:I

    const v15, -0xd17217

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    const v15, -0x149fa0

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioText:I

    const v15, -0x21b8b9

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileBackground:I

    const v15, -0xcb460f

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileText:I

    const v15, -0xeb571c

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    const v15, -0xd3fb5

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactText:I

    const v15, -0x206000

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    const v15, -0x9f3dab

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationText:I

    const v15, -0xc354d1

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    const v15, -0xd3fb5

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollText:I

    const v15, -0x206000

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachTodoBackground:I

    const v15, -0x772b6

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachTodoText:I

    const v15, -0x1e91db

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPollCorrectAnswer:I

    const v15, -0x9f3dab

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPollCorrectAnswer:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPollWrongAnswer:I

    const v15, -0x149fa0

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPollWrongAnswer:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    const v15, -0x2a1709

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    const v15, -0xff37ad

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outGreenCall:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_lockIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_muteIcon:I

    const v15, -0x4e331d

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    const v15, -0x130803

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    const v15, -0xe2c8ad

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    const v15, -0x100022

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    const/high16 v16, 0x14000000

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    const v16, -0x26083b

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    const v16, -0xe18af4

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    const v16, -0x100702

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIconSelected:I

    const v16, -0x1e0731

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    const/high16 v5, 0x66000000

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    const v5, -0xa24fb0

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClock:I

    const v5, -0x8a42a2

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClockSelected:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSentClock:I

    const v5, -0x5e554d

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSentClockSelected:I

    const v16, -0x6c4236

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentClock:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViews:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViewsSelected:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViews:I

    const v16, -0x914da9

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViewsSelected:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaViews:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    const v16, -0x49423b

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenuSelected:I

    const v16, -0x673e32

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenu:I

    const v16, -0x6e3182

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenuSelected:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaMenu:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstant:I

    const v16, -0xaa54b1

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstantSelected:I

    const v17, -0xb766bd

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inInstant:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inInstantSelected:I

    const v17, -0xcf864b

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_sentError:I

    const v17, -0x24cacb

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_sentErrorIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    const v17, 0x280a90f0

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_previewDurationText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_previewGameText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewInstantText:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_secretTimeText:I

    const v17, -0x1b1d20

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerNameText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botButtonText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inForwardedNameText:I

    const v17, -0xc77939

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outForwardedNameText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPsaNameText:I

    const v17, -0xa563c7

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPsaNameText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViaBotNameText:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViaBotNameText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerViaBotNameText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    const v17, -0xa66028

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    const v17, -0x914697

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    const v17, -0xbf56e0

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyLine:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyNameText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageText:I

    const v17, -0x9a4fa5

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    const v18, -0x764b3f

    aput v18, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyMessageText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewLine:I

    const v19, -0x8f4b18

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewLine:I

    const v19, -0x773685

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSiteNameText:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSiteNameText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactNameText:I

    const v19, -0xb1652c

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactNameText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactPhoneText:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactPhoneSelectedText:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneText:I

    const v19, -0xcabdcc

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneSelectedText:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaProgress:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioProgress:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    const v19, -0x100702

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSelectedProgress:I

    const v19, -0x1e0731

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAdminText:I

    const v19, -0x3f3935

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAdminSelectedText:I

    aput v18, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAdminText:I

    const v19, -0x8f4ea4

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAdminSelectedText:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    aput v18, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioPerformerText:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioPerformerSelectedText:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerText:I

    const v19, -0xcabdcc

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerSelectedText:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioTitleText:I

    const v19, -0xb1652c

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioTitleText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioDurationText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioDurationSelectedText:I

    aput v18, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationSelectedText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbar:I

    const v19, -0x1b1510

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioCacheSeekbar:I

    const v19, 0x3fe4eaf0

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbar:I

    const v19, -0x441c54

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioCacheSeekbar:I

    const v19, 0x3fbbe3ac

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarSelected:I

    const v19, -0x432118

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarSelected:I

    const v19, -0x56226a

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarFill:I

    const v19, -0x8d4a18

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarFill:I

    const v20, -0x873d8e

    aput v20, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbar:I

    const v21, -0x211a15

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbar:I

    const v21, -0x441c54

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbarSelected:I

    const v21, -0x432118

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarSelected:I

    const v21, -0x56226a

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbarFill:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarFill:I

    aput v20, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgress:I

    const v21, -0x140f0b

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgress:I

    const v21, -0x250a3d

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgressSelected:I

    const v21, -0x34150a

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgressSelected:I

    const v21, -0x3a1359

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileNameText:I

    const v21, -0xb1652c

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileNameText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoSelectedText:I

    aput v18, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoSelectedText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileBackground:I

    const v21, -0x140f0b

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileBackground:I

    const v21, -0x250a3d

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileBackgroundSelected:I

    const v21, -0x34150a

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileBackgroundSelected:I

    const v21, -0x3a1359

    aput v21, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVenueInfoText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVenueInfoSelectedText:I

    aput v18, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoSelectedText:I

    aput v17, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaInfoText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLinkSelectBackground:I

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_textSelectBackground:I

    const v6, 0x6662a9e3

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    const v6, -0xf0d0b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    const v6, -0x1a1612

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    const v6, -0x6b5e51

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    const/high16 v6, 0x12000000

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    const v6, -0x6b645f

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    const v6, -0x625b55

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    const v6, -0x736e69

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    const v6, -0xa1968a

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelector:I

    const v6, -0x1d1a19

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    const v6, -0xa95410

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    const v6, -0x736e69

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingTitle:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    const v6, -0x7d746c

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetNameHighlight:I

    const v6, -0xd87225

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetNameIcon:I

    const v6, -0x4e4944

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingDescription:I

    const v6, -0x757576

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonText:I

    const v6, -0xc9b8b1

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonBackground:I

    const v6, -0x1b1817

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonBackgroundPressed:I

    const v6, -0x332e2c

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartArrowIcon:I

    const v6, -0x5d4a39

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartText:I

    const v6, -0xa96a34

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationBackground:I

    const v6, -0x140f0b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationIcon:I

    const v6, -0x5d4a39

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLocationIcon:I

    const v6, -0x784088

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactBackground:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactBackground:I

    aput v20, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactIcon:I

    aput v15, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelIcons:I

    const v6, -0x989591

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelText:I

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_secretChatStatusText:I

    const v6, -0x808081

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickersHintPanel:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelIcons:I

    const v6, -0xa8571a

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelClose:I

    const v6, -0x716a65

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelName:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelLine:I

    const v6, -0x171718

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    const v6, -0x5b534d

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCursor:I

    const v6, -0xab5e25

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    const v6, -0x716a65

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoicePlayPause:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceDot:I

    const v6, -0x25a9b3

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceBackground:I

    const v6, -0xa25218

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceDarkerBackground:I

    const v6, -0xe07625

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceProgress:I

    const v6, -0x4e2101

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceProgressInner:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordVoiceCancel:I

    const v6, -0xc56a2c

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    const v6, -0x9d4f15

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    const v6, -0x5b5b5c

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockShadow:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    const v6, -0x716a65

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelNewTrending:I

    const v6, -0xb25916

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    const v6, -0x33eeeeef    # -3.8028356E7f

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButton:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonIcon:I

    const v6, -0x716a65

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounter:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounterBackground:I

    const v6, -0xb25d18

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCancelInlineBot:I

    const v6, -0x525253

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    const v6, -0xa25922

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceDelete:I

    const v6, -0x8c8c8d

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceDuration:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inlineResultIcon:I

    const v6, -0xa86a34

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    const v6, -0x746965

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelLine:I

    const v6, -0x93602e

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelTitle:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelMessage:I

    const v6, -0x78716f

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_addContact:I

    const v6, -0xb57d4b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    const v6, -0x9a5420

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    aput v20, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoaderSelected:I

    const v6, -0x954a9c

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderPhoto:I

    const v6, -0x5d4738

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    const/high16 v6, 0x66000000

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    const/high16 v6, 0x7f000000

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    const v6, -0x262627

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackgroundSelector:I

    const v6, 0x20ffffff

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inQuote:I

    const v6, -0xba6428

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outQuote:I

    const v6, -0x9547a0

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_actionIcon:I

    const v6, -0x7e7976

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_actionBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_actionPressedBackground:I

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    const v6, -0x4d2908

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    const v6, -0xb67c48

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_title:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_status:I

    const v6, -0x281506

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    const v6, -0x787370

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    aput v7, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    const v6, -0xb05917

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    const v6, -0x757576

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarItems:I

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    const v6, -0x736d6a

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const v6, -0x141210

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressCachedBackground:I

    const v6, -0x3a2310

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    const v6, -0xab5515

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    const v6, -0xcccccd

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_buttonActive:I

    const v6, -0xb35716

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const v6, -0x1e1b18

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    const v6, -0x36322d

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIconBackground:I

    const v6, -0xa25015

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sessions_devicesImage:I

    const v6, -0x69696a

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackground:I

    const v6, -0xba5411

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackgroundSelected:I

    const v6, -0xbf6225

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationBackground:I

    const v6, -0xb9620a

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationText:I

    const v6, -0xe37528

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationBackground:I

    const v6, -0xb03dbc

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationIcon:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationText:I

    const v6, -0xc954dc

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_liveLocationProgress:I

    const v6, -0xca601b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_placeLocationBackground:I

    const v6, -0xb35716

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    const v6, -0xc5bfbb

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionActiveIcon:I

    const v6, -0xbd6f1a

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionPressedBackground:I

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_liveLocationProgress:I

    const v6, -0xca601b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_calls_callReceivedGreenIcon:I

    const v6, -0xff37ad

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_calls_callReceivedRedIcon:I

    const v6, -0xb7b8

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const v6, -0xaf5715

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonProgress:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    const v6, -0xbc6422    # -2.6000877E38f

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_removeButtonText:I

    const v6, -0xaf6c2d

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_unread:I

    const v6, -0xb25916

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    aput v8, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPlayPause:I

    const v6, -0x9d4f15

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    const v6, -0x746965

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    const v6, -0xbb5e1d

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallMutedBackground:I

    const v6, -0x62584f

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    const v6, -0xc95d12

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholder:I

    const v6, -0xf0c0b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholderText:I

    const v6, -0x48413d

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    const v6, -0x120c09

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const v6, -0xa13dbb

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    const v6, -0x4f463e

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    const v6, -0x49423b

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    aput v11, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    const v6, -0xaf5816

    aput v6, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_cursor:I

    const v5, -0xad5c25

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionShadow:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionText:I

    const v5, -0x837d78

    aput v5, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    aput v12, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    const v4, -0xaa419f

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_login_progressInner:I

    const v4, -0x1e150e

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_login_progressOuter:I

    const v4, -0x9d5f30

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_enabledButton:I

    const v4, -0xe65818

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_disabledButton:I

    const v4, -0x666667

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_badge:I

    const v4, -0xd64909

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_picker_badgeText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botSwitchToInlineText:I

    const v4, -0xbc6e34

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const v4, -0x15d8d0c8

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const v4, -0x7a3501

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    const v4, 0x2e3f9923

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    const v4, 0x5062a9e3

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    const v4, -0xbe6018

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionCursor:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleLocationPlaceholder:I

    const v4, 0x1e307311

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleLocationPlaceholder:I

    const v4, 0x1e506373

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    const v4, -0xe56301

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    const v4, 0x7f252529

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartHintLine:I

    const v4, 0x1a182d3b

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActiveLine:I

    const/high16 v4, 0x33000000

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartInactivePickerChart:I

    const v4, -0x661d1107

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActivePickerChart:I

    const v4, -0x27453327

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartRipple:I

    const v4, 0x2c7e9db7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartBackZoomColor:I

    const v4, -0xef741d

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartChevronColor:I

    const v4, -0x2d2a29

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    const v4, -0xcd801b

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    const v4, -0x9e38ae

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    const v4, -0x1facaa

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    const v4, -0x145ad3

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    const v4, -0xa75713

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    const v4, -0x7030c7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    const v4, -0xd73c7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_indigo:I

    const v4, -0x80860d

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    const v4, -0x608618

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_cyan:I

    const v4, -0xbf2f36

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLineEmpty:I

    const v4, -0x111112

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_blue:I

    const v4, -0xcd801b

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    const v4, -0x9e38ae

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    const v4, -0x1facaa

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_yellow:I

    const v4, -0x145ad3

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_lightblue:I

    const v4, -0xa75713

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_lightgreen:I

    const v4, -0x7030c7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    const v4, -0xd73c7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_purple:I

    const v4, -0x608618

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_cyan:I

    const v4, -0xbf2f36

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_checkMenu:I

    const v4, -0x944907

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton:I

    const v4, -0x881aa4

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton2:I

    const v4, -0x822356

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton3:I

    const v4, -0xa93802

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchPlaceholder:I

    const v4, -0x7a726c

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchBackground:I

    const v4, -0xcfc4b9

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveCallMenu:I

    const v4, -0x8a8b

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_scrollUp:I

    const v4, -0xc6b9ac

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButton:I

    const v4, 0x7d2c414d

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActive:I

    const v4, 0x7d22a4eb

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActiveScrolled:I

    const v4, -0x7dcc4b01

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButton2:I

    const v4, 0x7d28593a

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActive2:I

    const v4, 0x7d18b751

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_soundButtonActive2Scrolled:I

    const v4, -0x7ddb40ba

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveButton:I

    const v4, 0x7df75c5c

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveButtonScrolled:I

    const v4, -0x7d2eb2ac

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_connectingProgress:I

    const v4, -0xd74501

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    const v4, -0xe3ddd7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_rtmpButton:I

    const v4, -0xd5c7ad

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButtonActive:I

    const v4, -0xd3c5bb

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButtonActiveScrolled:I

    const v4, -0x7d885e04

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton:I

    const v4, -0xac6108

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton2:I

    const v4, -0x992b05

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    const v4, -0xe6e0da

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    const v4, -0xddd5cd

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenTextUnscrolled:I

    const v4, -0x7a726c

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIconUnscrolled:I

    const v4, -0x817974

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    const v4, -0xf0ece9

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    const v4, 0x1ebadbff

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminIcon:I

    const v4, -0x8f90

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIcon:I

    const v4, -0x908680

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    const v4, -0x867c76

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    const v4, -0xe3ddd7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    const v4, -0xb24701

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    const v4, -0x881183

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listSelector:I

    const v4, 0xeffffff

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    const v4, -0xddd5cd

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayBlue1:I

    const v4, -0xd43101

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayBlue2:I

    const v4, -0xf6891d

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayGreen1:I

    const v4, -0xed4ade

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayGreen2:I

    const v4, -0xff293f

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelBlue1:I

    const v4, -0x9f3805

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelBlue2:I

    const v4, -0xae6007

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGreen1:I

    const v4, -0xad31a3

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGreen2:I

    const v4, -0xff4e40

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGray:I

    const v4, -0x7a6656

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted:I

    const v4, -0xdc926e

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted2:I

    const v4, -0xd3b295

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted:I

    const v4, -0xf37574

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted2:I

    const v4, -0xd7b38b

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient:I

    const v4, -0xa85b02

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient2:I

    const v4, -0xfaba7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient3:I

    const v4, -0x899117

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin:I

    const v4, -0x988f62

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin2:I

    const v4, -0xd0af88

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminMuteButton:I

    const v4, 0x7f78a3ff    # 3.3050006E38f

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminMuteButtonDisabled:I

    const v4, 0x3378a3ff

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_windowBackgroundWhiteInputField:I

    aput v9, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_windowBackgroundWhiteInputFieldActivated:I

    aput v10, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    aput v20, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    aput v19, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonText:I

    aput v13, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonText:I

    aput v16, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonTextSelected:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonTextSelected:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_reactionServiceButtonBackgroundSelected:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_reactionServiceButtonTextSelected:I

    aput v14, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient0:I

    const v4, -0xb532bd

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    const v4, -0xaa5a01

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const v4, -0x589801

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    const v4, -0x24a363

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    const v4, -0xc76da

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    const v4, -0xaa5a01

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    const v4, -0x589801

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    const v4, -0x24a363

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    const v4, -0xc76da

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStarGradient1:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStarGradient2:I

    const v4, -0x1c1306

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumCoinGradient1:I

    const v4, -0xeb8c01

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumCoinGradient2:I

    const v4, -0x3f9906

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor:I

    const/16 v4, 0x5a

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    const/16 v4, 0x5a

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet1:I

    const v4, -0xa46219

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet2:I

    const v4, -0x547823

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet3:I

    const v4, -0x186b42

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounter:I

    const v4, -0xb133a2

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounterMuted:I

    const v4, -0x747271

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    const v4, -0x137ba

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    const v4, -0x136df6

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    const v4, -0xc620c4

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    const v4, -0xb24401

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    const v4, -0xb512ab

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    const v4, -0xb23c01

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    const v4, -0x3614c8

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    const v4, -0xf63e99

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inCodeBackground:I

    const v4, -0x907762

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    const v4, 0x123c7503

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_keyword:I

    const v4, -0x1facaa

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_operator:I

    const v4, -0xb24401

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_constant:I

    const v4, -0x80860d

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_string:I

    const v4, -0x9e38ae

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_number:I

    const v4, -0xcd801b

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_comment:I

    const/high16 v4, -0x80000000

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_code_function:I

    const v4, -0xd73c7

    aput v4, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_backgroundGray:I

    aput v3, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_ab_progress:I

    const v2, -0xaf5715

    aput v2, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_navigationBackground:I

    aput v3, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_reactionStarSelector:I

    const v2, 0x40f0ab1f

    aput v2, v0, v1

    return-object v0
.end method

.method public static getStringName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ThemeColors;->createColorKeysMap()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static stringKeyToInt(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysStringMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ThemeColors;->createColorKeysStringMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysStringMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/ThemeColors;->colorKeysStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
