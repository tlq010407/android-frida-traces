.class public Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;
    }
.end annotation


# instance fields
.field private avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

.field private final callback:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;

.field private chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private closePendingRequestsCount:I

.field private closeView:Landroid/widget/ImageView;

.field private final currentAccount:I

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pendingRequestsAnimator:Landroid/animation/ValueAnimator;

.field private pendingRequestsCount:I

.field private pendingRequestsEnterOffset:F

.field private requestsCountTextView:Landroid/widget/TextView;

.field private requestsDataLayout:Landroid/widget/LinearLayout;

.field public root:Landroid/widget/FrameLayout;

.field private final sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public static synthetic $r8$lambda$XMmRJk2R2X8n0yE5kDBHCJ2LrI4(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->lambda$animatePendingRequests$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aY7q76JLeXbov3UHOJsrAHlte20(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->lambda$getView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3BL8H_wviE3-TA4avi8CBc5w3A(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->lambda$getView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closePendingRequestsCount:I

    iput-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object p3, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->callback:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;)Lorg/telegram/ui/Components/MemberRequestsBottomSheet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Lorg/telegram/ui/Components/MemberRequestsBottomSheet;)Lorg/telegram/ui/Components/MemberRequestsBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;)Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->callback:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;

    return-object p0
.end method

.method private animatePendingRequests(ZZ)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closePendingRequestsCount:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatPendingRequestsOnClosed(J)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closePendingRequestsCount:I

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsCount:I

    iget v3, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closePendingRequestsCount:I

    if-ne v1, v3, :cond_3

    return-void

    :cond_3
    if-eqz v3, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->setChatPendingRequestsOnClose(JI)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 v1, 0x0

    if-eqz p2, :cond_8

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_7
    const/4 p2, 0x2

    new-array p2, p2, [F

    aput v3, p2, v2

    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$3;-><init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float v1, p1

    :goto_3
    iput v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsEnterOffset:F

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->callback:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;->onEnterOffsetChanged()V

    :cond_b
    :goto_4
    return-void
.end method

.method private synthetic lambda$animatePendingRequests$2(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iput v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsEnterOffset:F

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->callback:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;->onEnterOffsetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->showBottomSheet()V

    return-void
.end method

.method private synthetic lambda$getView$1(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsCount:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->setChatPendingRequestsOnClose(JI)V

    iget p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsCount:I

    iput p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closePendingRequestsCount:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->animatePendingRequests(ZZ)V

    return-void
.end method

.method private setPendingRequests(ILjava/util/List;Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gtz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->setChatPendingRequestsOnClose(JI)V

    iput v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closePendingRequestsCount:I

    :cond_1
    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->animatePendingRequests(ZZ)V

    iput v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsCount:I

    return-void

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsCount:I

    if-eq v1, p1, :cond_5

    iput p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsCount:I

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "JoinUsersRequests"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->animatePendingRequests(ZZ)V

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v3, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentAccount:I

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    :cond_5
    return-void
.end method

.method private showBottomSheet()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$2;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$2;-><init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public fillThemeDescriptions(Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelTitle:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsEnterOffset:F

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x33

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsDataLayout:Landroid/widget/LinearLayout;

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/16 v5, 0x30

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$1;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$1;-><init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsImageView;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsDataLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->avatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v3, -0x2

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelTitle:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsDataLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsCountTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const v3, 0x19ffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->closeView:Landroid/widget/ImageView;

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/16 v3, 0x24

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0, v1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setPendingRequests(ILjava/util/List;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->root:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getViewEnterOffset()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->pendingRequestsEnterOffset:F

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public onBackToScreen()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->bottomSheet:Lorg/telegram/ui/Components/MemberRequestsBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MemberRequestsBottomSheet;->isNeedRestoreDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->showBottomSheet()V

    :cond_0
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setPendingRequests(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public setLeftMargin(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->requestsDataLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method
