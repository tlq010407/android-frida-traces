.class Lorg/telegram/ui/PremiumPreviewFragment$4;
.super Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$4;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
