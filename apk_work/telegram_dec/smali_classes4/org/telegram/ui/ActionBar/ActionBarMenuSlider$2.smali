.class Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$2;
.super Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;ZZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
