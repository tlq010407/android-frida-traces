.class Lorg/telegram/ui/Components/FragmentContextView$4;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    iput-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 6

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const/16 v3, 0x33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/FragmentContextView;->access$1800(Lorg/telegram/ui/Components/FragmentContextView;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/FragmentContextView;->access$1800(Lorg/telegram/ui/Components/FragmentContextView;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41600000    # 14.0f

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method
