.class Lorg/telegram/ui/Components/CompatDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/CompatDrawable;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/CompatDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CompatDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CompatDrawable$1;->this$0:Lorg/telegram/ui/Components/CompatDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/CompatDrawable$1;->this$0:Lorg/telegram/ui/Components/CompatDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CompatDrawable;->onAttachedToWindow()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/CompatDrawable$1;->this$0:Lorg/telegram/ui/Components/CompatDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CompatDrawable;->onDetachedToWindow()V

    return-void
.end method
