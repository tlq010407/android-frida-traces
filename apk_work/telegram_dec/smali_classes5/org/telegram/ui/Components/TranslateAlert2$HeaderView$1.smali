.class Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/TranslateAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;->this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;->val$this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;->this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->access$1400(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    :cond_0
    return-void
.end method
