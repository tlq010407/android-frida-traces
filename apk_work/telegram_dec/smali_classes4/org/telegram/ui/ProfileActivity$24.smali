.class Lorg/telegram/ui/ProfileActivity$24;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19200(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v0

    const v1, -0x435c28f6    # -0.02f

    const v2, 0x3e19999a    # 0.15f

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    const v1, 0x3fb33333    # 1.4f

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
