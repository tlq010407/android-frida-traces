.class Lorg/telegram/ui/Components/BackgroundGradientDrawable$1;
.super Lorg/telegram/ui/Components/BackgroundGradientDrawable$ListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BackgroundGradientDrawable;->drawExactBoundsSize(Landroid/graphics/Canvas;Landroid/view/View;F)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BackgroundGradientDrawable;

.field final synthetic val$ownerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BackgroundGradientDrawable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BackgroundGradientDrawable$1;->this$0:Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/BackgroundGradientDrawable$1;->val$ownerView:Landroid/view/View;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSizesReady()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BackgroundGradientDrawable$1;->val$ownerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
