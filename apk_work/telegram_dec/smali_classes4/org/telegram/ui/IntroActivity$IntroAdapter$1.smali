.class Lorg/telegram/ui/IntroActivity$IntroAdapter$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$IntroAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$IntroAdapter;

.field final synthetic val$headerTextView:Landroid/widget/TextView;

.field final synthetic val$messageTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$IntroAdapter;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->this$1:Lorg/telegram/ui/IntroActivity$IntroAdapter;

    iput-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$messageTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x4

    mul-int/lit8 p5, p5, 0x3

    const p1, 0x43898000    # 275.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    const/high16 p1, 0x43160000    # 150.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr p5, p1

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p5, p2

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p3, p2, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    int-to-float p2, p5

    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$messageTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$messageTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
