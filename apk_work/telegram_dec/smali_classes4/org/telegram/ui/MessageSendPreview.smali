.class public Lorg/telegram/ui/MessageSendPreview;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MessageSendPreview$VisiblePart;,
        Lorg/telegram/ui/MessageSendPreview$MessageCell;
    }
.end annotation


# instance fields
.field private final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public allowRelayout:Z

.field private anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private buttonBgPaint:Landroid/graphics/Paint;

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private cameraRect:Landroid/graphics/RectF;

.field private cellDelta:Landroid/graphics/Rect;

.field private final chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

.field private final chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private closing:Z

.field private final containerView:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field private destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private destClipBottom:F

.field private destClipTop:F

.field private dismissing:Z

.field private drawEditText:Lorg/telegram/messenger/Utilities$Callback2;

.field private drawEditTextBackground:Lorg/telegram/messenger/Utilities$Callback;

.field private dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private editTextBackgroundPaint:Landroid/graphics/Paint;

.field private effectDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private effectId:J

.field private effectOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field private effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private effectSelectorContainer:Landroid/widget/FrameLayout;

.field private effectSelectorContainerY:F

.field private effectSelectorShown:Z

.field private final effectsView:Landroid/widget/FrameLayout;

.field private firstOpenFrame:Z

.field private firstOpenFrame2:Z

.field private focusable:Z

.field private fromPart:Lorg/telegram/ui/MessageSendPreview$VisiblePart;

.field private final groupedMessagesMap:Landroidx/collection/LongSparseArray;

.field private final insets:Landroid/graphics/Rect;

.field private keyboardVisible:Z

.field private layoutDone:Z

.field private mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private mainMessageCellId:I

.field private final messageObjects:Ljava/util/ArrayList;

.field private messageObjectsWidth:I

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openInProgress:Z

.field private openProgress:F

.field private opening:Z

.field private optionsView:Landroid/view/View;

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrolledToLast:Z

.field private sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private final sendButtonInitialPosition:[I

.field private sendButtonWidth:I

.field private sent:Z

.field private sentEffect:Z

.field private spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private final windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$8rZWT3br8l6DKWNCPGipFR0L78c(Lorg/telegram/ui/MessageSendPreview;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MessageSendPreview;->lambda$animateOpenTo$8(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbskuW1VME76NdTxyZylcB1YCrg(Lorg/telegram/ui/MessageSendPreview;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SoqLG-iBWnjLWiiDZHNph2p8pGQ(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismiss$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$TU4IW6ioxA7JbELFK6GUhqqxl5g(Lorg/telegram/ui/MessageSendPreview;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->lambda$allowEffectSelector$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7kKL4InKmGfHzUWiJ4mUQJTlJA(Lorg/telegram/ui/MessageSendPreview;FLandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MessageSendPreview;->lambda$prepareBlur$9(FLandroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXP__ZG4QOVu75HeV0w5FdS07lw(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismissInto$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1liQBRb1M0Pkot9htTJ3RhKJgk(Lorg/telegram/ui/MessageSendPreview;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MessageSendPreview;->lambda$new$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWbI2xO0P-HBkSvQcaGRGDnDK_U(Lorg/telegram/ui/MessageSendPreview;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rbyvylWuS-QC98fkyFLlCws3KmA(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismissInto$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$w2KHF8-C9YsIZ0DRTPD7Nd2j5vc(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismiss$7()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {v6, v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v9, v6, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->editTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v10, 0x2

    new-array v0, v10, [I

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    const/4 v11, 0x0

    iput-boolean v11, v6, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iput-object v7, v6, Lorg/telegram/ui/MessageSendPreview;->context:Landroid/content/Context;

    iput-object v8, v6, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v12, Lorg/telegram/ui/MessageSendPreview$1;

    invoke-direct {v12, v6, v7}, Lorg/telegram/ui/MessageSendPreview$1;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;)V

    iput-object v12, v6, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1, v12, v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/MessageSendPreview$2;

    invoke-direct {v2, v6}, Lorg/telegram/ui/MessageSendPreview$2;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    new-instance v13, Lorg/telegram/ui/MessageSendPreview$3;

    invoke-direct {v13, v6, v7, v8}, Lorg/telegram/ui/MessageSendPreview$3;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v6, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v0, 0x77

    const/4 v14, -0x1

    invoke-static {v14, v14, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    invoke-virtual {v12, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$4;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$4;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-static {v12, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    new-instance v15, Lorg/telegram/ui/MessageSendPreview$5;

    invoke-direct {v15, v6, v7, v8}, Lorg/telegram/ui/MessageSendPreview$5;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v6, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda7;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$6;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$6;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$7;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v15, v8}, Lorg/telegram/ui/MessageSendPreview$7;-><init>(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v15, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v5, Lorg/telegram/ui/MessageSendPreview$8;

    const/4 v4, 0x1

    const/16 v16, 0x1

    const/16 v3, 0x3e8

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/MessageSendPreview$8;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;IIZ)V

    iput-object v14, v6, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$9;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$9;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$10;

    invoke-direct {v0, v6}, Lorg/telegram/ui/MessageSendPreview$10;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v15, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$11;

    invoke-direct {v0, v6, v7, v8}, Lorg/telegram/ui/MessageSendPreview$11;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v15, v10}, Landroid/view/View;->setOverScrollMode(I)V

    const/high16 v0, -0x40000000    # -2.0f

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$12;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/MessageSendPreview$12;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/MessageSendPreview$13;

    invoke-direct {v1, v6, v0, v9}, Lorg/telegram/ui/MessageSendPreview$13;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/widget/FrameLayout;I)V

    iput-object v1, v6, Lorg/telegram/ui/MessageSendPreview;->effectOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/MessageSendPreview;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/MessageSendPreview;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/MessageSendPreview;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->openInProgress:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/MessageSendPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->openInProgress:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/MessageSendPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/MessageSendPreview;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->destClipTop:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/MessageSendPreview;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->destClipBottom:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditTextBackground:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->editTextBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditText:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame2:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/MessageSendPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame2:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->closing:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/MessageSendPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->closing:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->sent:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/MessageSendPreview;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonWidth:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjectsWidth:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/MessageSendPreview;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->getMainMessageCellPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCellId:I

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/MessageSendPreview;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCellId:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->scrolledToLast:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/MessageSendPreview;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    return-wide v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/MessageSendPreview;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    return-wide p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/MessageSendPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->opening:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/MessageSendPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->layout()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->focusable:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    return-object p0
.end method

.method private animateOpenTo(ZLjava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-eqz v2, :cond_1

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->hideEffectSelector()V

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->openInProgress:Z

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->opening:Z

    xor-int/lit8 v3, p1, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->closing:Z

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame:Z

    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame2:Z

    iget v3, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    if-eqz p1, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v0

    aput v4, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageSendPreview;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/MessageSendPreview$17;

    invoke-direct {v1, p0, p1, v2, p2}, Lorg/telegram/ui/MessageSendPreview$17;-><init>(Lorg/telegram/ui/MessageSendPreview;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getMainMessageCellPosition()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :cond_1
    :goto_0
    return-object v4
.end method

.method private getWidthForMessage(Lorg/telegram/messenger/MessageObject;)I
    .locals 8

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedPreviewChat:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isMegagroup:Z

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->computeWidth(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$allowEffectSelector$3(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->keyboardVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$8(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget p2, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismiss$6()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$7()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$dismissInto$4()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismissInto$5()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$prepareBlur$9(FLandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p3, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, -0x435c28f6    # -0.02f

    goto :goto_1

    :cond_3
    const p2, -0x4270a3d7    # -0.07f

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private layout()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    aput v2, v3, v1

    const/4 v2, 0x1

    aget v5, v0, v2

    aput v5, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v5, :cond_1

    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v7, -0x3f400000    # -6.0f

    goto :goto_1

    :cond_2
    const/high16 v7, 0x42400000    # 48.0f

    :goto_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    :goto_2
    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v8, v6

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    aget v6, v0, v2

    add-int/2addr v6, v7

    if-le v6, v8, :cond_4

    sub-int v6, v8, v7

    aput v6, v0, v2

    :cond_4
    aget v6, v0, v2

    sub-int/2addr v6, v3

    if-ge v6, v5, :cond_5

    add-int/2addr v5, v3

    aput v5, v0, v2

    :cond_5
    aget v3, v0, v2

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v7

    if-le v3, v8, :cond_6

    sub-int/2addr v8, v7

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v8, v3

    aput v8, v0, v2

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    aget v5, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    aget v5, v0, v2

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    aget v5, v0, v1

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    iget-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    aget v5, v0, v2

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v5, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v7, 0xfa

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    aget v5, v0, v2

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-eqz v3, :cond_9

    aget v5, v0, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    aget v5, v0, v2

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    :goto_4
    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_b

    aget v5, v0, v1

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41c00000    # 24.0f

    if-eqz v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_5

    :cond_a
    aget v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    :cond_b
    :goto_5
    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    new-instance v1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MessageSendPreview;FLandroid/view/View;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method


# virtual methods
.method public allowEffectSelector(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$15;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    iget-object v9, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/MessageSendPreview$15;-><init>(Lorg/telegram/ui/MessageSendPreview;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/MessageSendPreview$16;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/MessageSendPreview$16;-><init>(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    sget v0, Lorg/telegram/messenger/R$string;->AddEffectMessageHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, -0x3e380000    # -25.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMiniBubblesOffset(F)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x43960000    # 300.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, -0x1

    const/high16 v2, 0x42e80000    # 116.0f

    const/16 v3, 0x53

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->hasAvailableEffects()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->showEffectSelector()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setPaused(ZZ)V

    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public changeMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/MessageSendPreview;->changeMessageInternal(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->changeMessageInternal(Lorg/telegram/messenger/MessageObject;)V

    :cond_1
    return-void
.end method

.method public changeMessageInternal(Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-ne v3, p1, :cond_1

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    const/4 v1, -0x1

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_5
    iput-boolean v4, p1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isFirstInChat()Z

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    goto :goto_4
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->hasAvailableEffects()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->showEffectSelector()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->sent:Z

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->dismiss()V

    return-void
.end method

.method public dismissInto(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->sent:Z

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iput p2, p0, Lorg/telegram/ui/MessageSendPreview;->destClipTop:F

    iput p3, p0, Lorg/telegram/ui/MessageSendPreview;->destClipBottom:F

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    iget-boolean p2, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isForumGeneral:Z

    iput-boolean p2, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isForumGeneral:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isFirstInChat()Z

    move-result v8

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange()Z

    move-result p3

    iput-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    const/4 p3, 0x0

    iput p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    if-eq p3, v1, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_4

    iget-object v1, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v3

    if-eq v1, v3, :cond_6

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    iget-object v3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    neg-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v1

    iget-object v3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    iput-boolean v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    iput-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundWidth:Z

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview$VisiblePart;->of(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/MessageSendPreview$VisiblePart;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->fromPart:Lorg/telegram/ui/MessageSendPreview$VisiblePart;

    :cond_7
    new-instance p1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public drawStarsPrice(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-float/2addr p3, p5

    div-float v3, p3, p4

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result p5

    add-float/2addr p3, p5

    const/high16 p5, 0x42000000    # 32.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr p3, p4

    sub-float v1, p2, p3

    div-float/2addr p5, p4

    sub-float p4, v3, p5

    add-float/2addr p2, p3

    add-float p3, v3, p5

    invoke-virtual {v0, v1, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float v2, v1, p2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSelectedEffect()J
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    iget-wide v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3

    return-wide v1

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public hideEffectSelector()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorShown:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissWindow()V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    const-wide/16 v1, 0xb4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public makeFocusable()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->focusable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->focusable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->keyboardVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->keyboardVisible:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->transition:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v2, 0x20000

    or-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const v3, -0x73fcff00

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x480

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    const/4 v3, 0x1

    if-lt v2, v1, :cond_1

    invoke-static {v0, v3}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method protected onEffectChange(J)V
    .locals 0

    return-void
.end method

.method public scrollTo(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz p1, :cond_2

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->scrolledToLast:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setCameraTexture(Landroid/view/TextureView;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v3, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v1, v3, v5, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setEditText(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditText:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditTextBackground:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setEffectId(J)V
    .locals 2

    iput-wide p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->getMainMessageCellPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getEffect(J)Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :cond_2
    return-void
.end method

.method public setItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMessageObjects(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-nez v3, :cond_0

    new-instance v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-direct {v3}, Lorg/telegram/messenger/MessageObject$GroupedMessages;-><init>()V

    iput-boolean v0, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iput-wide v5, v2, Lorg/telegram/messenger/MessageObject;->localSentGroupId:J

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjectsWidth:I

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v2}, Lorg/telegram/ui/MessageSendPreview;->getWidthForMessage(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjectsWidth:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    const/16 v2, 0xa

    if-le p1, v2, :cond_8

    rem-int/lit8 v0, p1, 0xa

    :cond_8
    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public setSendButton(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;ZLandroid/view/View$OnClickListener;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Lorg/telegram/ui/MessageSendPreview$14;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resId:I

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/MessageSendPreview$14;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;Z)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->copyTo(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;)V

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->center:Z

    iput-boolean v0, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->center:Z

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonWidth:I

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    const/4 p3, 0x0

    aget v0, p2, p3

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result p1

    sub-int/2addr v1, p1

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    aput v0, p2, p3

    return-void
.end method

.method public setStars(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Text;

    long-to-int v3, p1

    const-string v4, "UnlockPaidContent"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {v2, v3, v5, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_3

    cmp-long v6, p1, v0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/MessageSendPreview;->prepareBlur(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public showEffectSelector()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorShown:Z

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1a4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    return-void
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method
