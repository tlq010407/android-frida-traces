.class Lorg/telegram/ui/Components/EmojiView$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$shouldDrawBackground:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$30;->val$shouldDrawBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$11700(Lorg/telegram/ui/Components/EmojiView;IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, p3}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;III)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x1

    invoke-static {p3, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$9400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    if-nez v3, :cond_2

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v4

    goto :goto_2

    :cond_2
    if-ne v3, v0, :cond_3

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$9400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_5

    if-eq v4, p3, :cond_5

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    if-nez p1, :cond_7

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_9

    :cond_7
    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_4
    invoke-static {p3, v0}, Lorg/telegram/ui/Components/EmojiView;->access$11000(Lorg/telegram/ui/Components/EmojiView;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$300(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$11900(Lorg/telegram/ui/Components/EmojiView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/EmojiView;->access$12000(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$30;->val$shouldDrawBackground:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
