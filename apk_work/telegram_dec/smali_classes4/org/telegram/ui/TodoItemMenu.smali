.class public Lorg/telegram/ui/TodoItemMenu;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private clipBottom:F

.field private clipTop:F

.field private containerView:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field private dismissListener:Ljava/lang/Runnable;

.field private dismissing:Z

.field private dismissingWithAlpha:Z

.field private dtx1:F

.field private dtx2:F

.field private dty1:F

.field private dty2:F

.field private hasDestTranslation:Z

.field private hasTranslation:Z

.field private heightdiff:F

.field private hintTextView:Landroid/widget/TextView;

.field private final insets:Landroid/graphics/Rect;

.field private isOut:Z

.field private menuContainer:Landroid/widget/FrameLayout;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private messageOptionsView:Landroid/view/View;

.field private messageOptionsViewMaxWidth:F

.field private myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private open:Z

.field private open2Animator:Landroid/animation/ValueAnimator;

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openProgress2:F

.field private reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private setCellInvisible:Z

.field private setTaskInvisible:Z

.field private tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

.field private taskId:I

.field private taskOptionsView:Landroid/view/View;

.field private taskOptionsViewMaxWidth:F

.field private tx:F

.field private ty:F

.field private viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$1UKPfrp3dsg3iG2vFP17zSbFhfE(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TodoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$3(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TodoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FcQZMPq7Y0lK7atVV0EFDtYBSi8(Lorg/telegram/ui/TodoItemMenu;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$prepareBlur$13(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4nfsD9xVTi5AyipClf4qkEZlyA(Lorg/telegram/ui/TodoItemMenu;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$setupMessageOptions$12(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PYw4NNKGkTJ2UNMnbHEGIRccyhE(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->lambda$dismiss$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$VezU42SDJ12onFkkxOkeSfSvxfc(Lorg/telegram/ui/TodoItemMenu;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->lambda$dismiss$15(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxtvQyzJR_IC7DFT1NapvNOxsfw(Lorg/telegram/ui/TodoItemMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->lambda$animateOpenTo$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YeI8UxGb9E1KCSscj2hSbOOM8iU(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$6(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$_BDSPrsIm2lW6cZfgvfu9lsgOA0(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$2(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNGkl1pN1ls1G_pteodokiZ_k3U(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->updateTranslation()V

    return-void
.end method

.method public static synthetic $r8$lambda$ezAeV1CkF-GhVo_auqKPCrVWSxk(Lorg/telegram/ui/TodoItemMenu;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g2QbZ9KOsu6lrP2EAIU51-cOADA(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->lambda$setupMessageOptions$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$hiKWCwFyi2-_JUxhMACLmWj6uYQ(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->lambda$setupMessageOptions$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$lKXgtHACrpmTDTij8A_rpatTjm8(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ILorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$8(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ILorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lwkw1jBO-0rk5uvXe8Fuuaiky_8(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/tgnet/TLRPC$TodoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$5(Lorg/telegram/tgnet/TLRPC$TodoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pS9I1e_kIJgrv3TCN08ZUk9oSKg(Lorg/telegram/ui/TodoItemMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->lambda$animateOpenTo$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjGzczDEVkkqaj1IikhBW9a4Y1k(Lorg/telegram/ui/TodoItemMenu;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vLeqk7a0KdFq6QzGf0Bnvx2yrK0(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$7(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2dXIcF-bJ6q81GGwaVgcWB1pus(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$setCell$1(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z3oF1L2Idj6wwgldmqi5AqvKKio(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->lambda$setupMessageOptions$11(Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->clipTop:F

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->clipBottom:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsViewMaxWidth:F

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsViewMaxWidth:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TodoItemMenu;->dismissing:Z

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TodoItemMenu$1;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TodoItemMenu$2;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x77

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TodoItemMenu$3;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v2, Lorg/telegram/ui/TodoItemMenu$4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TodoItemMenu$4;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TodoItemMenu$5;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget p2, Lorg/telegram/messenger/R$string;->TodoMenuTabTask:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget v0, Lorg/telegram/messenger/R$string;->TodoMenuTabList:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    const/16 v2, 0x42

    const/16 v4, 0x50

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {p2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->TodoMenuHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/high16 v8, 0x42840000    # 66.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/telegram/ui/TodoItemMenu$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TodoItemMenu$6;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TodoItemMenu;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/TodoItemMenu;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TodoItemMenu;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TodoItemMenu;->clipTop:F

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TodoItemMenu;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TodoItemMenu;->clipBottom:F

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->updateTranslation()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TodoItemMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TodoItemMenu;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsViewMaxWidth:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TodoItemMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TodoItemMenu;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsViewMaxWidth:F

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TodoItemMenu;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TodoItemMenu;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/TodoItemMenu;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress2:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TodoItemMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/TodoItemMenu;->setCellInvisible:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/TodoItemMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/TodoItemMenu;->setCellInvisible:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TodoItemMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/TodoItemMenu;->setTaskInvisible:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/TodoItemMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/TodoItemMenu;->setTaskInvisible:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/TodoItemMenu;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TodoItemMenu;->taskId:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->setupTranslation()V

    return-void
.end method

.method private animateOpenTo(ZLjava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->open2Animator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->setupTranslation()V

    iget v3, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    new-array v7, v2, [F

    aput v3, v7, v1

    aput v6, v7, v0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/TodoItemMenu$14;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/TodoItemMenu$14;-><init>(Lorg/telegram/ui/TodoItemMenu;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_3

    const-wide/16 v6, 0x14a

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x208

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget p2, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress2:F

    if-eqz p1, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_4
    new-array v2, v2, [F

    aput p2, v2, v1

    aput v4, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->open2Animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->open2Animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/TodoItemMenu$15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TodoItemMenu$15;-><init>(Lorg/telegram/ui/TodoItemMenu;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->open2Animator:Landroid/animation/ValueAnimator;

    long-to-float p2, v6

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p2, p2, v0

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->open2Animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->open2Animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$16(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->updateTranslation()V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$17(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress2:F

    return-void
.end method

.method private synthetic lambda$dismiss$14()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$15(Z)V
    .locals 2

    new-instance v0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v0, p0, Lorg/telegram/ui/TodoItemMenu;->taskId:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->syncTodoCheck(ILorg/telegram/ui/Cells/ChatMessageCell;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, -0x1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->doNotDrawTaskId:I

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->dismissListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->dismissListener:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/TodoItemMenu;->dismiss()V

    return-void
.end method

.method private synthetic lambda$prepareBlur$13(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0x435c28f6    # -0.02f

    goto :goto_1

    :cond_2
    const p2, -0x42dc28f6    # -0.04f

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private synthetic lambda$setCell$1(Lorg/telegram/ui/ChatActivity;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->MessageScheduledTodo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->toggleTodoCheck(IZ)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setCell$2(Lorg/telegram/ui/ChatActivity;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->MessageScheduledTodo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->toggleTodoCheck(IZ)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setCell$3(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TodoItem;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;I)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReplyQuote(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setCell$4(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setCell$5(Lorg/telegram/tgnet/TLRPC$TodoItem;)V
    .locals 1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setCell$6(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->editMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/util/HashMap;ZZLjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCell$7(Lorg/telegram/ui/ChatActivity;I)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/PollCreateActivity;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/PollCreateActivity;-><init>(Lorg/telegram/ui/ChatActivity;ZLjava/lang/Boolean;)V

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lorg/telegram/ui/PollCreateActivity;->setEditing(Lorg/telegram/tgnet/TLRPC$MessageMedia;ZI)V

    new-instance p2, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/PollCreateActivity;->setDelegate(Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setCell$8(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ILorg/telegram/ui/ChatActivity;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TodoItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    if-ne v2, p2, :cond_0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TodoCompletion;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TodoCompletion;->id:I

    if-ne v2, p2, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->editMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/util/HashMap;ZZLjava/lang/Object;)V

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setupMessageOptions$10()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setupMessageOptions$11(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setupMessageOptions$12(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setupMessageOptions$9()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/view/View;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method

.method private setupTranslation()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/TodoItemMenu;->hasTranslation:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v0, v3, v0

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->tx:F

    aget v0, v3, v1

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->ty:F

    iget-boolean v3, p0, Lorg/telegram/ui/TodoItemMenu;->hasDestTranslation:Z

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lorg/telegram/ui/TodoItemMenu;->hasDestTranslation:Z

    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->dtx1:F

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->dty1:F

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    const/high16 v4, 0x42840000    # 66.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->dty1:F

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, p0, Lorg/telegram/ui/TodoItemMenu;->taskId:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonTop(I)F

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonBottom(I)F

    move-result v0

    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->dtx2:F

    iget v2, p0, Lorg/telegram/ui/TodoItemMenu;->ty:F

    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->dty2:F

    float-to-int v0, v0

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    const/high16 v5, 0x429c0000    # 78.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->dty2:F

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget v4, p0, Lorg/telegram/ui/TodoItemMenu;->dty2:F

    add-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lorg/telegram/ui/TodoItemMenu;->dty2:F

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->updateTranslation()V

    goto :goto_0

    :cond_4
    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->ty:F

    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->tx:F

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/TodoItemMenu;->hasTranslation:Z

    :cond_5
    :goto_1
    return-void
.end method

.method private updateTranslation()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Lorg/telegram/ui/TodoItemMenu;->hasTranslation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    instance-of v6, v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput v5, p0, Lorg/telegram/ui/TodoItemMenu;->dtx1:F

    iget v7, p0, Lorg/telegram/ui/TodoItemMenu;->ty:F

    iput v7, p0, Lorg/telegram/ui/TodoItemMenu;->dty1:F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getVisibleHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v8, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v8

    const/high16 v8, 0x42840000    # 66.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v4, v9

    int-to-float v4, v4

    cmpl-float v4, v7, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/TodoItemMenu;->insets:Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v4, v7

    iget-object v7, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getVisibleHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/TodoItemMenu;->dty1:F

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, p0, Lorg/telegram/ui/TodoItemMenu;->tx:F

    iget v7, p0, Lorg/telegram/ui/TodoItemMenu;->dtx1:F

    iget-boolean v8, p0, Lorg/telegram/ui/TodoItemMenu;->dismissingWithAlpha:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v8, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    :goto_0
    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTranslationX(F)V

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, p0, Lorg/telegram/ui/TodoItemMenu;->ty:F

    iget v7, p0, Lorg/telegram/ui/TodoItemMenu;->dty1:F

    iget-boolean v8, p0, Lorg/telegram/ui/TodoItemMenu;->dismissingWithAlpha:Z

    if-eqz v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget v8, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    :goto_1
    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x41000000    # 8.0f

    if-eqz v4, :cond_5

    iget-boolean v10, p0, Lorg/telegram/ui/TodoItemMenu;->isOut:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->dtx1:F

    add-float/2addr v10, v3

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonsLeft()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_2
    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_3
    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->dtx1:F

    add-float/2addr v10, v3

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawAvatar()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_2

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v10, v3

    sub-float/2addr v4, v10

    iput v4, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsViewMaxWidth:F

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    iget v4, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-static {v6, v9, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->tx:F

    iget v11, p0, Lorg/telegram/ui/TodoItemMenu;->dtx2:F

    iget-boolean v12, p0, Lorg/telegram/ui/TodoItemMenu;->dismissingWithAlpha:Z

    if-eqz v12, :cond_6

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    iget v12, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    :goto_5
    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    add-float/2addr v10, v1

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTranslationX(F)V

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->ty:F

    iget v11, p0, Lorg/telegram/ui/TodoItemMenu;->dty2:F

    iget-boolean v12, p0, Lorg/telegram/ui/TodoItemMenu;->dismissingWithAlpha:Z

    if-eqz v12, :cond_7

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    iget v12, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    :goto_6
    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->taskId:I

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result v4

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonTop(I)F

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonBottom(I)F

    move-result v4

    iget-boolean v10, p0, Lorg/telegram/ui/TodoItemMenu;->isOut:Z

    if-eqz v10, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    iget v7, p0, Lorg/telegram/ui/TodoItemMenu;->dtx2:F

    add-float/2addr v7, v1

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    iget-object v10, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonsLeft()F

    move-result v10

    add-float/2addr v7, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_7

    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    iget v10, p0, Lorg/telegram/ui/TodoItemMenu;->dtx2:F

    add-float/2addr v10, v1

    iget-object v11, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawAvatar()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_9
    int-to-float v2, v2

    add-float/2addr v10, v2

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v10, v2

    invoke-virtual {v8, v10}, Landroid/view/View;->setTranslationX(F)V

    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v7, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    sub-float/2addr v7, v3

    sub-float/2addr v2, v7

    iput v2, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsViewMaxWidth:F

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    iget-object v7, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    iget v4, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget v2, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-static {v6, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    iget-boolean v2, p0, Lorg/telegram/ui/TodoItemMenu;->dismissingWithAlpha:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAlpha(F)V

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBoundsRight()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBoundsLeft()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v6

    sub-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    add-float/2addr v3, v2

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v4, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getWindowView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v3, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->hintTextView:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setSelectedTab(F)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget v1, p0, Lorg/telegram/ui/TodoItemMenu;->openProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 5

    .line 0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissWindow()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/TodoItemMenu;->dismissing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/TodoItemMenu;->dismissing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/TodoItemMenu;->hasTranslation:Z

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->cancelTouches()V

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v4, -0x1

    iput v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->doNotDrawTaskId:I

    goto :goto_1

    :cond_4
    :goto_2
    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/TodoItemMenu;->dismissingWithAlpha:Z

    invoke-direct {p0}, Lorg/telegram/ui/TodoItemMenu;->setupTranslation()V

    iput-boolean v1, p0, Lorg/telegram/ui/TodoItemMenu;->open:Z

    new-instance p1, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TodoItemMenu;Z)V

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/TodoItemMenu;->animateOpenTo(ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

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

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v2, -0x20003

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const v3, -0x77feff00

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

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x504

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->windowView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method public setCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    move/from16 v12, p3

    iput-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput v12, v10, Lorg/telegram/ui/TodoItemMenu;->taskId:I

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v10, Lorg/telegram/ui/TodoItemMenu;->isOut:Z

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v9, 0x33

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v10, Lorg/telegram/ui/TodoItemMenu;->clipTop:F

    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->parentBoundsBottom:I

    int-to-float v1, v1

    iput v1, v10, Lorg/telegram/ui/TodoItemMenu;->clipBottom:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, v10, Lorg/telegram/ui/TodoItemMenu;->clipTop:F

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v10, Lorg/telegram/ui/TodoItemMenu;->clipTop:F

    iget v1, v10, Lorg/telegram/ui/TodoItemMenu;->clipBottom:F

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v1, v0

    iput v1, v10, Lorg/telegram/ui/TodoItemMenu;->clipBottom:F

    :cond_2
    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v16

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v0, v0

    iput v0, v10, Lorg/telegram/ui/TodoItemMenu;->heightdiff:F

    new-instance v7, Lorg/telegram/ui/TodoItemMenu$7;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v15, v7

    move/from16 v7, p3

    move/from16 p2, v8

    move/from16 v8, v16

    const/16 v13, 0x33

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/TodoItemMenu$7;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;III)V

    iput-object v15, v10, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->copyParamsTo(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->copySpoilerEffect2AttachIndexFrom(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$8;

    invoke-direct {v1, v10}, Lorg/telegram/ui/TodoItemMenu$8;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    iget-object v2, v10, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedBottom:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedTop:Z

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->firstInChat:Z

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->myTaskCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lorg/telegram/ui/TodoItemMenu$9;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v7, v16

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/TodoItemMenu$9;-><init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    iput-object v15, v10, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->copyVisiblePartTo(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->copyParamsTo(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->copySpoilerEffect2AttachIndexFrom(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$10;

    invoke-direct {v1, v10}, Lorg/telegram/ui/TodoItemMenu$10;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    iget-object v2, v10, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedBottom:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedTop:Z

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->firstInChat:Z

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, v10, Lorg/telegram/ui/TodoItemMenu;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    const/16 v13, 0x33

    :goto_2
    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TodoItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    if-ne v4, v12, :cond_4

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TodoItem;

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    move-object v4, v2

    :goto_4
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_7

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TodoCompletion;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TodoCompletion;->id:I

    if-ne v5, v12, :cond_6

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->completions:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TodoCompletion;

    goto :goto_5

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v5, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->canCompleteTodo()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v2, :cond_8

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TodoCompletion;->date:I

    int-to-long v5, v2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatTodoCompletedDate(J)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xe

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    sget v5, Lorg/telegram/messenger/R$string;->TodoUncheck:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda7;

    invoke-direct {v6, v10, v11, v12}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;I)V

    :goto_6
    invoke-virtual {v0, v2, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_7

    :cond_8
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v5, Lorg/telegram/messenger/R$string;->TodoCheck:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda8;

    invoke-direct {v6, v10, v11, v12}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_6

    :cond_9
    :goto_7
    if-eqz v4, :cond_d

    if-eqz v11, :cond_a

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_reply:I

    sget v5, Lorg/telegram/messenger/R$string;->Quote:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;

    invoke-direct {v6, v10, v11, v4}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TodoItem;)V

    invoke-virtual {v0, v2, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_a
    iget-object v2, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_c

    iget-object v2, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    neg-long v7, v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "?task="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v6, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda10;

    invoke-direct {v7, v10, v2}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/TodoItemMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_c
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v5, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda11;

    invoke-direct {v6, v10, v4}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/tgnet/TLRPC$TodoItem;)V

    invoke-virtual {v0, v2, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_d
    iget-object v2, v10, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v11, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v4, Lorg/telegram/messenger/R$string;->TodoEditItem:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda12;

    invoke-direct {v5, v10, v11, v3}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;I)V

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v3, Lorg/telegram/messenger/R$string;->TodoDeleteItem:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda13;

    invoke-direct {v4, v10, v1, v12, v11}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ILorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setupSelectors()V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v10, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/TodoItemMenu;->taskOptionsView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v2, v2, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu;->dismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setupMessageOptions(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lorg/telegram/ui/TodoItemMenu;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_1

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasReactions()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->can_see_list:Z

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v4

    if-eq v4, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isReactionsAvailable()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v3, :cond_3

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v2, :cond_8

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    if-eq v2, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isReactionsAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-nez v3, :cond_7

    :cond_5
    if-nez v2, :cond_6

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_7

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_1
    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x3

    if-nez v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->chatReadMarkExpirePeriod:I

    if-ge v0, v2, :cond_a

    iget-object v0, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_a

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->chatReadMarkSizeThreshold:I

    if-gt v0, v2, :cond_a

    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-nez v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-eq v0, v14, :cond_a

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->canSetReaction()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_b

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    :cond_b
    if-nez v1, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_d

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v2, :cond_c

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->pmReadDateExpirePeriod:I

    if-ge v2, v3, :cond_d

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :goto_4
    iget-object v3, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_e

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v9, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isEdited()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_5

    :cond_f
    const/4 v3, 0x0

    :goto_5
    iget-object v4, v8, Lorg/telegram/ui/TodoItemMenu;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    if-nez v1, :cond_11

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v1, 0x1

    :goto_7
    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v15

    const/4 v6, -0x1

    if-eqz v0, :cond_14

    new-instance v5, Lorg/telegram/ui/MessageSeenView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v5, v0, v1, v10, v2}, Lorg/telegram/ui/MessageSeenView;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v6, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v11, v12, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    sget v1, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v16, 0x42200000    # 40.0f

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_8
    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v17, :cond_13

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v7, v16

    goto :goto_9

    :cond_13
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v1, v2, v12, v7, v12}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v12, v8, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5}, Lorg/telegram/ui/MessageSeenView;->createListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v14, v8, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v2, 0x8

    invoke-static {v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/TodoItemMenu$11;

    invoke-direct {v0, v8, v15}, Lorg/telegram/ui/TodoItemMenu$11;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lorg/telegram/ui/TodoItemMenu$12;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    move-object v11, v4

    move-object v4, v12

    move-object v9, v5

    move-object v5, v7

    move/from16 v19, v13

    const/4 v13, -0x1

    move-object v6, v15

    move-object/from16 v21, v7

    move-object/from16 v20, v10

    const/4 v10, -0x2

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/TodoItemMenu$12;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/MessageSeenView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/widget/LinearLayout;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v1, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    :goto_a
    invoke-virtual {v15}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_c

    :cond_14
    move-object/from16 v20, v10

    move/from16 v19, v13

    const/4 v10, -0x2

    const/4 v13, -0x1

    const/16 v6, 0x24

    if-eqz v2, :cond_15

    new-instance v7, Lorg/telegram/ui/Components/MessagePrivateSeenView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    iget-object v5, v8, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    move-object v0, v7

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePrivateSeenView;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_b
    invoke-static {v13, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v7, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_a

    :cond_15
    if-eqz v3, :cond_16

    new-instance v7, Lorg/telegram/ui/Components/MessagePrivateSeenView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    iget-object v5, v8, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x1

    move-object v0, v7

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePrivateSeenView;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_b

    :cond_16
    :goto_c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v6, p3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v9, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda2;

    move-object/from16 v11, p5

    invoke-direct {v9, v8, v11, v3}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/messenger/Utilities$Callback;I)V

    invoke-virtual {v15, v5, v7, v9}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {v15}, Lorg/telegram/ui/Components/ItemOptions;->setupSelectors()V

    invoke-virtual {v15}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    const/16 v6, 0x33

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v1, :cond_18

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnSizeChangedListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;)V

    iget-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->messageOptionsView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda4;

    invoke-direct {v1, v8}, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TodoItemMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    if-eqz v19, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    :goto_e
    new-instance v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    iget-object v5, v8, Lorg/telegram/ui/TodoItemMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v7

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->forceAttachToParent:Z

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x18

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_10

    :cond_1b
    const/16 v2, 0x18

    :goto_10
    add-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1c

    const/16 v12, 0x18

    goto :goto_11

    :cond_1c
    const/4 v12, 0x0

    :goto_11
    add-int/2addr v0, v12

    const/16 v3, 0x16

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v7, v1, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/TodoItemMenu$13;

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2, v7}, Lorg/telegram/ui/TodoItemMenu$13;-><init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    iget-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->menuContainer:Landroid/widget/FrameLayout;

    iput-object v7, v8, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v5

    const/high16 v5, 0x42500000    # 52.0f

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v10, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v1, 0x1

    invoke-virtual {v7, v2, v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    iget-object v0, v8, Lorg/telegram/ui/TodoItemMenu;->reactionsView:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TodoItemMenu;->updateTranslation()V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/TodoItemMenu;->prepareBlur(Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/TodoItemMenu;->setTaskInvisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/TodoItemMenu;->open:Z

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/TodoItemMenu;->animateOpenTo(ZLjava/lang/Runnable;)V

    return-void
.end method
