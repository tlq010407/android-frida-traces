.class public abstract Lorg/telegram/ui/Stories/recorder/PaintView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/IPhotoPaintView;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;,
        Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;,
        Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;
    }
.end annotation


# instance fields
.field private baseScale:F

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurBitmapToEdit:Landroid/graphics/Bitmap;

.field private blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

.field private cancelTextButton:Landroid/widget/TextView;

.field private colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

.field private colorPickerRainbowPaint:Landroid/graphics/Paint;

.field private colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

.field private colorSwatchOutlinePaint:Landroid/graphics/Paint;

.field private colorSwatchPaint:Landroid/graphics/Paint;

.field private colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

.field private creatingNewRound:Z

.field private currentAccount:I

.field private currentCropState:Lorg/telegram/messenger/MediaController$CropState;

.field private currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

.field private destroyed:Z

.field private doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

.field private doneTextButton:Landroid/widget/TextView;

.field public drawForThemeToggle:Z

.field private drawTab:Landroid/widget/TextView;

.field private editingText:Z

.field private emojiPadding:I

.field private emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

.field public emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private emojiViewVisible:Z

.field private emojiViewWasVisible:Z

.field private emojiWasPadding:I

.field public enteredThroughText:Z

.field public entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

.field private faces:Ljava/util/ArrayList;

.field private facesBitmap:Landroid/graphics/Bitmap;

.field private file:Ljava/io/File;

.field private fileFromGallery:Z

.field private fillShapes:Z

.field private forceChanges:Z

.field private h:I

.field private hasAudio:Z

.field private ignoreLayout:Z

.field private ignoreToolChangeAnimationOnce:Z

.field private inBubbleMode:Z

.field private initialEntities:Ljava/util/ArrayList;

.field private initialEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private invalidateReactionPosition:Z

.field private isAnimatePopupClosing:Z

.field private isBot:Z

.field private isColorListShown:Z

.field public isCoverPreview:Z

.field private isTypefaceMenuShown:Z

.field private isVideo:Z

.field private keyboardAnimator:Landroid/animation/AnimatorSet;

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field public final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lcm:Ljava/math/BigInteger;

.field private offsetTranslationY:F

.field private onCancelButtonClickedListener:Ljava/lang/Runnable;

.field private onDoneButtonClickedListener:Ljava/lang/Runnable;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private originalBitmapRotation:I

.field private overlayLayout:Landroid/widget/FrameLayout;

.field private paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

.field private pipetteContainerLayout:Landroid/widget/FrameLayout;

.field points:[F

.field private popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pos:[I

.field private previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

.field private previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

.field public reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private reactionLayoutShowing:Z

.field private reactionShowProgress:F

.field private renderInputView:Landroid/view/View;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedTextType:I

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private stickerTab:Landroid/widget/TextView;

.field private tabsLayout:Landroid/widget/LinearLayout;

.field private tabsNewSelectedIndex:I

.field private tabsSelectedIndex:I

.field private tabsSelectionAnimator:Landroid/animation/ValueAnimator;

.field private tabsSelectionProgress:F

.field private textDim:Landroid/view/View;

.field private textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

.field private textTab:Landroid/widget/TextView;

.field private toolsPaint:Landroid/graphics/Paint;

.field private toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private toolsTransformProgress:F

.field private topLayout:Landroid/widget/FrameLayout;

.field private transformX:F

.field private transformY:F

.field private translateBottomPanelAfterResize:Z

.field private typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

.field private typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

.field private typefaceMenuOutlinePaint:Landroid/graphics/Paint;

.field private typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private typefaceMenuTransformProgress:F

.field private undoAllButton:Landroid/widget/TextView;

.field private undoButton:Landroid/widget/ImageView;

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field private videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

.field private w:I

.field private waitingForKeyboardOpen:Z

.field private wasKeyboardVisible:Z

.field private weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

.field private final weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

.field private zoomOutButton:Landroid/widget/LinearLayout;

.field private zoomOutImage:Landroid/widget/ImageView;

.field private zoomOutText:Landroid/widget/TextView;

.field private zoomOutVisible:Z


# direct methods
.method public static synthetic $r8$lambda$-DIbbpaapYWjmsZJzBVLg_fcuw0(Lorg/telegram/ui/Stories/recorder/PaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showColorList$39(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$-L8RSiHq_TnRdmsGPRvm596QZwA(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$-dGFoaS0jxh1gKM8vN1N0xK2n9w(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Kk_XJMTtQ5xssosTBcpFn_Th6A(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$48(Lorg/telegram/ui/Components/Paint/Views/EntityView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Ph2UMq6j919THI4Sly21NAe0tA(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$57(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2WhBya3IqqgZfrFiSxXaFahDvKE(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$55(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6xvtPdIboyxjCp8RiAjN9ST1K_0(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$52(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8bnbpgQIcpNrDuY6Klv0Ys-4ipo(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$99gGnOV4l55xPUUWQjnKOVlFTaQ()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$shutdown$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$BbXTXSM44UuJEDk53LCCEb5rxP0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$buttonForPopup$41(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CbOM6_4zBiAYvWEzAVUCZ8fd-lA(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$49(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CisvG___c2p-Z0BvnUk9R52o8Zg(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$CzX1vGhsurBYGJVpnpNoGDpyTck(Lorg/telegram/ui/Stories/recorder/PaintView;[ZILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$22([ZILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DL2d1qwmCf8WCB0UF329YkrNfu0(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$updateTextDim$65(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQ7QjT8U9YRwr9AD3pOyF1Ltpjg(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$10(Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ES9xyWYC0uOX1LRDjI-WpITGOo8(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$13(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ee9zu3leu62rojM294x1KR7z_RM(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$42(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GJy4C3Y2zNRt35JBQCZlRxNo0CY(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$switchTab$20(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GNhtBFoir-VO3CDXOZEO4Gvpbno(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IgBc_s7bL4Gu0mPjy0ysF4t5UVg(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$hideEmojiPopup$64(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Je2bvHkmiTqADTx1xXaVRuu34e4(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$47(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KV4omYmCLKaQdbM8mfGF-s26XIc(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KjBRuGavcvlS2sGMD0o-ni_u5IY(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showLinkAlert$29(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mxl6eGfXO5oQa53MEAk7-jFfRik(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$46(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nb8K5FvxGN14iMGbkihq8hLTF7k(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5KOm1g2orutSTPC9rdhAkj8AX4(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$50(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PHQeDsJRGkGhnqYEGCV3S60RNU4(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/LinkView;Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showLinkAlert$28(Lorg/telegram/ui/Components/Paint/Views/LinkView;Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBQ0un2FrHxdCRyZH3sau1YHD8Q(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$23(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QOsAD96SidNWZ6sIg1gkfXoGhdQ(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showColorList$38(Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$R8Ui38q3MsqtWt7ryp-X78eyODE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rr6uusUl6fJZi8I28vGIZmni2q4(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$appearAnimation$59(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RwC7AQmGB9KJ066GIXXfB3x3nA8(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$25(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VI7E7eB4xCOow7C5y-4pHyXJp3A(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$createText$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$VTwXdQ1aFFz1FfgczXN5Bap14IQ(Lorg/telegram/ui/Stories/recorder/PaintView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setNewColor$14(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wq6Sk6gkiBCQyZJy4kNLPObDByg(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aICkBNNzzifJiHaXg-4lEmI_1FE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cIQFr1hVb7uH3nCptezSEnAQv0I(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$24(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dtbLMoNsyc-5VolIiUkbd4V6moE(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$54(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwMmBchuN7WROEFKgydVmySLYp4(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$createRound$61(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eIPhcx0VA7U6ZTz5ULIuViGQx-I(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edbfV4RScwlski40Y9nE1rgOjAM(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$56(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$egnvP7JOgwFVch9FnCxpeAGJjGw(Lorg/telegram/ui/Stories/recorder/PaintView;[ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$27([ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fQIA9MpVlDKhN_X9dOhQVNVwav0(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$detectFaces$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$fgGfZ_Atset-QxwR400Zd5yg9LU(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$51(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hcCN6UhYhUqXJO1EcIeYShkU8hs(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$43(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kbmXxxtGwTA2lwZf5xLmZH1lH38(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$mYXHBt6A7-jHN4Zy4M8ueLzqdLg(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showLocationAlert$30(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mteQzzDC7tzgEXQpoSvrxQW-vJ8(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setCurrentSwatch$40(Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLIIC0nzaFi0lCaZQazfwnIkYJE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showTypefaceMenu$36(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$nVKvpgM5zxTiuEg3h1ixVGd0qq4(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showAudioAlert$31(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-BldUZaDbn8VHalkh5eS6GMZ6o(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$o3KnaDXK8Fio01NMT7zr9GjJoTU(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showReactionsLayout$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pD-zi3K0cRdyqqZAFZpx5xn1zcc(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0myGM_H91xEF-8bBafnScL9vlo(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$registerRemovalUndo$62(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tw9sE1ma8VPrUMs22SoAWIUvlT0(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$53(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u5hLlW2EB6ZxKoNsxXuhK6eurbs(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$deleteRound$60(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9DlI6yf9KgnfSAfq-24i4_Q-zc(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFZyhW1wszQP1UCEnMOMI73TFJE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$11(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uYgGVVdkNZqPluSn4FK-VqKnY5M(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$vO10NkvR5wCbHIQ-4wSz1oUrFS4(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$welPp_ExmPDu8B66M1Z3c8sB03Y(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yo_j9Gr-e4WHKMtEu5_BKfHXYlc(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showEmojiPopup$63(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zMUqQXqooqHv0C-1SgIjUhKXnkw(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$zhJMP3J6A4Emw2hhzJ4b0FLCLTU(Lorg/telegram/ui/Stories/recorder/PaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showTypefaceMenu$37(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/io/File;ZZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/StoryEntry;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move/from16 v11, p8

    move-object/from16 v12, p11

    move/from16 v0, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p19

    const/4 v15, 0x1

    move-object/from16 v1, p7

    invoke-direct {v8, v9, v1, v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    const/4 v7, 0x0

    iput v7, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v6, -0x1

    iput v6, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PaintView$1;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    iput-object v5, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3c896918

    invoke-direct {v1, v6, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iput-boolean v7, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->fillShapes:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    iput-boolean v7, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutVisible:Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    iput-boolean v7, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->isCoverPreview:Z

    new-array v1, v1, [I

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$30;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$30;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    iput-object v14, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object/from16 v1, p21

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    move/from16 v1, p2

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->fileFromGallery:Z

    move-object/from16 v1, p3

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->file:Ljava/io/File;

    move/from16 v1, p4

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideo:Z

    move/from16 v1, p5

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->isBot:Z

    iput-object v10, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move/from16 v1, p15

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    move/from16 v1, p16

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    move-object/from16 v1, p22

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iput v11, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$2;

    move-object/from16 v2, p20

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v1, p17

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    instance-of v1, v9, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->inBubbleMode:Z

    invoke-static/range {p8 .. p8}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->resetCurrentColor()V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v2, "Paint"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v1, p9

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v1, p10

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->blurBitmapToEdit:Landroid/graphics/Bitmap;

    iput-object v12, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    new-instance v1, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda18;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/high16 v2, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$3;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    invoke-direct {v3, v2, v12, v0, v14}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->blurBitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_0

    iget-boolean v6, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v0

    move-object v6, v14

    :goto_0
    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    const/4 v10, -0x1

    const/4 v10, 0x0

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/PaintView$3;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/graphics/Bitmap;)V

    iput-object v15, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$4;

    move-object/from16 v1, p18

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$4;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$5;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$5;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$7;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$6;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$6;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {v0, v8, v9, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$7;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iput-object v13, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-object/from16 v0, p13

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    if-lez v0, :cond_1

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupEntities()V

    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$8;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$8;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v3, 0x40000000    # 2.0f

    filled-new-array {v3, v10}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x30

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->photo_undo2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda22;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x20

    const/high16 v21, 0x42000000    # 32.0f

    const/16 v22, 0x33

    const/high16 v23, 0x41400000    # 12.0f

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const v5, 0x30ffffff

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v15, v10, v1, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->PhotoEditorZoomOut:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutImage:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/messenger/R$drawable;->photo_zoomout:I

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v15, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutImage:Landroid/widget/ImageView;

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v20, 0x18

    const/16 v21, 0x18

    const/16 v22, 0x10

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/16 v15, 0x10

    invoke-static {v3, v3, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v4, 0x20

    const/16 v15, 0x11

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v10, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorClearAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda24;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/high16 v25, 0x40800000    # 4.0f

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/high16 v21, 0x42000000    # 32.0f

    const/16 v22, 0x5

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v10, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda25;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v25, 0x0

    const/16 v22, 0x33

    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v10, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda26;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/high16 v25, 0x40800000    # 4.0f

    const/16 v22, 0x5

    const/16 v23, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$9;

    move-object/from16 v3, v18

    invoke-direct {v0, v8, v9, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$9;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v5, -0x80000000

    filled-new-array {v10, v5}, [I

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x68

    const/16 v4, 0x50

    const/4 v5, -0x1

    invoke-static {v5, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    if-eqz v13, :cond_2

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez v2, :cond_2

    if-eqz v14, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v9, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda27;

    invoke-direct {v0, v8, v11}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static/range {p8 .. p8}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$10;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$10;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda28;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x55

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v16

    move/from16 p16, v17

    move/from16 p17, v5

    move/from16 p18, v6

    invoke-static/range {p12 .. p18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const v4, 0x14ffffff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {v8, v4}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$11;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$11;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-static/range {p8 .. p8}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda29;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorListener(Landroidx/core/util/Consumer;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/high16 v4, 0x42600000    # 56.0f

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, -0x1

    const/high16 v13, 0x42a80000    # 84.0f

    const/16 v14, 0x30

    const/high16 v15, 0x42600000    # 56.0f

    move/from16 p12, v6

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p16, v16

    move/from16 p17, v4

    move/from16 p18, v5

    invoke-static/range {p12 .. p18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupTabsLayout(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    const/16 v6, 0x20

    const/high16 v13, 0x42000000    # 32.0f

    const/16 v14, 0x53

    const/high16 v15, 0x41400000    # 12.0f

    move/from16 p12, v6

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p17, v4

    move/from16 p18, v5

    invoke-static/range {p12 .. p18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda30;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda19;

    invoke-direct {v1, v8, v9, v12, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/16 v5, 0x20

    const/high16 v6, 0x42000000    # 32.0f

    const/16 v7, 0x55

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 p9, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v3

    move/from16 p15, v4

    invoke-static/range {p9 .. p15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda20;

    invoke-direct {v1, v8, v11}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setOnUpdate(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateColors()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-direct {v0, v10, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/graphics/Rect;

    aput-object v0, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$13;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda21;

    move-object/from16 v3, p6

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-direct {v0, v8, v3, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$13;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    sput v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->savedPosition:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupEntities()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/ViewGroup;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/PaintView;I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    return-object p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Stories/recorder/PaintView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isBot:Z

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/PaintView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    return p1
.end method

.method private basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;
    .locals 5

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lorg/telegram/ui/Components/Size;

    div-float p1, v0, p1

    invoke-direct {v1, v0, p1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lorg/telegram/ui/Components/Size;

    mul-float p1, p1, v0

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private basePhotoSize(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/Size;
    .locals 6

    .line 0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v0, v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$WebDocument;

    :cond_2
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-float p1, v0, v1

    if-lez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    new-instance v1, Lorg/telegram/ui/Components/Size;

    div-float v0, p1, v0

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    new-instance v1, Lorg/telegram/ui/Components/Size;

    mul-float v0, v0, p1

    invoke-direct {v1, v0, p1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setIcon(I)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setSelected(Z)V

    if-eqz p4, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda65;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda65;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v1, :cond_2

    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v3, v4

    neg-float v3, v3

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v2, v3, v4, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    new-instance v4, Lorg/telegram/ui/Components/Point;

    invoke-direct {v4, v2, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-direct {v3, v4, v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    return-object v3

    :cond_5
    :goto_3
    return-object v1
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :cond_0
    if-gtz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    new-instance v2, Lorg/telegram/ui/Components/Point;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v2
.end method

.method private checkEntitiesIsVideo()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->wouldBeVideo()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setIsVideo(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 6

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createLinkSticker(Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LinkView;
    .locals 12

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    float-to-int v2, v1

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v10, v2, v3

    new-instance v11, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    const/high16 v3, 0x43b40000    # 360.0f

    div-float v7, v1, v3

    const/4 v9, 0x3

    move-object v1, v11

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Paint/Views/LinkView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;FII)V

    iget p1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    const/4 v2, 0x2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    :cond_1
    iget p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eqz p1, :cond_3

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const p2, -0xbac6

    if-eq p1, p2, :cond_3

    invoke-virtual {v11, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setColor(I)V

    :cond_3
    invoke-virtual {v11, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 p2, -0x2

    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v11, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz p1, :cond_4

    iget p1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    invoke-virtual {v11, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget p2, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float p2, p2

    iget p1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr p2, p1

    neg-float p1, p2

    invoke-virtual {v11, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-direct {p0, v11}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    invoke-direct {p0, v11, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    :cond_5
    return-object v11
.end method

.method private createLocationSticker(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LocationView;
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    float-to-int v2, v1

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v9, v2, v3

    new-instance v10, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    const/high16 v3, 0x43700000    # 240.0f

    div-float v7, v1, v3

    move-object v1, v10

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/Paint/Views/LocationView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;FI)V

    iget p1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    const/4 v2, 0x2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    :cond_1
    iget p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eqz p1, :cond_3

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const p2, -0xbac6

    if-eq p1, p2, :cond_3

    invoke-virtual {v10, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setColor(I)V

    :cond_3
    invoke-virtual {v10, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 p2, -0x2

    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v10, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz p1, :cond_4

    iget p1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    invoke-virtual {v10, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget p2, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float p2, p2

    iget p1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr p2, p1

    neg-float p1, p2

    invoke-virtual {v10, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-direct {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    invoke-direct {p0, v10, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    :cond_5
    return-object v10
.end method

.method private createReactionWidget(Z)Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;
    .locals 7

    new-instance v0, Lorg/telegram/ui/Components/Size;

    const/high16 v1, 0x42d40000    # 106.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v5, v3

    iget v3, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v1, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v3, v6, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Point;->y:F

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Size;)V

    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_2
    return-object v2
.end method

.method private createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .locals 11

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    move-result-object v0

    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$29;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4200(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4300(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)F

    move-result v5

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4400(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)F

    move-result v6

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v7

    move-object v1, v10

    move-object v2, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView$29;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    invoke-virtual {v10, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p3, :cond_1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v10
.end method

.method private createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v10, 0x41100000    # 9.0f

    div-float/2addr v2, v10

    float-to-int v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    const-string v6, ""

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v0, v10

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda33;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v9, v2, v0, v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMinMaxFontSize(IILjava/lang/Runnable;)V

    iget v0, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    :cond_0
    iget v0, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    :cond_1
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    const/4 p1, 0x0

    invoke-direct {p0, v9, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(I)V

    :cond_3
    return-object v9
.end method

.method private createWeatherView(Lorg/telegram/ui/Stories/recorder/Weather$State;Z)Lorg/telegram/ui/Components/Paint/Views/WeatherView;
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    float-to-int v2, v1

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v8, v2, v3

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    const/high16 v3, 0x43700000    # 240.0f

    div-float v6, v1, v3

    move-object v1, v9

    move-object v3, v0

    move-object v5, p1

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/ui/Stories/recorder/Weather$State;FI)V

    iget p1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    :cond_1
    iget p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eqz p1, :cond_3

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const v0, -0xbac6

    if-eq p1, v0, :cond_3

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setColor(I)V

    :cond_3
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz p1, :cond_4

    iget p1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v0, v0

    iget p1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v0, p1

    neg-float p1, v0

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    invoke-direct {p0, v9, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    :cond_5
    return-object v9
.end method

.method private detectFaces()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private duplicateEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v0, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private getBarView(I)Landroid/view/View;
    .locals 1

    .line 0
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarView()Landroid/view/ViewGroup;
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    :goto_0
    return-object v0
.end method

.method private getCenterLocationInWindow(Landroid/view/View;)[I
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float v1, v1, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float v1, v1, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    float-to-int v0, v3

    aput v0, p1, v2

    const/4 v0, 0x1

    aget v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    float-to-int v1, v2

    aput v1, p1, v0

    return-object p1
.end method

.method private getFrameRotation()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Size;

    const/high16 v1, 0x44870000    # 1080.0f

    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 11

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_0
    if-lez v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move-wide v8, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hideEmojiPopup(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$32;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$32;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideEmojiView()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_1
    return-void
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 9

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float p1, p1, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, p5, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v7, p5, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, p3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_3
    cmpg-float v3, v4, p1

    if-gez v3, :cond_4

    return v0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private isSidewardOrientation()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeCustomEmoji;

    if-nez v3, :cond_1

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "video/webm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private synthetic lambda$appearAnimation$59(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$buttonForPopup$41(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createRound$61(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$createText$15()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteRound$60(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$detectFaces$32()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "face detection is not operational"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getFrameRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/face/Face;

    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isSidewardOrientation()Z

    move-result v8

    invoke-direct {v6, v5, v7, v4, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :goto_3
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_5
    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method private synthetic lambda$hideEmojiPopup$64(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v4, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColorPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V
    .locals 1

    iget-boolean p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p4, :cond_0

    new-instance p4, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Stories/recorder/PaintView$12;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$12;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda51;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$12(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding2()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    if-lez p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x0

    if-lez p1, :cond_2

    neg-int v6, p1

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    new-array v7, v0, [F

    aput v6, v7, p2

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-lez p1, :cond_3

    neg-int p1, p1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr p1, v6

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    int-to-float p1, p1

    new-array v6, v0, [F

    aput p1, v6, p2

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    new-array v7, v0, [F

    aput v6, v7, p2

    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    if-eqz v1, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_4
    new-array v7, v0, [F

    aput v6, v7, p2

    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_5
    new-array v4, v0, [F

    aput v5, v4, p2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePreviewViewTranslationY()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0x15e

    const-wide/16 v5, 0xfa

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_7

    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_6

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x0

    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_a

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    if-eqz v1, :cond_8

    move-wide v8, v3

    goto :goto_9

    :cond_8
    move-wide v8, v5

    :goto_9
    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    if-eqz v1, :cond_9

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_a

    :cond_9
    sget-object v8, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    :goto_a
    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    add-int/2addr p1, v0

    goto :goto_8

    :cond_a
    if-nez v1, :cond_b

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->wasKeyboardVisible:Z

    if-eq p1, v1, :cond_c

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->wasKeyboardVisible:Z

    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->zoomOut()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearAll()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$6(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onCancelButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$42(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->animatePlusToIcon(I)V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$43(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->toggleFillShapes()V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    if-eqz v3, :cond_1

    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v3

    :goto_1
    check-cast v2, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    invoke-virtual {v2, v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setIcon(IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onAddButtonPressed$44()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v4

    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda58;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    invoke-direct {p0, v5, v4, v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda59;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$openStickersView$21()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->detectFaces()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$22([ZILandroid/content/DialogInterface;)V
    .locals 0

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    const/4 p3, 0x0

    aget-boolean p1, p1, p3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$openStickersView$23(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$openStickersView$24(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createLocationSticker(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LocationView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$openStickersView$25(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createWeatherView(Lorg/telegram/ui/Stories/recorder/Weather$State;Z)Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$26()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$23;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$openStickersView$27([ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    aput-boolean v2, p1, v2

    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda54;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    aput-boolean v2, p1, v2

    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-static {v4, p1}, Lorg/telegram/ui/Stories/recorder/Weather;->fetch(ZLorg/telegram/messenger/Utilities$Callback;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onGalleryClick()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3

    aput-boolean v2, p1, v2

    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showAudioAlert(Lorg/telegram/messenger/Utilities$Callback;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    iput-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/PaintView;->createReactionWidget(Z)Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_9

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-nez p3, :cond_5

    :try_start_0
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget p3, Lorg/telegram/messenger/R$string;->StoryLinkPremium:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-static {p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge p3, v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    if-lt v0, v3, :cond_8

    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget p3, Lorg/telegram/messenger/R$string;->StoryLinkLimitTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "StoryLinkLimitMessage"

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_8
    aput-boolean v2, p1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showLinkAlert(Lorg/telegram/ui/Components/Paint/Views/LinkView;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$registerRemovalUndo$62(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$setCurrentSwatch$40(Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setNewColor$14(IILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$17(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupTabsLayout$18(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$19(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAudioAlert$31(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private synthetic lambda$showColorList$38(Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p6, 0x447a0000    # 1000.0f

    div-float/2addr p7, p6

    iput p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    const/high16 p6, 0x3f800000    # 1.0f

    sub-float p7, p6, p7

    const p8, 0x3ecccccd    # 0.4f

    mul-float p7, p7, p8

    const p8, 0x3f19999a    # 0.6f

    add-float/2addr p7, p8

    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleY(F)V

    const/high16 p7, 0x41800000    # 16.0f

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    int-to-float p7, p7

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p8, v0}, Ljava/lang/Math;->min(FF)F

    move-result p8

    mul-float p7, p7, p8

    div-float/2addr p7, v0

    invoke-virtual {p1, p7}, Landroid/view/View;->setTranslationY(F)V

    iget p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-static {p7, v0}, Ljava/lang/Math;->min(FF)F

    move-result p7

    div-float/2addr p7, v0

    sub-float p7, p6, p7

    invoke-virtual {p1, p7}, Landroid/view/View;->setAlpha(F)V

    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setProgress(FZ)V

    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;->setProgress(F)V

    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;->setProgress(F)V

    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/high16 p8, 0x42000000    # 32.0f

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p8

    int-to-float p8, p8

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    mul-float p8, p8, v0

    invoke-virtual {p7, p8}, Landroid/view/View;->setTranslationY(F)V

    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    const/4 p8, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p7

    if-eqz p7, :cond_0

    aput-boolean p8, p3, p8

    :cond_0
    aget-boolean p3, p3, p8

    if-eqz p3, :cond_5

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sub-float p3, p6, p3

    :goto_0
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/4 p8, 0x0

    if-eqz p2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p4, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p7, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p6, 0x0

    :goto_2
    invoke-static {p4, p6, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    invoke-virtual {p7, p4}, Landroid/view/View;->setAlpha(F)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 p6, 0x421c0000    # 39.0f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    mul-float p6, p6, p3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, -0x1

    :goto_3
    int-to-float p2, p2

    mul-float p6, p6, p2

    sub-float/2addr p5, p6

    invoke-virtual {p4, p5}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method private synthetic lambda$showColorList$39(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$63(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showLinkAlert$28(Lorg/telegram/ui/Components/Paint/Views/LinkView;Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setLink(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createLinkSticker(Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LinkView;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$showLinkAlert$29(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private synthetic lambda$showLocationAlert$30(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private synthetic lambda$showMenuForEntity$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTryDeleteRound()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$46(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    :try_start_0
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    const p2, 0x1020031

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$47(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$48(Lorg/telegram/ui/Components/Paint/Views/EntityView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v0, v1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setLocation(ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showMenuForEntity$49(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$50(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showLinkAlert(Lorg/telegram/ui/Components/Paint/Views/LinkView;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$51(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 1

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror(Z)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror(Z)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirror(Z)V

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror(Z)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$52(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->toggleSegmented(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isSegmented()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onSwitchSegmentedAnimation(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$53(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$54(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->duplicateEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$55(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 12

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    const/16 v3, 0x10

    const/16 v4, 0x2c

    const/4 v5, -0x2

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    if-nez v2, :cond_0

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v9, v1, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v9, Lorg/telegram/messenger/R$string;->PaintDelete:I

    const-string v10, "PaintDelete"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda40;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v8, :cond_4

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v9, v1, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v9, v9, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v9, :cond_2

    :cond_1
    iget v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v9, :cond_3

    :cond_2
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v9, Lorg/telegram/messenger/R$string;->Paste:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda41;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v9, Lorg/telegram/messenger/R$string;->PaintEdit:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda42;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    :goto_0
    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz v8, :cond_5

    sget v8, Lorg/telegram/messenger/R$string;->PaintEdit:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda43;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz v8, :cond_6

    sget v8, Lorg/telegram/messenger/R$string;->PaintEdit:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    :cond_6
    :goto_2
    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v8, :cond_7

    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-nez v8, :cond_7

    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v8, :cond_7

    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v8, :cond_8

    :cond_7
    sget v8, Lorg/telegram/messenger/R$string;->Flip:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {p0, v9, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda45;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    instance-of v8, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v8, :cond_a

    move-object v9, p1

    check-cast v9, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->hasSegmentedImage()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isSegmented()Z

    move-result v10

    if-eqz v10, :cond_9

    sget v10, Lorg/telegram/messenger/R$string;->SegmentationUndoCutOut:I

    goto :goto_3

    :cond_9
    sget v10, Lorg/telegram/messenger/R$string;->SegmentationCutOut:I

    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-direct {p0, v11, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda46;

    invoke-direct {v11, p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightSegmented()V

    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v7

    const/4 v11, 0x2

    if-eq v9, v10, :cond_b

    instance-of v9, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-nez v9, :cond_b

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v2, v3, v1, v8, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v3, Lorg/telegram/messenger/R$string;->PaintBringToFront:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    if-nez v2, :cond_c

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-nez v2, :cond_c

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-nez v2, :cond_c

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-nez v2, :cond_c

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-nez v2, :cond_c

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-nez v2, :cond_c

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v2, v3, v1, v8, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v3, Lorg/telegram/messenger/R$string;->PaintDuplicate:I

    const-string v6, "PaintDuplicate"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda48;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_4

    :cond_c
    :goto_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_11

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x8

    if-nez p1, :cond_d

    const/16 v6, 0x8

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne p1, v8, :cond_e

    const/16 v8, 0x8

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne p1, v9, :cond_f

    const/16 v9, 0x8

    goto :goto_9

    :cond_f
    const/4 v9, 0x0

    :goto_9
    if-nez p1, :cond_10

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    :goto_a
    invoke-static {v3, v6, v8, v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showPopup$56(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$57(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$58()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method private synthetic lambda$showReactionsLayout$16(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$36(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$37(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->setMaskProvider(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$shutdown$33()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchTab$20(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-ne p3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-ne p3, v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    mul-float v3, v3, v1

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    sub-float v0, v3, p3

    mul-float v4, v0, v1

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v5, v5, v7

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    mul-float p3, p3, v1

    add-float/2addr p3, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float p1, p1, p3

    div-float/2addr p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$updateTextDim$65(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private openStickersView()V
    .locals 10

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$22;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/PaintView$22;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZI)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->setBlurDelegate(Lorg/telegram/messenger/Utilities$Callback2;)V

    new-array v0, v8, [Z

    const/4 v1, 0x0

    aput-boolean v8, v0, v1

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, v7}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;[ZI)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenDocumentSelected(Lorg/telegram/messenger/Utilities$Callback3Return;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;[ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenWidgetSelected(Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->deleteSegmentedFile()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->creatingNewRound:Z

    if-nez v0, :cond_4

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onDeleteRound()V

    :cond_4
    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 6

    .line 0
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-ne v5, v1, :cond_1

    :cond_0
    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_4

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    if-eq v3, v1, :cond_2

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :cond_4
    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_5

    const/16 v5, 0x15

    if-eq v4, v5, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p2, :cond_16

    if-ne p2, p1, :cond_13

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hadMultitouch()Z

    move-result p2

    if-nez p2, :cond_12

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz p2, :cond_9

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getType()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getTypesCount()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setType(I)V

    goto/16 :goto_1

    :cond_9
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-eqz p2, :cond_a

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->getType()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->getTypesCount()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setType(I)V

    goto :goto_1

    :cond_a
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz p2, :cond_d

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->withPreview()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->getPreviewType()I

    move-result p2

    if-nez p2, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setPreviewType(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->getNextType()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setType(I)V

    goto :goto_1

    :cond_d
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-nez p2, :cond_11

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_e

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    goto :goto_1

    :cond_e
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz p2, :cond_10

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-ne v0, p1, :cond_f

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->changeStyle(Z)V

    goto :goto_1

    :cond_f
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayoutForView(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;)V

    goto :goto_1

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_12

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    :cond_12
    :goto_1
    return v3

    :cond_13
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_14

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez v0, :cond_15

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    goto :goto_2

    :cond_14
    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_15

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->onDeselectRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    :cond_15
    :goto_2
    const/4 p2, 0x1

    goto :goto_3

    :cond_16
    const/4 p2, 0x0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_17

    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eq v0, p1, :cond_18

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onSelectRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_19

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v0, p2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->disableAutoresize(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget p2, p2, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$14;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$14;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    goto :goto_4

    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_4

    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1b

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p1, :cond_1c

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    :cond_1c
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    move v3, p2

    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateTextDim()V

    return v3
.end method

.method private setCoverPause(Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;Z)V

    return-void
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eq v0, p1, :cond_0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p2, p2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p3, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p3, :cond_3

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    new-instance p3, Lorg/telegram/ui/Components/Paint/Swatch;

    iget p4, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {p3, p4, v0, p1}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x3

    if-eqz p4, :cond_4

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setType(I)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-eqz v0, :cond_5

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setType(I)V

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz p3, :cond_6

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setType(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setNewColor(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V
    .locals 4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setAlign(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    const/16 v2, 0x13

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_2

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_2
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method

.method private setTextType(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTextType(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    return-void
.end method

.method private setupEntities()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-byte v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    if-nez v6, :cond_0

    iget-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iget-object v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v6, v9, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object v6

    iget-byte v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    goto/16 :goto_3

    :cond_0
    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    move-result-object v6

    iget-byte v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    iget-object v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setBaseFontSize(I)V

    new-instance v8, Landroid/text/SpannableString;

    iget-object v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    invoke-direct {v11, v12, v13, v7, v14}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    iget v12, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v12

    const/16 v13, 0x21

    invoke-virtual {v8, v11, v12, v10, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v8

    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v9, v3, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v9, :cond_2

    const/4 v10, 0x0

    :goto_2
    array-length v11, v9

    if-ge v10, v11, :cond_2

    aget-object v11, v9, v10

    const v12, 0x3f59999a    # 0.85f

    iput v12, v11, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/CharSequence;)V

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-direct {p0, v6, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v8

    iget v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v9, v8, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    goto/16 :goto_4

    :cond_3
    if-ne v6, v8, :cond_5

    iget-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v6

    iget-object v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->preloadSegmented(Ljava/lang/String;)V

    iget-byte v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror()V

    :cond_4
    iget-byte v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_6

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->toggleSegmented(Z)V

    goto :goto_3

    :cond_5
    const/4 v9, 0x6

    if-ne v6, v9, :cond_7

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    iget-boolean v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-virtual {p0, v6, v3, v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->createMessage(Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    move-result-object v6

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    if-lez v8, :cond_14

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    if-lez v8, :cond_14

    :cond_6
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    :cond_7
    const/4 v9, 0x3

    if-ne v6, v9, :cond_9

    iget-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-direct {p0, v6, v8, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createLocationSticker(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LocationView;

    move-result-object v6

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    if-eqz v8, :cond_8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setColor(I)V

    :cond_8
    iget-byte v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setType(I)V

    goto/16 :goto_4

    :cond_9
    const/16 v10, 0x8

    if-ne v6, v10, :cond_c

    iget-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    if-nez v6, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-direct {p0, v6, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createWeatherView(Lorg/telegram/ui/Stories/recorder/Weather$State;Z)Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    move-result-object v6

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    if-eqz v8, :cond_b

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setColor(I)V

    :cond_b
    iget-byte v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setType(I)V

    goto/16 :goto_4

    :cond_c
    const/4 v10, 0x7

    if-ne v6, v10, :cond_10

    iget-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-direct {p0, v6, v8, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createLinkSticker(Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LinkView;

    move-result-object v6

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    if-eqz v8, :cond_d

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setColor(I)V

    :cond_d
    iget-object v8, v6, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->withPreview()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v6, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget-byte v10, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setPreviewType(I)V

    :cond_e
    iget-byte v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v10, -0x1

    if-ne v8, v10, :cond_f

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setType(I)V

    iget-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setupLayout()V

    iget-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v8, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    iget v7, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    add-int/2addr v8, v7

    iget-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v9, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    add-int/2addr v8, v9

    iput v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v8, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    iget v7, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    add-int/2addr v8, v7

    iget-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v7, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    add-int/2addr v8, v7

    iput v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v5

    iget v7, v5, Lorg/telegram/ui/Components/Point;->y:F

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    int-to-float v8, v8

    const v9, 0x3e99999a    # 0.3f

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    iput v7, v5, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setType(I)V

    goto :goto_4

    :cond_10
    const/4 v9, 0x4

    if-ne v6, v9, :cond_12

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createReactionWidget(Z)Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    move-result-object v6

    iget-object v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->setCurrentReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    iget-object v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-boolean v8, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    if-eqz v8, :cond_11

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror(Z)V

    :cond_11
    iget-object v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-boolean v8, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    if-eqz v8, :cond_14

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->changeStyle(Z)V

    goto :goto_4

    :cond_12
    const/4 v9, 0x5

    if-ne v6, v9, :cond_15

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-nez v6, :cond_13

    goto :goto_5

    :cond_13
    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->createRound(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/RoundView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->onCreateRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    iget-byte v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v8, v9

    if-eqz v8, :cond_14

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirror(Z)V

    :cond_14
    :goto_4
    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v9, v9

    iget v10, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float v10, v7, v10

    mul-float v9, v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/view/View;->setX(F)V

    iget v8, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v9, v9

    iget v11, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float/2addr v7, v11

    mul-float v9, v9, v7

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/view/View;->setY(F)V

    new-instance v7, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v8

    iget v9, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v9

    iget v11, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v9, v11

    invoke-direct {v7, v8, v9}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    iget v7, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    iget v5, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v5, v5

    float-to-double v7, v5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double v7, v7, v9

    double-to-float v5, v7

    invoke-virtual {v6, v5}, Landroid/view/View;->setRotation(F)V

    :cond_15
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method private setupTabsLayout(Landroid/content/Context;)V
    .locals 13

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$20;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/high16 v8, 0x42500000    # 52.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/16 v5, 0x50

    const/high16 v6, 0x42500000    # 52.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PhotoEditorDraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->PhotoEditorSticker:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v8

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v0, v1, v8, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->PhotoEditorText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showAudioAlert(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$26;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$26;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/os/Bundle;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$27;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    aget-object p1, v0, v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda60;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object p1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryAudioPicker()V

    aget-object p1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    aget-object p1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    return-void
.end method

.method private showColorList(Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eq v2, p1, :cond_5

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/high16 v6, 0x447a0000    # 1000.0f

    :goto_0
    invoke-direct {v3, v6}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const v4, 0x449c4000    # 1250.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    new-array v7, v0, [Z

    aput-boolean v2, v7, v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda14;

    move-object v3, v2

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Z[ZFF)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColorPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    :cond_5
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createEmojiView()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewWasVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x43160000    # 150.0f

    if-gtz v3, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_1
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    goto :goto_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const-string v7, "kbd_height"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_2
    :goto_2
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    if-gtz v3, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_3
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_4

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string v5, "kbd_height_land3"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_4
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_5

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_6

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_6
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiWasPadding:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_7
    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    goto :goto_6

    :cond_8
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v0

    const/4 p1, 0x0

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$31;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_a

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewWasVisible:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_c

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    :cond_e
    :goto_6
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method private showLinkAlert(Lorg/telegram/ui/Components/Paint/Views/LinkView;)V
    .locals 5

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda63;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/LinkView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/messenger/Utilities$Callback;)V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/LinkView;->link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->set(Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda64;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->show()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$24;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$24;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/os/Bundle;Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Lorg/telegram/ui/Stories/recorder/PaintView$25;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$25;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v7, v0, v1, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryLocationPicker(DD)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->fileFromGallery:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideo:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->file:Ljava/io/File;

    invoke-virtual {v7, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryLocationPicker(ZLjava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryLocationPicker()V

    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda61;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v7, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 9

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v7, v0, v1

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v5, 0x33

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;IIIZ)V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;IIIZ)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    iput-boolean p6, v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;->enableBounce:Z

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const v2, 0x461c4000    # 10000.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    and-int/lit8 p1, p3, 0x30

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr p4, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    if-eqz p6, :cond_4

    new-instance p3, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object p6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v0, 0x5

    invoke-direct {p3, p6, p2, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    int-to-float p4, p4

    int-to-float p5, p5

    const p6, 0x4104cccd    # 8.3f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p6

    invoke-virtual {p3, p4, p5, p1, p6}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const p2, -0xd7d7d7

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private showReactionsLayoutForView(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PaintView$15;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$15;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$16;

    new-instance v4, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-direct {v9, p0, v4}, Lorg/telegram/ui/Stories/recorder/PaintView$16;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v5, 0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v4, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-direct {v4, v5, v0, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v6, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x42800000    # 64.0f

    const/4 v5, -0x2

    const/high16 v6, 0x42c00000    # 96.0f

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    const/16 v5, 0x78

    invoke-static {v2, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PaintView$17;

    invoke-direct {v5, p0, v4, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$17;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1, v1, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    return-void
.end method

.method private showTypefaceMenu(Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/high16 v4, 0x447a0000    # 1000.0f

    :goto_0
    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v2, 0x43480000    # 200.0f

    if-eqz v1, :cond_0

    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v3

    :cond_0
    const v3, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    new-instance v3, Lorg/telegram/ui/Components/Point;

    iget v4, v1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v4, v2

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v2

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v3

    :cond_1
    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v4, v1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_6

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v10, :cond_3

    instance-of v10, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v10, :cond_4

    :cond_3
    move v15, v6

    goto :goto_2

    :cond_4
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v10

    iget v11, v10, Lorg/telegram/ui/Components/Point;->x:F

    iget v12, v1, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v10, v10, Lorg/telegram/ui/Components/Point;->y:F

    iget v15, v1, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v10, v15

    move v15, v6

    float-to-double v5, v10

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    const/4 v8, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v15

    goto :goto_1

    :cond_6
    move v15, v6

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    new-instance v5, Lorg/telegram/ui/Components/Point;

    iget v6, v1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v6, v2

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v2

    invoke-direct {v5, v6, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    add-int/lit8 v6, v15, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_8
    :goto_3
    return-object v1
.end method

.method private switchTab(I)V
    .locals 6

    const/4 v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-eq v1, p1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object v1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setInTextMode(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v5

    iput v5, v3, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$21;

    invoke-direct {v3, p0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$21;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePlusEmojiKeyboardButton()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->input_smile:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    xor-int/lit8 v7, v0, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move v2, v7

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v3, v7

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move v2, v0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method private updatePreviewViewTranslationY()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v2, :cond_5

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float v2, v2, v3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateTextDim()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public appearAnimation(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected abstract checkAudioPermission(Ljava/lang/Runnable;)Z
.end method

.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->clearAll()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method protected createEmojiView()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$33;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createMessage(Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$28;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    move v9, p3

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView$28;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-object v0
.end method

.method public createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 10

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v0, :cond_0

    iget v0, v6, Lorg/telegram/ui/Components/Size;->width:F

    iget v2, v6, Lorg/telegram/ui/Components/Size;->height:F

    iput v2, v6, Lorg/telegram/ui/Components/Size;->width:F

    iput v0, v6, Lorg/telegram/ui/Components/Size;->height:F

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;II)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v0
.end method

.method public createPhoto(Lorg/telegram/tgnet/TLObject;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 8

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->basePhotoSize(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/Size;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-object v0
.end method

.method public createRound(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/RoundView;
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->creatingNewRound:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->deleteRound()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :cond_0
    int-to-float v0, v0

    const v1, 0x3edc28f6    # 0.43f

    mul-float v1, v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v7, Lorg/telegram/ui/Components/Size;

    invoke-direct {v7, v1, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    iget v1, v7, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, v7, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/Point;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, v9

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Paint/Views/RoundView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    if-eqz p2, :cond_1

    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->creatingNewRound:Z

    return-object v9
.end method

.method public deleteRound()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x118

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    return-void
.end method

.method protected abstract dismiss()V
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isCoverPreview:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->inBubbleMode:Z

    if-nez v0, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    move v8, v3

    move v3, v2

    move v2, v8

    :cond_3
    :goto_0
    int-to-float v3, v3

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float v3, v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v2, v2

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float v2, v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->transformX:F

    add-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getAdditionalBottom()I

    move-result v0

    add-int/2addr v6, v0

    sub-int/2addr v6, v2

    int-to-float v0, v6

    div-float/2addr v0, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->transformY:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v5, v1, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x1

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return p2
.end method

.method protected editSelectedTextEntity()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public findMessageView()Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRoundView()Lorg/telegram/ui/Components/Paint/Views/RoundView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p4, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move/from16 v7, p7

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v5, v5}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_55

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_55

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v0, v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_3

    move-object v3, v1

    move-object v2, v7

    move/from16 v24, v8

    move/from16 v25, v9

    :goto_3
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2e

    :cond_3
    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    new-instance v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v11}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v2, :cond_4a

    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const-wide v17, 0x3f91df46a2529d39L    # 0.017453292519943295

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v21, 0x1388

    if-eqz v4, :cond_e

    iput-byte v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    instance-of v13, v12, Landroid/text/Spanned;

    if-eqz v13, :cond_d

    move-object v13, v12

    check-cast v13, Landroid/text/Spanned;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const-class v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v13, v5, v15, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v14, :cond_d

    const/4 v15, 0x0

    :goto_4
    array-length v5, v14

    if-ge v15, v5, :cond_d

    aget-object v5, v14, v15

    iget-object v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v6, :cond_4

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    move/from16 v24, v8

    move/from16 v25, v9

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    goto :goto_5

    :cond_4
    move/from16 v24, v8

    move/from16 v25, v9

    :goto_5
    if-eqz v6, :cond_5

    iget v8, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_5
    new-instance v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v8}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    move-object/from16 v26, v10

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v9

    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iput-object v6, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface {v13, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-interface {v13, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v5, v9

    iput v5, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_7

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Ljava/io/File;

    iget-object v10, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    iget v9, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLObject;

    move-object/from16 v27, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    add-int/2addr v5, v13

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_6

    goto :goto_7

    :cond_6
    move-object/from16 v13, v27

    goto :goto_6

    :cond_7
    move-object/from16 v27, v13

    const/4 v13, 0x1

    :goto_7
    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5, v13}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_8
    iget-byte v9, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v5, 0x4

    :goto_8
    or-int/2addr v5, v9

    int-to-byte v5, v5

    iput-byte v5, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    :cond_a
    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-byte v5, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    const/16 v9, 0x8

    or-int/2addr v5, v9

    int-to-byte v5, v5

    iput-byte v5, v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    :cond_b
    iget-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_c

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v24

    move/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v13, v27

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_d
    move/from16 v24, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTextSize()I

    move-result v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v5

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result v4

    iput v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    goto/16 :goto_14

    :cond_e
    move/from16 v24, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    iput-byte v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v8

    iget v9, v8, Lorg/telegram/ui/Components/Size;->width:F

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v8, v8, Lorg/telegram/ui/Components/Size;->height:F

    iput v8, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    iput-object v8, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v8, v10}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_f
    invoke-static {v8, v10}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v9

    iget-byte v10, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v9, :cond_10

    const/4 v12, 0x1

    goto :goto_9

    :cond_10
    const/4 v12, 0x4

    :goto_9
    or-int/2addr v10, v12

    int-to-byte v10, v10

    iput-byte v10, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-nez v9, :cond_11

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getDuration()J

    move-result-wide v21

    :cond_12
    cmp-long v9, v21, v5

    if-eqz v9, :cond_13

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v9, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    :cond_13
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, -0x1

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iget-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/16 v6, 0x8

    or-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    :cond_14
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->isMirrored()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_15
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v4, :cond_17

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    const/4 v5, 0x2

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    iput v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v5, v5, Lorg/telegram/ui/Components/Size;->height:F

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getPath(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->crop:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isMirrored()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    :cond_16
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->hasSegmentedImage()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isSegmented()Z

    move-result v5

    if-eqz v5, :cond_29

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->saveSegmentedImage(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_29

    iget-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    goto/16 :goto_14

    :cond_17
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz v4, :cond_1c

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    const/4 v5, 0x3

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getType()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getColor()I

    move-result v5

    goto :goto_a

    :cond_18
    const/4 v5, 0x0

    :goto_a
    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v5, v5, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getCodeEmojiDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_29

    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_19
    iget-byte v6, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v4, :cond_1a

    const/4 v12, 0x1

    goto :goto_b

    :cond_1a
    const/4 v12, 0x4

    :goto_b
    or-int v4, v6, v12

    int-to-byte v4, v4

    iput-byte v4, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    :cond_1b
    iget-object v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_1c
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-eqz v4, :cond_22

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    const/16 v5, 0x8

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->getType()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->getColor()I

    move-result v5

    goto :goto_c

    :cond_1d
    const/4 v5, 0x0

    :goto_c
    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v5, v5, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;-><init>()V

    iget-object v6, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    iget-object v8, v6, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->emoji:Ljava/lang/String;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-double v8, v6

    iput-wide v8, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->temperature_c:D

    iget-object v6, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget-object v6, v6, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    iput v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->color:I

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getCodeEmojiDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_21

    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_20

    :cond_1e
    iget-byte v6, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v4, :cond_1f

    const/4 v12, 0x1

    goto :goto_d

    :cond_1f
    const/4 v12, 0x4

    :goto_d
    or-int v4, v6, v12

    int-to-byte v4, v4

    iput-byte v4, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    :cond_20
    iget-object v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object v15, v0

    move-object/from16 p7, v7

    const/4 v0, 0x0

    :goto_e
    const/4 v4, 0x0

    :goto_f
    const/4 v10, 0x0

    move-object/from16 v31, v3

    move-object v3, v1

    move-object/from16 v1, v31

    goto/16 :goto_1f

    :cond_22
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz v4, :cond_2a

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    const/4 v5, 0x7

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->withPreview()Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->getPreviewType()I

    move-result v5

    :goto_10
    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    goto :goto_11

    :cond_23
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->getType()I

    move-result v5

    goto :goto_10

    :goto_11
    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->getColor()I

    move-result v5

    goto :goto_12

    :cond_24
    const/4 v5, 0x0

    :goto_12
    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v6, v5, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    iput v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    iget-object v6, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iput-object v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-boolean v6, v5, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v6, :cond_25

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pushPhotoToCache()V

    iget-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget v6, v5, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    const/4 v8, 0x4

    or-int/2addr v6, v8

    iput v6, v5, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    iget-object v6, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->getPhotoSide()I

    move-result v6

    iput v6, v5, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->photoSize:I

    :cond_25
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;-><init>()V

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v6, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    if-nez v6, :cond_27

    :cond_26
    move-object v3, v1

    move-object v2, v7

    goto/16 :goto_3

    :cond_27
    iget-object v6, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v6, :cond_28

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto :goto_13

    :cond_28
    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/LinkView;->link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    :goto_13
    iput-object v4, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;->url:Ljava/lang/String;

    iget-object v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    :cond_29
    :goto_14
    move-object v15, v0

    move-object/from16 p7, v7

    const/4 v0, 0x1

    goto/16 :goto_e

    :cond_2a
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v4, :cond_2c

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    const/4 v5, 0x4

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;-><init>()V

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getCurrentReaction()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->toTLReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->isDark()Z

    move-result v6

    iput-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    iget-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->isMirrored()Z

    move-result v4

    iput-boolean v4, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    iget-object v4, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    :cond_2b
    move-object v15, v0

    move-object/from16 p7, v7

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto/16 :goto_f

    :cond_2c
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v4, :cond_2e

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    iput v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v5, v5, Lorg/telegram/ui/Components/Size;->height:F

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const/4 v5, 0x5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-eqz v3, :cond_2d

    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iput-wide v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundOffset:J

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iput-wide v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundDuration:J

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    long-to-float v5, v5

    mul-float v8, v8, v5

    float-to-long v8, v8

    iput-wide v8, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundLeft:J

    iget v6, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    mul-float v6, v6, v5

    float-to-long v5, v6

    iput-wide v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRight:J

    :cond_2d
    const/4 v8, 0x4

    iput-byte v8, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->isMirrored()Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    :goto_15
    iget-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    move-object v15, v0

    move-object/from16 p7, v7

    const/4 v0, 0x1

    goto/16 :goto_f

    :cond_2e
    const/4 v8, 0x4

    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v4, :cond_26

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    const/4 v9, 0x6

    iput-byte v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v9, v9

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v9, v9

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v9, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2f

    iget-object v9, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    goto :goto_16

    :cond_2f
    const/4 v9, 0x0

    :goto_16
    if-eqz v9, :cond_39

    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v10, :cond_39

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v12, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v12, :cond_39

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    new-instance v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;

    invoke-direct {v10}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;-><init>()V

    iput-object v10, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v12, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iput-object v12, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;->slug:Ljava/lang/String;

    new-instance v12, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v12}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v12, v10, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    const/4 v10, 0x0

    :goto_17
    iget-object v12, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_31

    iget-object v12, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v13, :cond_30

    check-cast v12, Lorg/telegram/ui/Cells/ChatActionCell;

    goto :goto_18

    :cond_30
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_31
    const/4 v12, 0x0

    :goto_18
    if-eqz v12, :cond_38

    iget-object v10, v12, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    if-eqz v10, :cond_38

    iget-object v10, v10, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v10, :cond_38

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v13}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget-object v13, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v14, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v13, v14}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v13, :cond_37

    const/high16 v14, 0x42dc0000    # 110.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v23

    add-float v15, v15, v23

    iget v8, v12, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayoutX:F

    add-float/2addr v15, v8

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v8

    add-float/2addr v15, v8

    iget-object v8, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v23

    add-float v8, v8, v23

    iget v12, v12, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayoutY:F

    add-float/2addr v8, v12

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v12

    add-float/2addr v8, v12

    new-instance v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v12}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    const/4 v5, 0x0

    iput-byte v5, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    iput v14, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v14, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v5, v13, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v5, v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v5, v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_36

    :cond_32
    invoke-static {v5, v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v6

    iget-byte v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v6, :cond_33

    const/4 v13, 0x1

    goto :goto_19

    :cond_33
    const/4 v13, 0x4

    :goto_19
    or-int/2addr v9, v13

    int-to-byte v9, v9

    iput-byte v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v9

    if-eqz v9, :cond_35

    if-nez v6, :cond_34

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_35

    :cond_34
    invoke-virtual {v9}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v21

    :cond_35
    const-wide/16 v5, 0x0

    cmp-long v9, v21, v5

    if-eqz v9, :cond_36

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v9, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    :cond_36
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getY()F

    move-result v13

    move-object/from16 v21, v10

    float-to-int v10, v14

    iput v10, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v10, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    mul-float v10, v14, v5

    move-object/from16 p7, v7

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v10, v7

    iput v10, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float v7, v14, v6

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    iput v7, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    add-float/2addr v9, v7

    iput v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    add-float/2addr v13, v7

    iput v13, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    mul-float v15, v15, v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    mul-float v7, v7, v5

    sub-float/2addr v15, v7

    mul-float v8, v8, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    mul-float v7, v7, v6

    sub-float/2addr v8, v7

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getRotation()F

    move-result v7

    const/high16 v9, 0x43340000    # 180.0f

    div-float/2addr v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v19

    double-to-float v7, v9

    iget v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    float-to-double v9, v9

    move-object v13, v4

    float-to-double v3, v15

    move-object v15, v0

    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v27, v27, v3

    float-to-double v7, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v29, v29, v7

    sub-double v27, v27, v29

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double v9, v9, v27

    double-to-float v9, v9

    iput v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v9, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    float-to-double v9, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v0

    add-double/2addr v3, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v3

    double-to-float v0, v9

    iget v1, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    neg-float v3, v14

    div-float v3, v3, v16

    mul-float v4, v3, v5

    add-float/2addr v1, v4

    iput v1, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    mul-float v3, v3, v6

    add-float/2addr v0, v3

    iput v0, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    move-object/from16 v3, p0

    iget-object v0, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v0, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object v1, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getRotation()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v17

    double-to-float v0, v0

    iput v0, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v5, v12, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_37
    move-object v15, v0

    move-object v3, v1

    move-object v13, v4

    move-object/from16 p7, v7

    move-object/from16 v21, v10

    :goto_1a
    move-object/from16 v10, v21

    goto :goto_1c

    :cond_38
    move-object v15, v0

    move-object v3, v1

    move-object v13, v4

    move-object/from16 p7, v7

    goto :goto_1b

    :cond_39
    move-object v15, v0

    move-object v3, v1

    move-object v13, v4

    move-object/from16 p7, v7

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;

    if-eqz v9, :cond_3a

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;-><init>()V

    iput-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;

    iget v1, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getRepostDialogId(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getRepostMessageId(Lorg/telegram/messenger/MessageObject;)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;->msg_id:I

    goto :goto_1b

    :cond_3a
    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_inputMediaAreaChannelPost;-><init>()V

    iput-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    :goto_1b
    const/4 v10, 0x0

    :goto_1c
    move-object/from16 v1, p8

    if-nez p6, :cond_3b

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1f

    :cond_3b
    if-eqz v1, :cond_3e

    iget-boolean v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    move-object v0, v13

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3d

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_3c

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    goto :goto_1e

    :cond_3c
    :goto_1d
    const/4 v5, 0x0

    goto :goto_1e

    :cond_3d
    const/4 v4, 0x0

    goto :goto_1d

    :goto_1e
    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v6

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    iget v9, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v8, v9

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v8

    iget v9, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v9, v9

    mul-float v9, v9, v6

    div-float v9, v9, v16

    sub-float/2addr v8, v9

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v5

    iget v9, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v9, v9

    mul-float v9, v9, v6

    div-float v9, v9, v16

    sub-float/2addr v5, v9

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v14, v5, v4

    iget-object v4, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    invoke-virtual {v0, v14, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_3e
    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v9

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v5

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v6

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v14, v12, v5

    mul-float v9, v9, v14

    div-float v9, v9, v16

    add-float/2addr v9, v7

    iget-object v13, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v9, v13

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float v14, v12, v6

    mul-float v9, v9, v14

    div-float v9, v9, v16

    add-float/2addr v9, v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getRotation()F

    move-result v9

    neg-float v9, v9

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v17

    double-to-float v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v16

    add-float/2addr v9, v7

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v16

    add-float/2addr v9, v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    iget v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v9, v9

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    iget v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v9, v9

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    iput v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    iput v5, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    move-object v9, v15

    instance-of v12, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v12, :cond_3f

    check-cast v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->getBubbleBounds(Landroid/graphics/RectF;)F

    move-result v13

    float-to-double v13, v13

    iget-object v15, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    move/from16 v22, v0

    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v12, v15, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v9, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v12, v0, v9}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v16

    add-float/2addr v7, v9

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v16

    mul-float v9, v9, v5

    sub-float/2addr v7, v9

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    mul-float v9, v9, v5

    add-float/2addr v7, v9

    iget-object v9, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v7, v7, v9

    float-to-double v1, v7

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v16

    add-float/2addr v8, v1

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v16

    mul-float v1, v1, v6

    sub-float/2addr v8, v1

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    mul-float v1, v1, v6

    add-float/2addr v8, v1

    iget-object v1, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v8, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v8, v8, v1

    float-to-double v7, v8

    iput-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v5

    iget-object v7, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    mul-float v2, v2, v1

    float-to-double v7, v2

    iput-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v6

    iget-object v6, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    mul-float v2, v2, v1

    float-to-double v1, v2

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v1, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v1, v19

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v6

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    goto/16 :goto_26

    :cond_3f
    move/from16 v22, v0

    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_41

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageAspectRatio()F

    move-result v0

    iget v1, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v2, v2, v16

    add-float/2addr v1, v2

    iget v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v6, v6, v16

    add-float/2addr v2, v6

    iget-object v6, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v7

    if-lez v8, :cond_40

    iget v1, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float v1, v1, v6

    div-float/2addr v1, v0

    iput v1, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    div-float v1, v1, v16

    sub-float/2addr v2, v1

    iput v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    goto/16 :goto_25

    :cond_40
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v7, v0, v2

    if-gez v7, :cond_49

    iget v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v2, v6

    mul-float v2, v2, v0

    iput v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v0, v6

    iput v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    iput v1, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    goto/16 :goto_25

    :cond_41
    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v0, :cond_49

    instance-of v1, v9, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-nez v1, :cond_42

    instance-of v2, v9, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-nez v2, :cond_42

    instance-of v2, v9, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-nez v2, :cond_42

    instance-of v2, v9, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v2, :cond_49

    :cond_42
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v7, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v8, v7, v16

    add-float/2addr v2, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v2, v2, v8

    float-to-double v12, v2

    iput-wide v12, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    iget v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v12, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v12, v12, v16

    add-float/2addr v2, v12

    mul-float v2, v2, v8

    float-to-double v12, v2

    iput-wide v12, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    if-eqz v1, :cond_43

    move-object v2, v9

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget-object v8, v2, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v8, v8, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    const/4 v12, 0x2

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float v8, v8, v5

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    float-to-double v7, v7

    iput-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v7, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    :goto_20
    iget v2, v2, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    :goto_21
    const/4 v8, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, v6

    iget-object v6, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float/2addr v7, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v7, v7, v2

    float-to-double v6, v7

    iput-wide v6, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    goto/16 :goto_22

    :cond_43
    instance-of v2, v9, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-eqz v2, :cond_44

    move-object v2, v9

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    iget-object v8, v2, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v8, v8, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    const/4 v12, 0x2

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float v8, v8, v5

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    float-to-double v7, v7

    iput-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v7, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    goto :goto_20

    :cond_44
    instance-of v2, v9, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz v2, :cond_45

    move-object v2, v9

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    iget-object v8, v2, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v8, v8, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    const/4 v12, 0x2

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float v8, v8, v5

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    float-to-double v7, v7

    iput-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v7, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    goto :goto_21

    :cond_45
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v0, :cond_46

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getPadding()I

    move-result v2

    const/4 v6, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, v5

    iget-object v7, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getPadding()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, v5

    iget-object v6, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    iget-object v6, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v7, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    sub-float/2addr v7, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v7, v7, v2

    float-to-double v7, v7

    iput-wide v7, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    iget v7, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    sub-float/2addr v7, v0

    mul-float v7, v7, v2

    float-to-double v7, v7

    iput-wide v7, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    :cond_46
    :goto_22
    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v2, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v2, v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v6, v19

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double v6, v6, v12

    iput-wide v6, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    if-eqz v1, :cond_47

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    :goto_23
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getRadius()F

    move-result v0

    :goto_24
    float-to-double v13, v0

    goto :goto_26

    :cond_47
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    if-eqz v0, :cond_48

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    goto :goto_23

    :cond_48
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    if-eqz v0, :cond_49

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/LinkView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->getRadius()F

    move-result v0

    goto :goto_24

    :cond_49
    :goto_25
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    :goto_26
    iget-object v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    if-eqz v0, :cond_4b

    const-wide/16 v1, 0x0

    cmpl-double v6, v13, v1

    if-lez v6, :cond_4b

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v13

    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v5

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->radius:D

    goto :goto_27

    :cond_4a
    move-object v3, v1

    move-object/from16 p7, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x1

    :cond_4b
    :goto_27
    if-eqz v22, :cond_4c

    if-nez p5, :cond_4d

    if-eqz p6, :cond_4c

    iget-byte v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4c

    goto :goto_28

    :cond_4c
    move-object/from16 v2, p7

    goto/16 :goto_3

    :cond_4d
    :goto_28
    if-eqz p7, :cond_4c

    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v2, p7

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    const/4 v6, 0x0

    :goto_29
    const/4 v7, 0x2

    if-ge v6, v7, :cond_53

    if-nez v6, :cond_4e

    move-object v8, v1

    goto :goto_2a

    :cond_4e
    const/4 v8, 0x0

    :goto_2a
    if-eqz v8, :cond_4f

    if-nez v6, :cond_50

    if-eqz v4, :cond_50

    :cond_4f
    move-object/from16 p3, v1

    move-object/from16 v9, v26

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v12, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_2d

    :cond_50
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget-object v9, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v0, v0, v9

    iget v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v9, v9, v12

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleY()F

    move-result v9

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v9, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v9, v9, v16

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleX()F

    move-result v12

    div-float/2addr v9, v12

    iget-object v12, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v9, v9, v12

    iget v12, v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v12, v12, v16

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getScaleY()F

    move-result v13

    div-float/2addr v12, v13

    iget-object v13, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float v12, v12, v13

    invoke-virtual {v8, v0, v9, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v9, v26

    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_51

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_51

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_51

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v12

    mul-float v0, v0, v12

    float-to-int v0, v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v13

    mul-float v12, v12, v13

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v12, v13}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v15

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v14, v15, v7}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v9, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/high16 v15, 0x3f800000    # 1.0f

    div-float v7, v15, v7

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v17

    move-object/from16 p3, v1

    div-float v1, v15, v17

    invoke-virtual {v8, v7, v1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v8, v13, v12, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :try_start_0
    invoke-virtual {v14, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2b

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2b
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    goto :goto_2c

    :cond_51
    move-object/from16 p3, v1

    const/4 v7, 0x3

    const/4 v12, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v0, :cond_52

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->prepareToDraw(Z)V

    invoke-virtual {v9, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->prepareToDraw(Z)V

    goto :goto_2c

    :cond_52
    const/4 v1, 0x0

    invoke-virtual {v9, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_2c
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    :goto_2d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p3

    move-object/from16 v26, v9

    goto/16 :goto_29

    :cond_53
    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    if-eqz v10, :cond_54

    invoke-virtual {v10, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_54
    :goto_2e
    add-int/lit8 v9, v25, 0x1

    move-object v7, v2

    move-object v1, v3

    move/from16 v8, v24

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    goto/16 :goto_2

    :cond_55
    move-object v3, v1

    move-object v2, v7

    return-object v2
.end method

.method public getBlurBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBottomLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCancelView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    return-object v0
.end method

.method public getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Point;->x:F

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    return-object p1
.end method

.method public getCropRotation()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDoneView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    return-object v0
.end method

.method public getEntitiesView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    return-object v0
.end method

.method public getLcm()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v4, :cond_1

    new-array v4, v2, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_7

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v5, v2, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    aget-object v6, v4, v5

    if-eqz v6, :cond_6

    iget-object v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v7, :cond_5

    new-array v7, v2, [B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public getOffsetTranslationY()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->offsetTranslationY:F

    return v0
.end method

.method public getPreviewViews()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRenderInputView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    return-object v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public getSelectedEntity()Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object v0
.end method

.method public getSelectionEntitiesView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextDimView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    return-object v0
.end method

.method public getTopLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTransformedTouch(FF[F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/4 p2, 0x0

    aput v1, p3, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWeightChooserView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object v0
.end method

.method public hasBlur()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    return v0
.end method

.method public hasChanges()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isEntityDeletable()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isEntityDeletable(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method public isEntityDeletable(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 0
    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public measureKeyboardHeight()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->getKeyboardHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding2()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onAddButtonPressed(Landroid/view/View;)V
    .locals 7

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x35

    move-object v0, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;IIIZ)V

    return-void
.end method

.method public onAnimationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected abstract onAudioSelect(Lorg/telegram/messenger/MessageObject;)V
.end method

.method public onBackPressed()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissWindow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return v2

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return v2

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    return v1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return v2

    :cond_5
    return v1
.end method

.method public onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3fe00000    # 1.75f

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setDrawCenter(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCleanupEntities()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method public abstract onCreateRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
.end method

.method public abstract onDeleteRound()V
.end method

.method public abstract onDeselectRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEmojiButtonClick()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    return-void
.end method

.method public onEntityDragEnd(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePreviewViewTranslationY()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method protected abstract onGalleryClick()V
.end method

.method public onGetPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getAdditionalTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getAdditionalBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    move v8, v5

    move v5, v4

    move v4, v8

    :goto_0
    int-to-float v1, v1

    mul-float v6, v1, v5

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    int-to-float v3, v3

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    mul-float v3, v3, v4

    div-float/2addr v3, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->baseScale:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->measureKeyboardHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    sub-int/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v3, p1, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    const/high16 v1, 0x41a00000    # 20.0f

    if-nez p2, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-ltz p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    if-nez p2, :cond_3

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    :goto_1
    return-void
.end method

.method public onNewTextSelected()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onEmojiButtonClick()V

    :goto_1
    return-void
.end method

.method protected abstract onOpenCloseStickersAlert(Z)V
.end method

.method public onParentPreDraw()V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->invalidateReactionPosition:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->invalidateReactionPosition:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    aput v1, v2, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float v2, v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v2, v2, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41800000    # 16.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v2, v2, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v2, v5

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v5, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMirrorX(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v0, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    cmpl-float v0, v1, v5

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v1, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    sub-float/2addr v2, v1

    cmpg-float v1, v2, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    neg-float v2, v4

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMirrorX(Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTranslationX(F)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->redraw()V

    return-void
.end method

.method public abstract onSelectRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    const-string v2, "kbd_height"

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiWasPadding:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue1:I

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue2:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    goto :goto_4

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    :goto_4
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    :cond_8
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez p2, :cond_9

    if-eq p2, p1, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez p2, :cond_9

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateTextDim()V

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method public abstract onSwitchSegmentedAnimation(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
.end method

.method protected onTextAdd()V
    .locals 0

    return-void
.end method

.method public onTextAlignmentSelected(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentAlignment(I)V

    :cond_0
    return-void
.end method

.method public onTextOutlineSelected(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextType(I)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isCoverPreview:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onTryDeleteRound()V
.end method

.method public onTypefaceButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTypeface(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_0
    return-void
.end method

.method public openPaint()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearSelection()V

    return-void
.end method

.method public openStickers()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V

    return-void
.end method

.method public openText()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    return-void
.end method

.method public removeCurrentEntity()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move-result p1

    return p1
.end method

.method public setBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    return-void
.end method

.method public setCoverPreview(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isCoverPreview:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isCoverPreview:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCoverPause(Z)V

    :cond_1
    return-void
.end method

.method public setCoverTime(J)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_0

    long-to-float v2, p1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    rem-float/2addr v2, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHasAudio(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->hasAudio:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->hasAudio:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkEntitiesIsVideo()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOffsetTranslationX(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$setOffsetTranslationX(Lorg/telegram/ui/Components/IPhotoPaintView;F)V

    return-void
.end method

.method public setOnCancelButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onCancelButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public showReactionsLayout(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    if-eq v2, p1, :cond_5

    if-nez p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getCurrentReaction()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->invalidateReactionPosition:Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v1

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$18;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$19;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    const v1, -0xe6e6e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public wouldBeVideo()Z
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->hasAudio:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v4, v0, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_6

    aget-object v5, v3, v4

    iget-object v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v6, :cond_1

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_2
    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v6, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_5
    instance-of v3, v3, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v1
.end method
