.class Lorg/telegram/ui/Components/HashtagActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HashtagActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HashtagActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HashtagActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$2;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
