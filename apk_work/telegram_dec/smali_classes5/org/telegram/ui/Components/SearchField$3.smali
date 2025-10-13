.class Lorg/telegram/ui/Components/SearchField$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchField;-><init>(Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchField;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchField;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchField$3;->this$0:Lorg/telegram/ui/Components/SearchField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField$3;->this$0:Lorg/telegram/ui/Components/SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchField;->access$100(Lorg/telegram/ui/Components/SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchField$3;->this$0:Lorg/telegram/ui/Components/SearchField;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchField;->access$200(Lorg/telegram/ui/Components/SearchField;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField$3;->this$0:Lorg/telegram/ui/Components/SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchField;->access$200(Lorg/telegram/ui/Components/SearchField;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const v3, 0x3dcccccd    # 0.1f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x3dcccccd    # 0.1f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField$3;->this$0:Lorg/telegram/ui/Components/SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchField;->access$100(Lorg/telegram/ui/Components/SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchField;->onTextChange(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
