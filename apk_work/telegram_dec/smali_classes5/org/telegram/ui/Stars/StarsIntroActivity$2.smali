.class Lorg/telegram/ui/Stars/StarsIntroActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$2;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$2;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->access$200(Lorg/telegram/ui/Stars/StarsIntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
