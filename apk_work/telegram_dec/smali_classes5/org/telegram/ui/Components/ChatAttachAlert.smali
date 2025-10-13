.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    }
.end annotation


# instance fields
.field public final ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

.field private final ATTACH_ALERT_PROGRESS:Landroid/util/Property;

.field public actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private allowDrawContent:Z

.field public allowEnterCaption:Z

.field protected allowOrder:Z

.field protected allowPassConfirmationAlert:Z

.field private appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final attachButtonPaint:Landroid/graphics/Paint;

.field private attachItemSize:I

.field private audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

.field protected avatarPicker:I

.field protected avatarSearch:Z

.field protected avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

.field public final baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private baseSelectedTextViewTranslationY:F

.field private botAttachLayouts:Landroid/util/LongSparseArray;

.field private botButtonProgressWasVisible:Z

.field private botButtonWasVisible:Z

.field private botMainButtonOffsetY:F

.field private botMainButtonTextView:Landroid/widget/TextView;

.field private botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private bottomPannelTranslation:F

.field private buttonPressed:Z

.field private buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

.field private buttonsAnimation:Landroid/animation/AnimatorSet;

.field private buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field public canOpenPreview:Z

.field public captionAbove:Z

.field private captionContainer:Landroid/widget/FrameLayout;

.field private captionEditTextTopOffset:F

.field protected captionLimitBulletinShown:Z

.field private final captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

.field private chatActivityEnterViewAnimateFromTop:F

.field private codepointCount:I

.field public colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

.field public commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private commentTextViewLocation:[I

.field private commentsAnimator:Landroid/animation/AnimatorSet;

.field private confirmationAlertShown:Z

.field private contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

.field protected cornerRadius:F

.field public final currentAccount:I

.field private currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private currentLimit:I

.field currentPanTranslationY:F

.field public customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field public destroyed:Z

.field public dialogId:J

.field private documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

.field private documentsDelegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

.field private documentsEnabled:Z

.field protected doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private editType:I

.field protected editingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private effectId:J

.field private enterCommentEventSent:Z

.field private exclusionRects:Ljava/util/ArrayList;

.field private exclustionRect:Landroid/graphics/Rect;

.field public forUser:Z

.field private final forceDarkTheme:Z

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private fromScrollY:F

.field protected headerView:Landroid/widget/FrameLayout;

.field public inBubbleMode:Z

.field public isBizLocationPicker:Z

.field public isPhotoPicker:Z

.field private isSoundPicker:Z

.field public isStickerMode:Z

.field public isStoryAudioPicker:Z

.field public isStoryLocationPicker:Z

.field private layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

.field protected maxSelectedPhotos:I

.field protected mediaPreviewTextView:Landroid/widget/TextView;

.field protected mediaPreviewView:Landroid/widget/LinearLayout;

.field public mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private menuAnimator:Landroid/animation/AnimatorSet;

.field private menuShowed:Z

.field private messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

.field public moveCaptionButton:Landroid/widget/FrameLayout;

.field public moveCaptionButtonIcon:Landroid/widget/ImageView;

.field private musicEnabled:Z

.field private nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private openTransitionFinished:Z

.field protected openWithFrontFaceCamera:Z

.field protected optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private overrideBackgroundColor:Z

.field private paint:Landroid/graphics/Paint;

.field public parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field public parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field protected paused:Z

.field private photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field private photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

.field private photosEnabled:Z

.field public pinnedToTop:Z

.field private plainTextEnabled:Z

.field private pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field private pollsEnabled:Z

.field private previousScrollOffsetY:I

.field private quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

.field private rect:Landroid/graphics/RectF;

.field private restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

.field public scrollOffsetY:[I

.field protected searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected selectedArrowImageView:Landroid/widget/ImageView;

.field private selectedCountView:Landroid/view/View;

.field private selectedId:J

.field protected selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected selectedTextView:Landroid/widget/TextView;

.field protected selectedView:Landroid/widget/LinearLayout;

.field sendButtonEnabled:Z

.field private sendButtonEnabledProgress:F

.field public sent:Z

.field private setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

.field private shadow:Landroid/view/View;

.field private final showingFromDialog:Z

.field public sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field public storyLocationPickerFileIsVideo:Z

.field public storyLocationPickerLatLong:[D

.field public storyLocationPickerPhotoFile:Ljava/io/File;

.field public storyMediaPicker:Z

.field private textPaint:Landroid/text/TextPaint;

.field private toScrollY:F

.field private todoEnabled:Z

.field private todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private final topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

.field public topCommentContainer:Landroid/widget/FrameLayout;

.field public topCommentMoveButton:Landroid/widget/ImageView;

.field public topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field public translationProgress:F

.field protected typeButtonsAvailable:Z

.field private videosEnabled:Z

.field private viewChangeAnimator:Ljava/lang/Object;

.field private writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private writeButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-99chViLMlzljSI9InLeRaxrCv4(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$30(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-oLBd0r9iPSPxVbAU4ryT9Wgwc8(Lorg/telegram/ui/Components/ChatAttachAlert;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$19(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$-wN9-9TX4kbiaSXxDARGHuuirnI(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$29(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0JgIwG6mfPT2jnuAzscDpwLCXDY(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    return-void
.end method

.method public static synthetic $r8$lambda$0RcI7WS6Xxikl1O6gqzZGCNHZR8(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$35(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0xfYz-_z0sLaCUD9iVKgo7h6EeQ(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$44(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0zuABpE2y0YaKeGSqnqMZZcSQm4(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$14(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2YU1Lm7onyGrw-lJMIhjZT6qPHc(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openAudioLayout$41(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3wxWeBNyCEO5iZtp_hKGx_X0vFs(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$4YJJAY7bk72DA8l6SE4V374AtzM(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$57(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4niSmGL_-wtjCrHxK3gzE3PjQC4(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showCaptionLimitBulletin$32(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5hLd5XISbMncMkF8GMrzJ_GCt0U(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$makeFocusable$48(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6h4B1NW1K-RRQS3rzCwDm9dj3uw(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$97u0FUirtdjzjpttLehp5U8x4xY(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$22(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AlTxZLdfKs88rmoWfP0D_lQeFdY(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$56(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AyZz54T3dOdSl_VYIQdJISfWmag(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$makeFocusable$49(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$D81eyZddm5plo3-Bc5IkkD063xg(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$47(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJkyeC8TlSefqb1o5awe2Fu3ro4(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$init$50(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FhQRuxqYtOrjPTWqYE2ayya2naQ(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G92b4a2mbUxN3cXqJC-NK2lFiSM(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$3(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GnRUwPrSGyS3Kh9N0r2GPKxvcS0(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$K8Z9HuyJerRK0ARn9xyylNaLMEo(Lorg/telegram/ui/Components/ChatAttachAlert;JZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$21(JZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$KElIBQ24NWdy1S-KscQoaHOW7e0(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$23(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KTQyhnO4RydxtDi8uXpT1uJpF38(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$34(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8RQMBW39HFZCRF5yGqyT1VIieo(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$54(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LFQxk_XS5ILIRqtFHmWF-y35OHA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$10(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OL0eRl_mEFGaOrOIN4as6dxyV2c(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$12(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R5nEHqiOaWbp8E7PjV8bNzsYRsg(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RwBM5KHP4rx4HjWGb9shJvyqnLk(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$40(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SF7tOSKvBt2JnAsvSaCHSg858iw(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFB4ZJvdH9k4x0kzPasAwPJrnyM(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$45(Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W3h7dhNxp0_dQck_NFmjZQe0hE0(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMSmK8SlaZtviwlY2OjlnjqTGJ8(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YeAnQ7DTg8l2pOk_jU4ySXWVauA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaiegkP2OISp7r_c7Rt5MOTp0tg(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Z4S8LiU3CHZLx47BrXie0OllJs(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$46(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$a_AD9bonweqtT-S9bAWztkYfKcs(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aamBIqM8oIAs3n7IeN3A4n79ljU(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$26(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ai2FA82ybjwXh6Cedb3IitMEh_Q(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$58(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bPG2EWtnWWjSSzVyWtkMc-m314o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$17(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bRY7iGNIiAj6u57a3QrqkGzMZgQ(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cJYIQ2_uQSYTFFUUHjYGlEFaPWM(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$31(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hbOt5I2AXc4F3vmMaBgJQRbIfIM(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$52(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNe9p20joXg2-nzppOmVwN4KI6w(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$7(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0B_Cht11vuMpoy7xpnRgas5uZ0(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$11(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j6jS515W8bUaxbQnOXWMPLMasqM(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$55(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jak34idK-Ed0Dw2xR8jfdKpBKX4(Lorg/telegram/ui/Components/ChatAttachAlert;ZIJZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$sendPressed$36(ZIJZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p9NDhqrItrXOgHUzNzGd1qdzR5c(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openColorsLayout$42(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qYoKd6C9JmSuAopgQpc7jtcL0_8(Lorg/telegram/ui/Components/ChatAttachAlert;FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$38(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdeLdnVEOGJ9r2a3Vc8RUv-yAhg(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$33(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$spFo37kflnbDn7xxNhrkZhG1WFI(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$20(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKOfxq-NG4ChNyAAte81p93FAQM(Lorg/telegram/ui/Components/ChatAttachAlert;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$24(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$uoqd09zHUGDWGPEB4ZxpD1LXgrg(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$13(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$v306JwONIe4YiO9FSglnjtzOP8I(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vBeVoKWe6kO0OVEzJBIyVbz23sY(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$27(JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBKhyrsfDEKC4burGS__8zPRxfU(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$53(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xCgSX6fgZY2ztrol4hfczVs1D_U(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$39(ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcKmIx0vL5S-vbP77Db6cTV7mmI(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$51(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xyMJsIwTf4Lagr2iiVXkzIuV4pk(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$25(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGIrLV975TG6vwo-AusoCz7IW_w(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showCommentTextView$43(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V
    .locals 7

    .line 0
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 35

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v7, p4

    move-object/from16 v12, p6

    const/4 v13, 0x0

    invoke-direct {v8, v9, v13, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->isBizLocationPicker:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    const-string v1, "translation"

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    const/16 v15, 0x8

    new-array v0, v15, [Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    const/4 v6, 0x2

    new-array v0, v6, [I

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    new-instance v0, Landroid/text/TextPaint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    iput v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    const/4 v3, -0x1

    iput v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-array v1, v6, [I

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$25;

    const-string v2, "openProgress"

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowDrawContent:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    instance-of v1, v10, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v8, v13, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setImageReceiverNumLevel(II)V

    :cond_0
    iput-boolean v11, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    iput-boolean v7, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->showingFromDialog:Z

    iput-boolean v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    iput-object v10, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    invoke-virtual {v8, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v1, v8, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v1, v8, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v1, v8, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v0, v8, v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v1, v13, v1, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, v8, v9, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v4

    move v15, v1

    move-object/from16 v1, p1

    move/from16 v22, v2

    const/4 v14, 0x4

    move-object/from16 v2, v21

    move/from16 v23, v3

    move/from16 v3, v19

    move-object v14, v4

    move/from16 v4, v18

    move/from16 v5, v20

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v14, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move/from16 v5, v23

    invoke-virtual {v8, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v4, 0x6

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v2, 0x0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object v13, v3

    move/from16 v3, v18

    move/from16 v4, v17

    move/from16 v24, v5

    move/from16 v5, v19

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move/from16 v6, v24

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v10, :cond_2

    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v13, v5

    move/from16 v5, v17

    move v10, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;

    invoke-direct {v1, v8, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    sget v2, Lorg/telegram/messenger/R$string;->StickerCreateEmpty:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;

    invoke-direct {v1, v8, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, -0x3ec00000    # -12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setMenuYOffset(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/4 v13, -0x2

    invoke-static {v13, v13, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v25, -0x2

    const/16 v26, -0x2

    const/16 v27, 0x10

    const/16 v28, 0x4

    const/16 v29, 0x1

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->attach_arrow_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/16 v30, 0x4

    const/16 v28, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AttachMediaPreview:I

    const-string v3, "AttachMediaPreview"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {v13, v13, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-static {v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v15, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object v6, v4

    move/from16 v4, p5

    const/high16 v10, -0x40800000    # -1.0f

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v0, 0x0

    aput-object v6, v15, v0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const-wide/16 v1, 0x1

    iput-wide v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v15, -0x1

    invoke-static {v15, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/high16 v30, 0x41400000    # 12.0f

    const/16 v31, 0x0

    const/16 v25, -0x1

    const/high16 v26, -0x40000000    # -2.0f

    const/16 v27, 0x33

    const/high16 v28, 0x41b80000    # 23.0f

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v2, 0x37

    invoke-static {v15, v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x30

    const/16 v3, 0x35

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_3

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_4

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/16 v30, 0x0

    const/high16 v31, 0x41000000    # 8.0f

    const/16 v25, 0x20

    const/high16 v26, 0x42000000    # 32.0f

    const/16 v27, 0x15

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v13, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    invoke-static {v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    sget v1, Lorg/telegram/messenger/R$drawable;->attach_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    invoke-direct {v1, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    const/16 v30, 0x0

    const/high16 v31, 0x42a80000    # 84.0f

    const/16 v25, -0x1

    const/high16 v26, 0x40000000    # 2.0f

    const/16 v27, 0x53

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v1, v22

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x54

    const/16 v4, 0x53

    invoke-static {v15, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;

    invoke-direct {v1, v8, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-static {v15, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v30, 0x41200000    # 10.0f

    const/high16 v31, 0x41200000    # 10.0f

    const/16 v25, 0x1c

    const/high16 v26, 0x41e00000    # 28.0f

    const/16 v27, 0x55

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3fc00000    # 1.5f

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v14, v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButtonIcon:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButtonIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-direct {v2, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButtonIcon:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_link_above:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButtonIcon:Landroid/widget/ImageView;

    const/16 v5, 0x77

    invoke-static {v15, v15, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x26

    const/16 v2, 0x20

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v10

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v10

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    invoke-direct {v0, v8, v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v15, v15, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v15, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/high16 v30, 0x41600000    # 14.0f

    const/high16 v31, 0x429c0000    # 78.0f

    const/16 v25, 0x38

    const/high16 v26, 0x41a00000    # 20.0f

    const/high16 v28, 0x40400000    # 3.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move-object/from16 v2, p1

    move-object v14, v3

    move-object/from16 v3, v22

    move/from16 v32, v4

    move-object/from16 v4, v21

    move/from16 v5, v17

    move-object/from16 v33, v6

    move/from16 v6, v19

    move-object/from16 v34, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v7, Lorg/telegram/messenger/R$string;->AddCaption:I

    const-string v0, "AddCaption"

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v30, 0x42a80000    # 84.0f

    const/16 v31, 0x0

    const/16 v25, -0x1

    const/high16 v26, -0x40000000    # -2.0f

    const/16 v27, 0x53

    const/16 v28, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    iget-object v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v14, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    move-object/from16 v2, p2

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v30, 0x42100000    # 36.0f

    const/high16 v26, -0x40800000    # -1.0f

    const/16 v27, 0x13

    const/high16 v28, 0x42400000    # 48.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    const/16 v30, 0x0

    const/16 v25, 0x28

    const/high16 v26, 0x42200000    # 40.0f

    const/16 v27, 0x53

    const/16 v28, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v1, "AddCaption"

    invoke-static {v1, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v3, 0x77

    invoke-static {v15, v13, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    move/from16 v1, v32

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v25, 0x2e

    const/high16 v26, 0x41a00000    # 20.0f

    const/16 v27, 0x55

    const/high16 v28, 0x40400000    # 3.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_link_below:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    move-object/from16 v5, v34

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    const/high16 v30, 0x40000000    # 2.0f

    const/16 v31, 0x0

    const/16 v25, 0x28

    const/high16 v26, 0x42200000    # 40.0f

    const/16 v28, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x55

    const/16 v5, 0x6e

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    sget v1, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-direct {v0, v8, v9, v1, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->center:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-static {v5, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCircleSize(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCirclePadding(FF)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;

    invoke-direct {v1, v8, v2, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;

    invoke-direct {v1, v8, v9, v12, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    iput v15, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    :cond_5
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->overrideBackgroundColor:Z

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->overrideBackgroundColor:Z

    return p1
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    return-object p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p1
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static synthetic access$12302(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p1
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static synthetic access$12502(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return p0
.end method

.method static synthetic access$12602(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return p1
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    return p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p0
.end method

.method static synthetic access$13001(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p1
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p0
.end method

.method static synthetic access$13202(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p1
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    return p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    return-object p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$14200(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method static synthetic access$14300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object p0
.end method

.method static synthetic access$14400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    return p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$15100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$15200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$15300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsDelegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-object p0
.end method

.method static synthetic access$15500(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    return-void
.end method

.method static synthetic access$15600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$15602(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    return-object p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$16400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$16500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$16600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$16702(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$16802(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    return-void
.end method

.method static synthetic access$17300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$17302(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$17400(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    return p0
.end method

.method static synthetic access$17502(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$17600(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$17700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    return p0
.end method

.method static synthetic access$17800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    return p0
.end method

.method static synthetic access$17900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    return-object p0
.end method

.method static synthetic access$18000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    return p0
.end method

.method static synthetic access$18100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    return p0
.end method

.method static synthetic access$18200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    return p0
.end method

.method static synthetic access$18300(Lorg/telegram/ui/Components/ChatAttachAlert;IILjava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$18402(Lorg/telegram/ui/Components/ChatAttachAlert;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    return-wide p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/MessageSendPreview;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private applyAttachButtonColors(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15800(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$16900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$17000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)F

    move-result p1

    :goto_0
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$17100(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$17200(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)F

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private createMentionsContainer()V
    .locals 11

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$29;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlert$29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x53

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setupMentionContainer(Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    return-void
.end method

.method private getScrollOffsetY(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p1, v0, p1

    return p1
.end method

.method private isLightStatusBar()Z
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private synthetic lambda$dismiss$51(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$52(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x44bb8000    # 1500.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private synthetic lambda$dismiss$53(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    return-void
.end method

.method private synthetic lambda$dismiss$54(I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$init$50(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 7

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v0, p5

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    const-wide/16 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method private static synthetic lambda$makeFocusable$48(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$makeFocusable$49(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    if-eqz p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda51;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JZ)V

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->updateAttachMenuBotsInCache()V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda57;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Ljava/lang/Boolean;)V
    .locals 3

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->write_allowed:Z

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    const/16 p1, 0x42

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v3, :cond_0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    instance-of v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    if-ne v4, v6, :cond_5

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez v3, :cond_4

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v6, v0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x3

    const/16 v8, 0x21

    const/16 v9, 0x17

    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v11, 0x4

    if-ne v4, v7, :cond_9

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_7

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v11}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_7
    if-lt v1, v9, :cond_8

    invoke-static {v3, v10}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_8
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    goto/16 :goto_3

    :cond_9
    if-ne v4, v11, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_c

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v4

    const-string v7, "android.permission.READ_MEDIA_VIDEO"

    if-nez v4, :cond_b

    invoke-static {v3, v7}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v11}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_c
    if-lt v1, v9, :cond_d

    invoke-static {v3, v10}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_d
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x5

    if-ne v4, v3, :cond_11

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_10

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {v1, v4}, Landroidx/core/widget/TextViewCompat$OreoCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto/16 :goto_3

    :cond_11
    const/4 v7, 0x6

    if-ne v4, v7, :cond_16

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v4

    if-eqz v4, :cond_12

    return-void

    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-nez v4, :cond_13

    return-void

    :cond_13
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v4, :cond_14

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v7, v0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_3

    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-nez v4, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v0, v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    aput-object v6, v4, v3

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V

    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    goto/16 :goto_1

    :cond_16
    const/16 v3, 0x9

    if-ne v4, v3, :cond_1a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    if-nez v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v4

    if-eqz v4, :cond_17

    return-void

    :cond_17
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    if-nez v4, :cond_18

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v3, v0, v6, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_2
    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_3

    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-nez v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v0, v7, v5, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    aput-object v4, v3, v6

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    goto/16 :goto_1

    :cond_1a
    const/16 v7, 0xb

    if-ne v4, v7, :cond_1b

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openQuickRepliesLayout()V

    goto :goto_3

    :cond_1b
    const/16 v7, 0xc

    if-ne v4, v7, :cond_1f

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v4

    if-eqz v4, :cond_1c

    return-void

    :cond_1c
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    if-nez v4, :cond_1d

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v3, v0, v6, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-nez v3, :cond_1e

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v0, v7, v6, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    aput-object v4, v3, v6

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V

    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    goto/16 :goto_1

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_20

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-interface/range {v6 .. v16}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    :cond_20
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    if-gez v1, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_4

    :cond_21
    add-int/2addr v3, v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-le v3, v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_4

    :cond_22
    instance-of v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v1, :cond_25

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    if-eqz v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    const/4 v1, 0x0

    invoke-static {v3, v4, v1, v1}, Lorg/telegram/ui/WebAppDisclaimerAlert;->show(Landroid/content/Context;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_23
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v1

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v3, v4, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JZ)V

    goto :goto_4

    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_25
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_26
    :goto_5
    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;I)Z
    .locals 1

    instance-of p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$18500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$15(Landroid/view/View;)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getWebViewContainer()Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onMainButtonPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->toggleCaptionAbove()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$17(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$18(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->toggleCaptionAbove()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$19(ZI)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v5

    const-wide/16 v3, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIJZ)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onMenuItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$20(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 8

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->needResendWhenEdit()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    iget-object v0, p3, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    invoke-static {v0}, Lorg/telegram/messenger/MessageSuggestionParams;->of(Lorg/telegram/tgnet/TLRPC$SuggestedPost;)Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v2, v0, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsController;->isEnoughAmount(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChatActivity;->showSuggestionOfferForEditMessage(Lorg/telegram/messenger/MessageSuggestionParams;)V

    return-void

    :cond_1
    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr p3, v0

    if-gez p3, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 p3, 0x3

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    if-le p2, p3, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda47;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {p1, v0, v1, p3, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, p1, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIJZ)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$21(JZI)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v6, 0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v5

    move v1, p3

    move v2, p4

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIJZ)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v5

    move-object v0, p0

    move v1, p3

    move v2, p4

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    move-result p1

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p2, :cond_3

    xor-int/2addr p1, v6

    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$22(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 8

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/MessageSendPreview;->getSelectedEffect()J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iput-wide v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p3, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->forceKeyboardOnDismiss()V

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p3, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 p3, 0x3

    const/4 v2, 0x2

    invoke-virtual {p2, p3, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    if-le p2, p3, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda52;

    invoke-direct {p3, p0, v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;J)V

    invoke-static {p1, v2, v3, p3, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 p2, 0x1

    if-eq v2, p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIJZ)Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_6
    const/4 p1, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    move-result p1

    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p3, :cond_8

    xor-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_8
    :goto_5
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$23(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 2

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    iget-object p3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    xor-int/lit8 p3, v1, 0x1

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->changeMessage(Lorg/telegram/messenger/MessageObject;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/MessageSendPreview;->scrollTo(Z)V

    return-void
.end method

.method private synthetic lambda$new$24(ZI)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->getSelectedEffect()J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iput-wide v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIJZ)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    move-result p1

    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p2, :cond_4

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$25(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {v0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void
.end method

.method private synthetic lambda$new$26(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 6

    iput-object p2, p1, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p2, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$27(JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v0, p3, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    if-eqz v0, :cond_0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessageSuggestionParams;->empty()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda55;

    invoke-direct {v9, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;)V

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/MessageSuggestionParams;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v10}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$28()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->getSelectedEffect()J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iput-wide v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIJZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIJZ)Z

    move-result v0

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v1, :cond_4

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$29(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setStarsPrice(J)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    sget p3, Lorg/telegram/messenger/R$string;->PaidMediaPriceButton:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stars"

    invoke-static {v1, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/MessageSendPreview;->setStars(J)V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/MessageSendPreview;->setStars(J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(ZLandroid/view/View;)V
    .locals 8

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->openAvatarsSearch()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lorg/telegram/ui/PhotoPickerSearchActivity;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, p2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-direct {v0, p0, p2, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v7, p2, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setMaxSelectedPhotos(IZ)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$30(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v1

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda54;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    const/4 v3, 0x1

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showMediaPriceSheet(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$new$31(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z
    .locals 33

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    const/4 v3, 0x1

    iget-wide v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    const/4 v4, 0x0

    const-wide/16 v16, 0x0

    cmp-long v0, v8, v16

    if-nez v0, :cond_0

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v2, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr v0, v2

    if-gez v0, :cond_2

    :cond_1
    return v4

    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getReplyTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    move-object/from16 v18, v0

    move-wide v12, v10

    goto :goto_1

    :cond_4
    :goto_0
    return v4

    :cond_5
    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    move-wide v12, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->dismiss()V

    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v0, v7, v15, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    iget-object v10, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v11, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;

    invoke-direct {v11, v7, v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v10, v4, v11}, Lorg/telegram/ui/MessageSendPreview;->setSendButton(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;ZLandroid/view/View$OnClickListener;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v10, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/high16 v19, 0x41200000    # 10.0f

    const-string v14, ""

    if-eq v0, v10, :cond_19

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_7

    goto/16 :goto_10

    :cond_7
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    new-array v8, v3, [Ljava/lang/CharSequence;

    aput-object v1, v8, v4

    aget-object v1, v8, v4

    invoke-static {v3, v1}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    iget v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v8, v3}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    aget-object v1, v8, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-direct {v1, v8, v0, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->notime:Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->getSelected()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v19, v0, 0x1

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    const-string v4, "BEGIN:VCARD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v14, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    :goto_4
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v10, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->notime:Z

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v4

    move-object/from16 v5, p3

    move/from16 v0, v19

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_a
    move/from16 v25, v1

    move-object/from16 v27, v2

    move-wide/from16 v31, v12

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x2

    const/16 v22, 0x0

    goto/16 :goto_26

    :cond_b
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_c

    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_d

    move-object v8, v5

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_e
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v10, v3, 0x1

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v9, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    move v14, v10

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v9, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v3

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    iget v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    aget-object v3, v8, v9

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_9

    :cond_f
    const/4 v5, 0x1

    const/4 v9, 0x0

    :goto_9
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-direct {v3, v8, v1, v5, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->notime:Z

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v3, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_10

    if-nez v4, :cond_10

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object v4, v3

    :cond_10
    move v3, v14

    const/4 v1, 0x1

    goto/16 :goto_8

    :goto_a
    add-int/2addr v0, v5

    goto/16 :goto_6

    :cond_11
    move/from16 v25, v1

    move-object/from16 v27, v2

    move-wide/from16 v31, v12

    goto/16 :goto_5

    :cond_12
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne v0, v1, :cond_18

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->getSelected()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v3, v5, v1

    aget-object v3, v5, v1

    invoke-static {v4, v3}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    aget-object v4, v5, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    move-object v4, v0

    goto :goto_b

    :cond_13
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    const/4 v0, 0x0

    :goto_c
    int-to-double v8, v0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v19

    move-object v5, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    cmpg-double v1, v8, v3

    if-gez v1, :cond_17

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0xa

    mul-int/lit8 v4, v0, 0xa

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_15

    add-int v10, v4, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v10, v14, :cond_14

    :goto_e
    const/4 v10, 0x1

    goto :goto_f

    :cond_14
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    goto :goto_e

    :goto_f
    add-int/2addr v3, v10

    goto :goto_d

    :cond_15
    const/4 v10, 0x1

    add-int/2addr v0, v10

    move-object v4, v5

    goto :goto_c

    :cond_16
    move-object v5, v4

    :cond_17
    move-object/from16 v27, v2

    move-object v4, v5

    move-wide/from16 v31, v12

    const/4 v5, 0x2

    const/16 v22, 0x0

    const/16 v25, 0x1

    goto/16 :goto_26

    :cond_18
    move-object/from16 v27, v2

    move-wide/from16 v31, v12

    const/4 v5, 0x2

    goto/16 :goto_25

    :cond_19
    :goto_10
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v19

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    :goto_11
    if-ge v10, v4, :cond_2b

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v23

    move/from16 v24, v4

    const/16 v4, 0xa

    mul-int/lit8 v21, v10, 0xa

    move/from16 v25, v0

    sub-int v0, v23, v21

    move-object/from16 v23, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v26, v14

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v14

    move-object/from16 v27, v2

    move/from16 v4, v19

    move/from16 v0, v25

    const/4 v2, 0x0

    :goto_12
    move/from16 v25, v0

    if-ge v2, v5, :cond_2a

    add-int v0, v21, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_1a

    move-object/from16 v28, v1

    move-object/from16 v29, v3

    move/from16 v30, v5

    move-wide/from16 v31, v12

    move/from16 v0, v25

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto/16 :goto_24

    :cond_1a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-object/from16 v28, v1

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v29, v3

    const/4 v3, 0x1

    add-int/lit8 v22, v4, 0x1

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-boolean v0, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v0, :cond_1b

    iget-object v3, v6, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_1b

    goto :goto_13

    :cond_1b
    iget-object v3, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_1c

    :goto_13
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_1c
    if-lez v5, :cond_1d

    iput-wide v14, v1, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    :cond_1d
    iget v3, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    iget v4, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    move/from16 v25, v3

    iget v3, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    if-eqz v0, :cond_21

    iget v0, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1e
    move/from16 v30, v4

    goto :goto_1c

    :catch_0
    move-exception v0

    move/from16 v30, v4

    goto :goto_18

    :catchall_0
    move-exception v0

    move-object v14, v3

    goto :goto_19

    :catch_1
    move-exception v0

    move/from16 v30, v4

    :goto_14
    const/4 v4, 0x0

    goto :goto_17

    :catchall_1
    move-exception v0

    goto :goto_15

    :catch_2
    move-exception v0

    goto :goto_16

    :goto_15
    move-object v1, v0

    const/4 v14, 0x0

    goto :goto_1a

    :goto_16
    move/from16 v30, v4

    const/4 v3, 0x0

    goto :goto_14

    :goto_17
    :try_start_3
    iput v4, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_20

    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1c

    :catch_3
    move-exception v0

    :goto_18
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    :goto_19
    move-object v1, v0

    :goto_1a
    if-eqz v14, :cond_1f

    :try_start_5
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1b

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1b
    throw v1

    :cond_20
    :goto_1c
    iget v3, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    goto :goto_1d

    :cond_21
    move/from16 v30, v4

    :goto_1d
    div-int/lit8 v3, v3, 0x5a

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-eqz v3, :cond_22

    move/from16 v3, v25

    move/from16 v0, v30

    goto :goto_1e

    :cond_22
    move/from16 v0, v25

    move/from16 v3, v30

    :goto_1e
    iget-boolean v4, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v4, :cond_23

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move/from16 v30, v5

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    move-wide/from16 v31, v12

    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iget v0, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    int-to-double v12, v0

    iput-wide v12, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    :goto_1f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_23
    move/from16 v30, v5

    move-wide/from16 v31, v12

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    goto :goto_1f

    :goto_20
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean v3, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    iget-object v0, v6, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-nez v0, :cond_24

    move-object/from16 v0, v26

    goto :goto_21

    :cond_24
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez v10, :cond_25

    if-nez v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aget-object v0, v4, v5

    invoke-static {v3, v0}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    iget v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    aget-object v0, v4, v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_25
    if-nez v10, :cond_27

    if-eqz v8, :cond_27

    iget-boolean v0, v8, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    if-nez v0, :cond_27

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    if-eqz v9, :cond_26

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    goto :goto_22

    :cond_26
    const/4 v5, 0x2

    :goto_22
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    goto :goto_23

    :cond_27
    const/4 v5, 0x2

    :goto_23
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const/4 v4, 0x0

    const/4 v12, 0x1

    invoke-direct {v0, v3, v1, v12, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    if-nez v10, :cond_28

    if-eqz v8, :cond_28

    iget-boolean v3, v8, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    if-nez v3, :cond_28

    iput-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    :cond_28
    iput-object v6, v0, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->notime:Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v23, :cond_29

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    move-object/from16 v23, v0

    :cond_29
    move/from16 v4, v22

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/16 v22, 0x1

    :goto_24
    add-int/2addr v2, v1

    move-object/from16 v6, p2

    move-object/from16 v1, v28

    move-object/from16 v3, v29

    move/from16 v5, v30

    move-wide/from16 v12, v31

    goto/16 :goto_12

    :cond_2a
    move-object/from16 v28, v1

    move-object/from16 v29, v3

    move-wide/from16 v31, v12

    const/4 v1, 0x1

    const/4 v5, 0x2

    add-int/2addr v10, v1

    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v19, v4

    move-object/from16 v5, v23

    move/from16 v4, v24

    move-object/from16 v14, v26

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    goto/16 :goto_11

    :cond_2b
    move/from16 v25, v0

    move-object/from16 v27, v2

    move-object/from16 v23, v5

    move-wide/from16 v31, v12

    const/4 v5, 0x2

    move-object/from16 v4, v23

    goto :goto_26

    :goto_25
    const/4 v4, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    :goto_26
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    return v1

    :cond_2c
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-object/from16 v6, p2

    invoke-static {v0, v6, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    if-eqz v4, :cond_2d

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v1, v2, :cond_2e

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v1, v2, :cond_2d

    goto :goto_27

    :cond_2d
    move-object/from16 v19, v11

    move-wide/from16 v2, v31

    const/4 v8, 0x0

    const/4 v15, 0x0

    goto :goto_28

    :cond_2e
    :goto_27
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v10, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v2, Lorg/telegram/messenger/R$string;->CaptionAbove:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v12, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v3, Lorg/telegram/messenger/R$string;->CaptionBelow:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v1

    move-object/from16 v9, p1

    move-object v15, v11

    move-object v11, v2

    move-wide/from16 v2, v31

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v9, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    const/4 v8, 0x1

    xor-int/2addr v9, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v9, v8}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;

    invoke-direct {v9, v7, v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_2f
    :goto_28
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_34

    if-eqz v18, :cond_30

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_30
    if-eqz v18, :cond_31

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v1

    if-nez v1, :cond_32

    :cond_31
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canScheduleMessages()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_32
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    if-eqz v9, :cond_33

    sget v4, Lorg/telegram/messenger/R$string;->SetReminder:I

    goto :goto_29

    :cond_33
    sget v4, Lorg/telegram/messenger/R$string;->ScheduleMessage:I

    :goto_29
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;

    invoke-direct {v10, v7, v2, v3, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1, v4, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_34
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v1, v4, :cond_36

    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v1, v4, :cond_35

    goto :goto_2a

    :cond_35
    move-object/from16 v14, p3

    move-wide/from16 v20, v2

    move-object v13, v6

    goto :goto_2b

    :cond_36
    :goto_2a
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_35

    if-eqz v18, :cond_35

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget v10, Lorg/telegram/messenger/R$drawable;->input_suggest_paid_24:I

    sget v1, Lorg/telegram/messenger/R$string;->PostSuggestionsSendWithOffer:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda37;

    const/4 v13, 0x2

    move-object v1, v12

    move-wide/from16 v20, v2

    move-object/from16 v2, p0

    const/4 v14, 0x1

    move-wide/from16 v3, v20

    move-object/from16 v14, p3

    move-object/from16 v5, v18

    move-object v13, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v10, v11, v12}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :goto_2b
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_37

    if-nez v9, :cond_37

    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda38;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_37
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_39

    if-eqz v22, :cond_39

    if-eqz v18, :cond_39

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v1, :cond_39

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_feature_paid:I

    sget v2, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v15}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;

    move-object/from16 v4, p1

    invoke-direct {v3, v7, v4, v1, v13}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v3

    cmp-long v5, v3, v16

    if-lez v5, :cond_38

    sget v2, Lorg/telegram/messenger/R$string;->PaidMediaPriceButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    long-to-int v2, v3

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Stars"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_2c

    :cond_38
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    :goto_2c
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/MessageSendPreview;->setStars(J)V

    :cond_39
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setupSelectors()V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MessageSendPreview;->setItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/MessageSendPreview;->setMessageObjects(Ljava/util/ArrayList;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_3a

    cmp-long v0, v20, v16

    if-ltz v0, :cond_3a

    if-eqz v25, :cond_3a

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/MessageSendPreview;->allowEffectSelector(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    iget-wide v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/MessageSendPreview;->setEffectId(J)V

    :cond_3a
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->show()V

    const/4 v0, 0x3

    move-object/from16 v1, p4

    const/4 v2, 0x2

    :try_start_6
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    const/4 v1, 0x1

    return v1
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const-string v2, "webp"

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-gt v3, v4, :cond_1

    if-le v0, v4, :cond_2

    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x64

    invoke-virtual {v3, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v17}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-direct {v9, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    move-object v10, v0

    goto :goto_1

    :cond_3
    move-object v10, v3

    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotoPreview(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->sendPoll(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 6

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->sendTodo(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ZIJ)V

    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$44(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$45(Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->onOpenAnimationEnd()V

    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$46(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$47(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$33(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$34(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$35(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p2, 0x0

    iput-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda56;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    const/16 p1, 0x42

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->removeInline(J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$openAudioLayout$41(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/ChatActivity;->sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v4, :cond_1

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-wide/from16 v12, p8

    invoke-interface/range {v4 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$openColorsLayout$42(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->onWallpaperSelected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendPressed$36(ZIJZLjava/lang/Long;)V
    .locals 13

    move-object v0, p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setButtonPressed(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x7

    move v5, p1

    move v6, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-interface/range {v2 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$55(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$56(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$57(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$58(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showCaptionLimitBulletin$32(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "caption_limit"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showCommentTextView$43(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method private synthetic lambda$showLayout$37()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq v1, v4, :cond_1

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    aput v1, v0, v3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method private synthetic lambda$showLayout$38(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p4, 0x43fa0000    # 500.0f

    div-float/2addr p5, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p4, p6, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sub-float p5, p2, p5

    :goto_0
    const/4 p1, 0x0

    invoke-static {p5, p2, p1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    sub-float/2addr p2, p1

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    neg-int p5, p5

    int-to-float p5, p5

    mul-float p1, p1, p5

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$showLayout$39(ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$showLayout$40(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v5, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, v0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;FFZ)V

    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x43fa0000    # 500.0f

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v4, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-void
.end method

.method private openAudioLayout(Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    aput-object v2, v0, v1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setMaxSelectedFiles(I)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_6
    return-void
.end method

.method private openContactsLayout()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x5

    invoke-direct {v0, v3, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setMultipleSelectionAllowed(Z)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openDocumentsLayout(Z)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, p0, v5, v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    aput-object v4, v3, v1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :cond_5
    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-nez v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setCanSelectOnlyImageFiles(Z)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_8
    return-void
.end method

.method private openQuickRepliesLayout()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v1, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private removeFromRoot()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method private replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {v0, p2, p4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private sendPressed(ZIJZ)Z
    .locals 13

    move-object v7, p0

    iget-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCaption(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    iget v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v9

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v0

    add-int v11, v1, v0

    new-instance v12, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZIJZ)V

    invoke-static {v8, v9, v10, v11, v12}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    return v0
.end method

.method private setNavBarAlpha(F)V
    .locals 6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private showCommentTextView(ZZ)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v1, v3, :cond_1

    return v5

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz v1, :cond_6

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v3, v6, :cond_9

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v3, v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_a

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x42a80000    # 84.0f

    const/high16 v9, 0x42100000    # 36.0f

    const/4 v11, 0x0

    if-eqz v2, :cond_21

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_b

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v1, :cond_c

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    :goto_6
    new-array v10, v4, [F

    aput v16, v10, v5

    invoke-static {v14, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_d

    if-nez v6, :cond_d

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_d
    const/4 v14, 0x0

    :goto_7
    new-array v12, v4, [F

    aput v14, v12, v5

    invoke-static {v10, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_e

    if-nez v6, :cond_e

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v4, [F

    aput v11, v14, v5

    invoke-static {v10, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    if-nez v6, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    new-array v12, v4, [F

    aput v3, v12, v5

    invoke-static {v10, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    if-eqz v6, :cond_10

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_10
    const/4 v10, 0x0

    :goto_9
    new-array v12, v4, [F

    aput v10, v12, v5

    invoke-static {v3, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz v1, :cond_11

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_11
    const v12, 0x3e4ccccd    # 0.2f

    :goto_a
    new-array v14, v4, [F

    aput v12, v14, v5

    invoke-static {v3, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz v1, :cond_12

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_12
    const v14, 0x3e4ccccd    # 0.2f

    :goto_b
    new-array v11, v4, [F

    aput v14, v11, v5

    invoke-static {v3, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_13

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    :goto_c
    new-array v14, v4, [F

    aput v11, v14, v5

    invoke-static {v3, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_14

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_14
    const v11, 0x3e4ccccd    # 0.2f

    :goto_d
    new-array v14, v4, [F

    aput v11, v14, v5

    invoke-static {v3, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_15

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_15
    const v10, 0x3e4ccccd    # 0.2f

    :goto_e
    new-array v11, v4, [F

    aput v10, v11, v5

    invoke-static {v3, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_16

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    :goto_f
    new-array v11, v4, [F

    aput v10, v11, v5

    invoke-static {v3, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v1, :cond_17

    const/4 v11, 0x0

    goto :goto_10

    :cond_17
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    :goto_10
    new-array v12, v4, [F

    aput v11, v12, v5

    invoke-static {v3, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_18

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_11
    int-to-float v8, v8

    goto :goto_12

    :cond_18
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_11

    :goto_12
    new-array v9, v4, [F

    aput v8, v9, v5

    invoke-static {v3, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_19

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_19
    const/4 v11, 0x0

    :goto_13
    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v3, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_14
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1a
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v1, :cond_1b

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    goto :goto_15

    :cond_1b
    const/4 v8, 0x0

    :goto_15
    new-array v11, v4, [F

    aput v8, v11, v5

    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_1c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v11, v8

    goto :goto_16

    :cond_1c
    const/4 v11, 0x0

    :goto_16
    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v3, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_14

    :cond_1d
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_1e

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_1e
    const/4 v11, 0x0

    :goto_17
    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v3, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_14

    :cond_1f
    :goto_18
    if-eqz v6, :cond_20

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0xb4

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlert$24;

    invoke-direct {v8, v0, v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2a

    :cond_21
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_22

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_22
    const/4 v11, 0x0

    :goto_19
    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_23

    if-eqz v6, :cond_23

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_23
    const/4 v11, 0x0

    :goto_1a
    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_24

    if-nez v6, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1b

    :cond_24
    const/4 v11, 0x0

    :goto_1b
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_25

    if-eqz v3, :cond_25

    if-nez v6, :cond_25

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_25
    const/4 v12, 0x0

    :goto_1c
    invoke-virtual {v10, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    if-eqz v1, :cond_26

    if-eqz v3, :cond_26

    if-nez v6, :cond_26

    const/4 v3, 0x0

    goto :goto_1d

    :cond_26
    const/16 v3, 0x8

    :goto_1d
    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    iget v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v10, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v13

    add-float/2addr v10, v13

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_27

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_27
    const v10, 0x3e4ccccd    # 0.2f

    :goto_1e
    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_28

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_28
    const v10, 0x3e4ccccd    # 0.2f

    :goto_1f
    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_29

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_29
    const/4 v10, 0x0

    :goto_20
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2a

    if-eqz v6, :cond_2a

    const/4 v12, 0x0

    :cond_2a
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2b

    if-eqz v6, :cond_2b

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_2b
    const/4 v10, 0x0

    :goto_21
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_2c

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_22

    :cond_2c
    const v10, 0x3e4ccccd    # 0.2f

    :goto_22
    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_2d

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_2d
    const v10, 0x3e4ccccd    # 0.2f

    :goto_23
    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_2e

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_24

    :cond_2e
    const/4 v10, 0x0

    :goto_24
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_31

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2f

    const/4 v10, 0x0

    goto :goto_25

    :cond_2f
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    :goto_25
    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_30

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_26

    :cond_30
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_26
    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_37

    goto :goto_28

    :cond_31
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_36

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_32
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_33

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v11, v8

    :cond_33
    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    :cond_34
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_35

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_27

    :cond_35
    const/4 v8, 0x0

    :goto_27
    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_29

    :cond_36
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_37

    :goto_28
    const/high16 v11, 0x3f800000    # 1.0f

    :cond_37
    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    :goto_29
    if-nez v1, :cond_38

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-nez v3, :cond_38

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v6, :cond_39

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    :cond_39
    :goto_2a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_3a
    invoke-virtual {v3, v5, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_3b

    const-wide/16 v1, 0x0

    goto :goto_2b

    :cond_3b
    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v1

    :goto_2b
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v5, v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JI)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v3, v2, :cond_3c

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3c
    return v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V

    return-void
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V
    .locals 11

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-nez v3, :cond_15

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v3, p1, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->scrollToTop()V

    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 p3, 0x27

    invoke-direct {p1, p2, p3, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    iput-wide p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v6, :cond_4

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->updateCheckedState(Z)V

    goto :goto_2

    :cond_4
    instance-of v6, v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v6, :cond_5

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->updateCheckedState(Z)V

    :cond_5
    :goto_2
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getFirstOffset()I

    move-result p2

    const/high16 p3, 0x41300000    # 11.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p3, p3, v1

    sub-int/2addr p2, p3

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    const/4 v6, 0x0

    if-lt p3, v4, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p3, v0, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v4, 0x4

    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p3, v4, :cond_a

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eq v4, v8, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne v4, v9, :cond_c

    goto :goto_4

    :cond_c
    add-int/2addr p3, v2

    :goto_4
    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v4, p3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v8, :cond_f

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v8, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v8, :cond_f

    if-eqz p4, :cond_e

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p4, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p4, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {p4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v7

    new-array v8, v0, [F

    aput v7, v8, v1

    aput v3, v8, v2

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p4, v6, v1

    aput-object v4, v6, v2

    aput-object v5, v6, v0

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ILjava/lang/Runnable;)V

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v4, :cond_10

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_11

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    :goto_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p2, v0, :cond_11

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    goto :goto_5

    :cond_11
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_12

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result p1

    if-gt p2, p1, :cond_13

    const/4 v1, 0x1

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_14
    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_15
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private toggleCaptionAbove()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    return-void
.end method

.method private updateActionBarVisibility(ZZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1e

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v2, :cond_6

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne v3, v4, :cond_7

    const/4 v2, 0x0

    :cond_7
    if-eqz p1, :cond_8

    if-eqz v2, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    :cond_8
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isLightStatusBar()Z

    move-result v4

    :goto_3
    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v4

    goto :goto_3

    :cond_b
    :goto_4
    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_13

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    mul-float v6, v6, v7

    float-to-long v6, v6

    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_d

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    new-array v9, v1, [F

    aput v8, v9, v0

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    if-eqz p1, :cond_e

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    new-array v9, v1, [F

    aput v8, v9, v0

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_f

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_f
    new-array v6, v1, [F

    aput v4, v6, v0

    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz p1, :cond_10

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_10
    const v6, 0x3f19999a    # 0.6f

    :goto_8
    new-array v7, v1, [F

    aput v6, v7, v0

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_11

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_11
    new-array v1, v1, [F

    aput v3, v1, v0

    invoke-static {v2, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$27;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_c

    :cond_13
    const/4 p2, 0x4

    if-eqz p1, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_16
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    if-eqz p1, :cond_17

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_18

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_18
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_19
    const v1, 0x3f19999a    # 0.6f

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1a

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_1a
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1b
    if-nez p1, :cond_1e

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez p1, :cond_1e

    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_c
    return-void
.end method

.method private updateSelectedPosition(I)V
    .locals 12

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    :goto_0
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_10

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, 0x422c0000    # 43.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_3
    :goto_2
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_1

    :goto_3
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v2, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v1, v5, v0

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    goto :goto_4

    :cond_4
    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    goto :goto_5

    :cond_5
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_6

    const/4 v1, 0x6

    goto :goto_5

    :cond_6
    const/16 v1, 0xc

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    sub-float v2, v5, v2

    mul-float v2, v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    :goto_6
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    const/high16 v7, 0x40800000    # 4.0f

    if-eqz v6, :cond_8

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x25

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v1

    mul-float v9, v9, v0

    const/high16 v10, 0x42140000    # 37.0f

    add-float/2addr v9, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, p1, v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    mul-float v10, v10, v11

    sub-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    :goto_7
    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_8

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x25

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    goto :goto_7

    :goto_8
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v6, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_9

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v8, :cond_b

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v9, v7

    add-int/lit8 v7, v1, 0x25

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v9, v7

    int-to-float v7, v9

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v7, v9

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_b
    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v7, 0x41c80000    # 25.0f

    add-float/2addr v1, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v2

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr p1, v1

    add-float/2addr p1, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    mul-float v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3b

    const/16 v6, 0x35

    const/16 v7, 0x3f

    const/high16 v8, 0x40e00000    # 7.0f

    if-eqz p1, :cond_11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x3f

    goto :goto_a

    :cond_d
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v9, p1, :cond_e

    const/16 p1, 0x35

    goto :goto_a

    :cond_e
    const/16 p1, 0x3b

    :goto_a
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v9, v10, :cond_f

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p1, v8

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v9, p1

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    :goto_b
    mul-float v9, v9, p1

    goto :goto_c

    :cond_f
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v9, v10, :cond_11

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p1, v8

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v9, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez p1, :cond_10

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_10
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    sub-float p1, v5, p1

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eqz p1, :cond_16

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 v3, 0x3f

    goto :goto_d

    :cond_12
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v7, p1, :cond_13

    const/16 v3, 0x35

    :cond_13
    :goto_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p1, v6, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v1, v3

    mul-float v1, v1, v0

    add-float/2addr v1, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    mul-float p1, p1, v0

    goto :goto_f

    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p1, v2, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v1, v3

    mul-float v1, v1, v0

    add-float/2addr v1, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    sub-float/2addr v5, v0

    :goto_e
    mul-float p1, p1, v5

    goto :goto_f

    :cond_16
    const/4 p1, 0x0

    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_17

    add-float/2addr v9, p1

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_17
    :goto_10
    return-void
.end method

.method private updatedTopCaptionHeight()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    :cond_0
    iput v0, v1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    return-void
.end method


# virtual methods
.method protected applyCaption()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->applyCaption(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-void
.end method

.method public canDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canDismissWithTouchOutside()Z

    move-result v0

    return v0
.end method

.method protected cancelSheetAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    :cond_2
    return-void
.end method

.method public checkCanRemoveRestrictionsByBoosts()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkCaption(Ljava/lang/CharSequence;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkPremiumAnimatedEmoji(IJLorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkColors()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_1
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_4

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_6

    :cond_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    :goto_7
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_8

    :cond_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    goto :goto_7

    :goto_8
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_9
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_a

    :cond_6
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    :goto_b
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_c

    :cond_7
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    goto :goto_b

    :goto_c
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_d

    :cond_9
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_d
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_a

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_e

    :cond_a
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_e
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v4, :cond_b

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    goto :goto_f

    :cond_b
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    :goto_f
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v4, :cond_c

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_10
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    goto :goto_11

    :cond_c
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_10

    :goto_11
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v4, :cond_d

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    :goto_12
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    goto :goto_13

    :cond_d
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    goto :goto_12

    :goto_13
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v4, :cond_e

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_14
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    goto :goto_15

    :cond_e
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_14

    :goto_15
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v4, :cond_f

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    :cond_f
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    :goto_16
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v4, v2

    if-ge v0, v4, :cond_11

    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->checkColors()V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_13

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v2, v4, v6

    if-lez v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    goto :goto_17

    :cond_13
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    :goto_17
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertMessage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Discard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v5, v4

    if-ge v3, v5, :cond_8

    aget-object v4, v4, v3

    if-eqz v4, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq v5, v4, :cond_7

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {v3, v4, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    :cond_a
    :goto_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->doOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    :goto_0
    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithButtonClick(I)V

    return-void
.end method

.method public enableDefaultMode()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableStickerMode(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoForSticker:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public getAdditionalMessagesCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->getForwardedMessagesCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-object v0
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method

.method public getClipLayoutBottom()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public getCommentTextViewTop()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    :goto_0
    return-object v0
.end method

.method public getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    return-wide v0
.end method

.method public getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object v0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object v0
.end method

.method public getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object v0
.end method

.method public getSelectedTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hasCaption()Z
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    int-to-double v5, v3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    mul-int/lit8 v6, v3, 0xa

    sub-int/2addr v5, v6

    const/16 v7, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    add-int v8, v6, v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-nez v8, :cond_2

    const-string v8, ""

    goto :goto_2

    :cond_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v4, :cond_4

    return v1

    :cond_4
    const/4 v4, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v1, v4

    :cond_8
    return v1
.end method

.method public init()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    const/4 v5, 0x0

    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    iget v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v5, 0x0

    const/4 v8, 0x2

    if-eq v4, v8, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v9, v4, Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_1

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-wide v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    cmp-long v4, v9, v2

    if-ltz v4, :cond_2

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    move-object v2, v5

    goto :goto_1

    :cond_2
    cmp-long v4, v9, v2

    if-gez v4, :cond_3

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v2, v5

    move-object v3, v2

    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v4, Lorg/telegram/ui/ChatActivity;

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    iget v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne v4, v8, :cond_5

    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_c

    :cond_5
    if-eqz v2, :cond_7

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    goto :goto_7

    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    :cond_c
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_d

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne v2, v8, :cond_f

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    const/4 v4, 0x4

    :goto_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    iget-boolean v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    iget-boolean v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    invoke-virtual {v2, v4, v10, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onInit(ZZZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    const/4 v4, -0x1

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isBizLocationPicker:Z

    if-eqz v2, :cond_10

    goto/16 :goto_e

    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    const-wide/16 v10, 0x3

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    const-wide/16 v12, 0x4

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v14, 0x1

    if-eqz v2, :cond_18

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    if-ne v3, v4, :cond_15

    iput-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_9
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iput-wide v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_f

    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_a
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iput-wide v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_f

    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    :goto_b
    iput-wide v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_f

    :cond_15
    if-ne v3, v8, :cond_16

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iput-wide v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_c

    :cond_16
    if-ne v3, v9, :cond_17

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iput-wide v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_c

    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-wide v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    :goto_c
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    goto :goto_f

    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_19

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v3, :cond_19

    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    :goto_d
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    goto :goto_b

    :cond_1a
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-nez v2, :cond_1b

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v0, v8, v10}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V

    :cond_1b
    const-wide/16 v2, 0x5

    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v8, :cond_1c

    const/4 v8, 0x0

    goto :goto_10

    :cond_1c
    const/16 v8, 0x8

    :goto_10
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v8, :cond_1d

    const/4 v8, 0x0

    goto :goto_11

    :cond_1d
    const/4 v8, 0x4

    :goto_11
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq v3, v2, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v6, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    goto :goto_12

    :cond_20
    const/4 v2, 0x4

    :goto_12
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v3, :cond_22

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    :cond_22
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const v3, 0xf4240

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public isCaptionAbove()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    if-eqz v0, :cond_1

    const-wide/16 p1, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    :cond_4
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onCustomMeasure(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x14

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    new-array v3, v4, [F

    aput v0, v3, v7

    aput v2, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v3, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    filled-new-array {v6}, [I

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$26;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v0, v2, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v5

    nop

    :array_0
    .array-data 4
        0x0
        0x43c80000    # 400.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_3
    return-void
.end method

.method protected onDismissWithTouchOutside()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSheetKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->BotRemoveFromMenu:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v5, "BotRemoveFromMenu"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->BotRemoveInlineFromMenu:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "BotRemoveInlineFromMenu"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onOpenAnimationEnd()V

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrAttachButton:I

    const-string v1, "AccDescrAttachButton"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->openShareLiveLocation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public openColorsLayout()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->setDelegate(Landroidx/core/util/Consumer;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowDrawContent:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowDrawContent:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v1, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCamera(Z)V

    :cond_2
    return-void
.end method

.method public setAllowEnterCaption(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    return-void
.end method

.method public setAllowNestedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    return-void
.end method

.method public setAvatarPicker(IZLorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAvatarPicker()V

    :cond_4
    return-void
.end method

.method public setButtonPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    return-void
.end method

.method public setCanOpenPreview(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCaptionAbove(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    return-void
.end method

.method public setCaptionAbove(ZZ)V
    .locals 11

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v8, 0x140

    invoke-virtual {p2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {p2, v10}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;

    invoke-direct {v10, p0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V

    invoke-virtual {p2, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez v4, :cond_8

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda45;

    invoke-direct {v3, p0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_e

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/16 v8, 0x8

    :goto_7
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {p2, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_c

    if-eqz v1, :cond_c

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {p2, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_d

    if-eqz v1, :cond_d

    const/4 v8, 0x0

    goto :goto_a

    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    :goto_a
    invoke-virtual {p2, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_e

    if-eqz v1, :cond_e

    const/4 v8, 0x0

    goto :goto_b

    :cond_e
    const/16 v8, 0x8

    :goto_b
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-nez v4, :cond_f

    if-eqz v1, :cond_f

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-nez v4, :cond_10

    if-eqz v1, :cond_10

    goto :goto_d

    :cond_10
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    if-eq v0, p1, :cond_11

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getAllowTextEntitiesIntersection()Z

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    :cond_11
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    return-void
.end method

.method public setDocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsDelegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-void
.end method

.method public setEditingMessageObject(ILorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_5

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return-void
.end method

.method public setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    return-void
.end method

.method public setOpenWithFrontFaceCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    return-void
.end method

.method public setSoundPicker()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStoryAudioPicker()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    return-void
.end method

.method public setStoryLocationPicker()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryLocationPicker(DD)V
    .locals 2

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyLocationPickerLatLong:[D

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryLocationPicker(ZLjava/io/File;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyLocationPickerFileIsVideo:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyLocationPickerPhotoFile:Ljava/io/File;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryMediaPicker()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setupMentionContainer(Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setUserOrChat(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    return-void
.end method

.method public setupPhotoPicker(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAvatarPicker()V

    :cond_0
    return-void
.end method

.method protected shouldOverlayCameraViewOverNavBar()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v1, :cond_0

    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 7

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_2
    return-void
.end method

.method public showBotLayout(JLjava/lang/String;ZZ)V
    .locals 18

    .line 0
    move-object/from16 v6, p0

    move-wide/from16 v14, p1

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getStartCommand()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v14

    goto :goto_2

    :cond_1
    move-object/from16 v13, p3

    :cond_2
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    new-instance v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v6, v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;J)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getReplyingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    iget v8, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v9

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v16

    const/4 v1, 0x0

    move-wide/from16 v11, p1

    move v13, v1

    move-wide v1, v14

    move v14, v0

    move-object/from16 v15, p3

    invoke-virtual/range {v7 .. v17}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestWebView(IJJZILjava/lang/String;J)V

    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->disallowSwipeOffsetAnimation()V

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-long v3, v1

    move/from16 v5, p5

    invoke-direct {v6, v0, v3, v4, v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V

    if-eqz p4, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->showJustAddedBulletin()V

    :cond_4
    return-void
.end method

.method public showBotLayout(JZ)V
    .locals 6

    .line 0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JLjava/lang/String;ZZ)V

    return-void
.end method

.method public showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne p1, v2, :cond_0

    iget v0, v2, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->id:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, v2, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne p1, v2, :cond_2

    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne p1, v2, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-ne p1, v2, :cond_4

    const-wide/16 v0, 0x5

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne p1, v2, :cond_5

    const-wide/16 v0, 0x6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v2, :cond_6

    const-wide/16 v0, 0x9

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    if-ne p1, v2, :cond_7

    const-wide/16 v0, 0xa

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    if-ne p1, v2, :cond_8

    const-wide/16 v0, 0xb

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v2, :cond_9

    const-wide/16 v0, 0xc

    :cond_9
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V

    return-void
.end method

.method public updateCommentTextViewPosition()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method public updateCountButton(I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    goto :goto_5

    :cond_3
    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCount()V

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    goto :goto_3

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSelectedItemsCountChanged(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-nez v3, :cond_7

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v3, :cond_21

    :cond_7
    if-nez v2, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v3, :cond_a

    :cond_8
    if-nez v2, :cond_9

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v3, :cond_21

    :cond_9
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v3, :cond_21

    :cond_a
    if-nez v2, :cond_c

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    :cond_d
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_e

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->allowSendGifs()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_10

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_f

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    :goto_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_11
    :goto_a
    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p1, :cond_19

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_13
    const v1, 0x3f19999a    # 0.6f

    :goto_c
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_14

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_14
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz v2, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_e
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_18
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_21

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    :cond_19
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1d

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v6, :cond_1d

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v6, :cond_1d

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v8, :cond_1a

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_1a
    const/4 v8, 0x0

    :goto_f
    new-array v9, v1, [F

    aput v8, v9, v0

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v8, :cond_1b

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_1b
    const v8, 0x3f19999a    # 0.6f

    :goto_10
    new-array v9, v1, [F

    aput v8, v9, v0

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v8, :cond_1c

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_1c
    new-array v8, v1, [F

    aput v3, v8, v0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v7, :cond_1e

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1e
    const/4 v7, 0x0

    :goto_11
    new-array v8, v1, [F

    aput v7, v8, v0

    invoke-static {v3, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_1f

    goto :goto_12

    :cond_1f
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_12
    new-array v1, v1, [F

    aput v4, v1, v0

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_21
    :goto_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->needResendWhenEdit()Z

    move-result p1

    if-nez p1, :cond_22

    const-wide/16 v1, 0x0

    goto :goto_14

    :cond_22
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v1

    :goto_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez p1, :cond_23

    goto :goto_15

    :cond_23
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v0

    :goto_15
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v1, v0, :cond_24

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method

.method public updateDoneItemEnabled()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->isDoneItemEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->isDoneItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    :goto_1
    mul-float v0, v0, v4

    add-float/2addr v3, v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->isDoneItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    add-float/2addr v3, v1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasDoneItem()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasDoneItem()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pinnedToTop:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq v4, v5, :cond_3

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    instance-of p2, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    :cond_3
    if-ne p1, v4, :cond_4

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    :cond_5
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_2
    instance-of p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz p2, :cond_8

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    instance-of v1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_8

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v2, 0x1

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v1, p2, p1

    if-ne v1, v0, :cond_a

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_b

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    goto :goto_4

    :cond_a
    :goto_3
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    aput v0, p2, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_b
    :goto_4
    return-void
.end method

.method public updatePhotoPreview(Z)V
    .locals 2

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    :goto_0
    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :goto_1
    return-void
.end method
