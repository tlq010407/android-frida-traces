.class Lorg/telegram/ui/Components/MessagePreviewView$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;
    }
.end annotation


# instance fields
.field actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

.field adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

.field private buttonsHeight:I

.field changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field changeSizeBtnContainer:Landroid/widget/FrameLayout;

.field chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

.field chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field chatTopOffset:I

.field clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field public currentTab:I

.field currentTopOffset:I

.field currentYOffset:F

.field deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private firstAttach:Z

.field private firstLayout:Z

.field itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field lastSize:I

.field menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field menuBack:I

.field messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private quoteSwitcher:Landroid/animation/AnimatorSet;

.field rect:Landroid/graphics/Rect;

.field replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field scrollToOffset:I

.field sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

.field textSelectionOverlay:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field toQuote:Z

.field updateAfterAnimations:Z

.field private updateScroll:Z

.field videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field yOffset:F


# direct methods
.method public static synthetic $r8$lambda$4XG2D0R8iVhnJLa-ZW-8uh9Id-w(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$85r6cI_J0y9QboWTM9hBLqpfX8M(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BAXADDCUgJbluEnTR3M2fYnlwM8(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$checkScroll$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$FSslgx3ySuOhzC5-eHmykrOE6Zc(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8Mu1Z8tzNIJ6WeDEMlnMKVZ47k(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hf5TZ4hF-9hIdYbz77Y2OHLD7y0(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_6dX8Y-3NOTYw2QkVCkSFM2NGI(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGcJVp35p28w4zE75lQr-eXlXaQ(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-0pn8mvK2ATES9e0aQoD5pcM8k(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d9Fuku3GcmwB8Hw8C1cQ3lEMNK4(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eBE36wNDLzYpCvrHD7fP-qDSfwA(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e_W6SF8Be05nmSY0tI-YmVljWHo(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQD1EWkq3l3ppsz95llq8nJRYH0(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fSEzvVl8oDmKdBuwJeUFcV36X0U(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i-Uah3zL0dNZ6TpzhCsFvWWBElc(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$onAttachedToWindow$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0ciy4-gDjlITRUuYVCQJXY1E_c(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ln-UMTwgo8Nt5_oAvRePQOSQAYM(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$13(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-GCr5I4bp1GHh0AzNPZb14v6Ws(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$12(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8FFIB3868zXMp5eOf4MDKqNiEI(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$prnrabbYydJ7Yd6hbGXNDzdgn0U(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yDWULFenTJukJcUAnSnGqfPouM8(Lorg/telegram/ui/Components/MessagePreviewView$Page;IFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$updatePositions$20(IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
    .locals 26

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v7, p3

    iput-object v9, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {v8, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-boolean v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    const/4 v13, -0x1

    iput v13, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->scrollToOffset:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->rect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    iput-boolean v14, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    iput-boolean v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    new-instance v0, Lorg/telegram/messenger/ChatMessageSharedResources;

    invoke-direct {v0, v10}, Lorg/telegram/messenger/ChatMessageSharedResources;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    iput v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;

    invoke-direct {v0, v8, v10, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->isWallpaperMotion()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, 0x40800000    # 4.0f

    const/16 v5, 0x15

    if-lt v15, v5, :cond_0

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$3;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0, v11}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;F)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v9, v10, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$4;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    new-instance v4, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v0

    invoke-direct {v4, v8, v10, v0, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v4, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;

    iget-object v2, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v16

    const/16 v17, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object v11, v3

    move-object/from16 v3, v18

    move-object v13, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    const/4 v11, 0x0

    invoke-direct {v1, v8, v11}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$1;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v14, v1, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v13, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v3, 0x3e8

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;IIZLorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$12;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$12;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/high16 v20, 0x43c80000    # 400.0f

    const/16 v21, 0x0

    const/high16 v22, 0x41000000    # 8.0f

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda12;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setOnForegroundOpenFinished(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x8

    const/16 v4, 0x30

    if-nez v7, :cond_8

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v0, :cond_3

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-boolean v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez v0, :cond_1

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v16

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v2

    move-object/from16 v1, p2

    move-object v6, v2

    move/from16 v2, v21

    move-object v7, v3

    move/from16 v3, v19

    const/16 v11, 0x30

    move/from16 v4, v20

    const/16 v13, 0x8

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda13;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    invoke-static {v0, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v1, v2, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v0, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->QuoteSelectedPart:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quote_specific:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda14;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    invoke-static {v0, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move-object v7, v3

    const/16 v11, 0x30

    const/16 v13, 0x8

    :goto_0
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setStickToRight(Z)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/Components/MessagePreviewView$Page$13;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v13, v6

    move-object/from16 v6, v16

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$13;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->QuoteSelectedPart:I

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->SelectSpecificQuote:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_select_quote:I

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v13, Lorg/telegram/ui/Components/MessagePreviewView$Page$14;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$14;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$string;->ClearQuote:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quote_delete:I

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1, v14}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda15;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_3
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->monoforum:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_4

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$string;->ReplyToAnotherChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v7, v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda16;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$string;->QuoteToAnotherChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda17;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_4
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    if-nez v1, :cond_5

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_5
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-direct {v8, v0, v14}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda1;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->DoNotQuote:I

    goto :goto_3

    :cond_7
    sget v0, Lorg/telegram/messenger/R$string;->DoNotReply:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v9, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v11, 0x3df5c28f    # 0.12f

    invoke-static {v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    goto/16 :goto_d

    :cond_8
    const v11, 0x3df5c28f    # 0.12f

    const/4 v0, 0x1

    if-ne v7, v0, :cond_c

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_c

    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->name_hide:I

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    if-eqz v0, :cond_9

    sget v0, Lorg/telegram/messenger/R$string;->ShowSenderNames:I

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5

    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    goto :goto_4

    :goto_5
    sget v4, Lorg/telegram/messenger/R$raw;->name_show:I

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    if-eqz v0, :cond_a

    sget v0, Lorg/telegram/messenger/R$string;->HideSenderNames:I

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->HideSendersName:I

    goto :goto_6

    :goto_7
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    if-eqz v0, :cond_b

    new-instance v13, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->caption_hide:I

    sget v0, Lorg/telegram/messenger/R$string;->ShowCaption:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->caption_show:I

    sget v0, Lorg/telegram/messenger/R$string;->HideCaption:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    invoke-virtual {v13, v0, v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v10, v2, v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lorg/telegram/messenger/R$string;->ChangeRecipient:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda4;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->DoNotForward:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {v7, v0, v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda6;

    invoke-direct {v0, v8, v13, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v13, :cond_11

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda7;

    invoke-direct {v0, v8, v13, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    :cond_c
    const/4 v0, 0x2

    if-ne v7, v0, :cond_11

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_11

    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkAbove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkBelow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {v7, v0, v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v1

    invoke-static {v1, v14, v14}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v13, Lorg/telegram/messenger/R$raw;->media_shrink:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkMediaLarger:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v22, Lorg/telegram/messenger/R$raw;->media_enlarge:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkMediaSmaller:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p2

    move v2, v13

    move/from16 v4, v22

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    const/4 v7, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v0, Lorg/telegram/messenger/R$string;->LinkVideoLarger:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->LinkVideoSmaller:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, p2

    move v2, v13

    move/from16 v4, v22

    move-object v13, v6

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_f
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz v2, :cond_10

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v1, :cond_10

    const/16 v5, 0x8

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda8;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->DoNotLinkPreview:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$400(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda9;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda10;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda11;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    :goto_d
    iget v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    :goto_e
    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_f

    :cond_12
    if-nez v0, :cond_13

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_e

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_e

    :cond_14
    :goto_f
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/16 v1, 0x15

    if-lt v15, v1, :cond_15

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/View;F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    :cond_15
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_16
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v13, v1, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x33

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/MessagePreviewView$Page;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateLinkHighlight(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MessagePreviewView$Page;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->checkScroll()V

    return-void
.end method

.method private checkScroll()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

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

.method private synthetic lambda$checkScroll$18()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    const/16 v1, 0xfa

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    neg-int v3, v3

    :goto_0
    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeForward()V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 4

    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    const/4 v3, 0x0

    iput-boolean v3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    if-nez v1, :cond_0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 5

    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v1, :cond_0

    iget-boolean v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v3, :cond_2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    iput-boolean v2, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    goto :goto_0

    :cond_0
    iget-boolean v3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iput-boolean v4, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    :cond_1
    iput-boolean v4, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    :cond_2
    :goto_0
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeLink()V

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private synthetic lambda$new$17(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget p1, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v0, p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez v1, :cond_0

    iput-object v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_4
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeQuote()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeReply()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$19(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private synthetic lambda$updatePositions$20(IFLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float p1, p1, v0

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    int-to-float v1, v1

    mul-float v1, v1, p3

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    mul-float p2, p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    mul-float v0, v0, p3

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void
.end method

.method private setOffset(FI)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private showQuoteLengthError()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$300(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->QuoteMaxError:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->QuoteMaxErrorMessage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private switchToQuote(ZZ)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->toQuote:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->toQuote:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    :cond_2
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_b

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-nez p1, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    new-array v7, v0, [F

    aput v6, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    new-array v7, v0, [F

    aput v6, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-nez p1, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    new-array v7, v0, [F

    aput v6, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_9
    new-array v0, v0, [F

    aput v1, v0, v2

    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x168

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x4

    if-eqz p2, :cond_e

    if-nez p1, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_d

    const/4 v4, 0x0

    goto :goto_4

    :cond_d
    const/4 v4, 0x4

    :goto_4
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_11

    if-eqz p1, :cond_f

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_10

    const/4 v4, 0x0

    goto :goto_6

    :cond_10
    const/4 v4, 0x4

    :goto_6
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_14

    if-nez p1, :cond_12

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_13

    const/4 v4, 0x0

    goto :goto_8

    :cond_13
    const/4 v4, 0x4

    :goto_8
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_17

    if-eqz p1, :cond_15

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_15
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_16

    goto :goto_9

    :cond_16
    const/4 v2, 0x4

    :goto_9
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_a
    return-void
.end method

.method private updateLinkHighlight(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    :goto_0
    return-void
.end method

.method private updateMessages()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateAfterAnimations:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iput-boolean v1, v3, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v4, Lorg/telegram/ui/Components/MessagePreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v5, v3, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v4, v4, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v4, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v5, :cond_1

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-boolean v0, v3, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v6, v6, -0x5

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-boolean v1, v3, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    :goto_1
    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    iget-object v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v4, :cond_3

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eq v6, v4, :cond_3

    :cond_2
    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 v6, v5, 0x1

    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->manual:Z

    iput-object v7, v3, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V

    iput-object v7, v3, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iput-object v7, v3, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    iput-object v7, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    iput-object v7, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject2:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v5, v5, -0x201

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v4, v4, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v4, :cond_5

    iput-object v7, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    :goto_3
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v5, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    iget v3, v3, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;->totalVotersCached:I

    :goto_4
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v4, v4, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private updatePositions()V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v6, v3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    goto :goto_2

    :cond_3
    :goto_1
    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    :goto_2
    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v4, v3

    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_5
    iput v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    if-nez v2, :cond_8

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    if-ne v3, v0, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_8

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;IF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    :cond_9
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateSubtitle(Z)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    :goto_0
    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "PreviewForwardMessagesCount"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v3, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    const-string v5, "ForwardPreviewSendersNameVisible"

    if-nez v4, :cond_4

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {v5, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {v5, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_9

    goto :goto_3

    :cond_4
    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v3, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {v5, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_6

    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    goto :goto_2

    :cond_7
    iget-object v3, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_8

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHidden:I

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    const-string v0, "ForwardPreviewSendersNameHidden"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_9

    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    goto :goto_2

    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    goto :goto_2

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    :cond_a
    if-nez v1, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_b

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PreviewQuoteUpdate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PreviewQuoteUpdateSubtitle:I

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsReplyTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v1, :cond_c

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsReplySubtitle:I

    goto :goto_5

    :cond_c
    const-string v1, ""

    goto :goto_6

    :cond_d
    const/4 v0, 0x2

    if-ne v1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLinkTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLinkSubtitle:I

    goto :goto_5

    :cond_e
    :goto_7
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method public getReplyMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method public getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_1
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eq v4, v0, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v3

    :cond_4
    return-object v1
.end method

.method public isReplyMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSelection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->rect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x43aa0000    # 340.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v2, v2, v5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    goto :goto_1

    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lastSize:I

    if-eq v1, v0, :cond_6

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_4
    iput v2, v1, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    goto :goto_5

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_4

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    :cond_6
    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lastSize:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public updateSelection()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v3, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v3, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    if-eqz v0, :cond_3

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v3, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_4
    return-void
.end method
