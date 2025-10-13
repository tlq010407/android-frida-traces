.class public Lorg/telegram/ui/AvatarPreviewer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/AvatarPreviewer$Layout;,
        Lorg/telegram/ui/AvatarPreviewer$Data;,
        Lorg/telegram/ui/AvatarPreviewer$Callback;,
        Lorg/telegram/ui/AvatarPreviewer$AvatarView;,
        Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;,
        Lorg/telegram/ui/AvatarPreviewer$ChatInfoLoadTask;,
        Lorg/telegram/ui/AvatarPreviewer$UserInfoLoadTask;,
        Lorg/telegram/ui/AvatarPreviewer$MenuItem;
    }
.end annotation


# static fields
.field private static INSTANCE:Lorg/telegram/ui/AvatarPreviewer;


# instance fields
.field private layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

.field private view:Landroid/view/ViewGroup;

.field private visible:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/AvatarPreviewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/AvatarPreviewer;->visible:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/AvatarPreviewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/AvatarPreviewer;->visible:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/AvatarPreviewer;)Lorg/telegram/ui/AvatarPreviewer$Layout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/AvatarPreviewer;Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/AvatarPreviewer$Layout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/AvatarPreviewer;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/AvatarPreviewer;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer;->windowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/AvatarPreviewer;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer;->view:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/AvatarPreviewer;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer;->view:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public static canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$000(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$100(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getInstance()Lorg/telegram/ui/AvatarPreviewer;
    .locals 1

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer;->INSTANCE:Lorg/telegram/ui/AvatarPreviewer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer;

    invoke-direct {v0}, Lorg/telegram/ui/AvatarPreviewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer;->INSTANCE:Lorg/telegram/ui/AvatarPreviewer;

    :cond_0
    sget-object v0, Lorg/telegram/ui/AvatarPreviewer;->INSTANCE:Lorg/telegram/ui/AvatarPreviewer;

    return-object v0
.end method

.method public static hasVisibleInstance()Z
    .locals 1

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer;->INSTANCE:Lorg/telegram/ui/AvatarPreviewer;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/AvatarPreviewer;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/AvatarPreviewer;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->access$600(Lorg/telegram/ui/AvatarPreviewer$Layout;Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewer;->view:Landroid/view/ViewGroup;

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/AvatarPreviewer;->close()V

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer;->view:Landroid/view/ViewGroup;

    const-class v1, Landroid/view/WindowManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewer;->windowManager:Landroid/view/WindowManager;

    new-instance v1, Lorg/telegram/ui/AvatarPreviewer$1;

    invoke-direct {v1, p0, v0, p2, p4}, Lorg/telegram/ui/AvatarPreviewer$1;-><init>(Lorg/telegram/ui/AvatarPreviewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setData(Lorg/telegram/ui/AvatarPreviewer$Data;)V

    iget-boolean p2, p0, Lorg/telegram/ui/AvatarPreviewer;->visible:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer;->windowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-interface {p2, p3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_2

    const p3, 0x30100

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/AvatarPreviewer;->windowManager:Landroid/view/WindowManager;

    iget-object p4, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {p3, p4, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p3, p0, Lorg/telegram/ui/AvatarPreviewer;->windowManager:Landroid/view/WindowManager;

    iget-object p4, p0, Lorg/telegram/ui/AvatarPreviewer;->layout:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-interface {p3, p4, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p2, p0, Lorg/telegram/ui/AvatarPreviewer;->visible:Z

    :cond_3
    return-void
.end method
