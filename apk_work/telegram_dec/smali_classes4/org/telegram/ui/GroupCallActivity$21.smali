.class Lorg/telegram/ui/GroupCallActivity$21;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$_zx3uF1yFTYgNfD3Q03aDELPJWg(Lorg/telegram/ui/GroupCallActivity$21;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCallActivity$21;->lambda$createTextView$0(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$21;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$21;->val$context:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$createTextView$0(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$21;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, p2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    if-eqz v0, :cond_0

    invoke-static {p2, p1}, Lorg/telegram/ui/GroupCallActivity;->access$17900(Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$21;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v1, Lorg/telegram/ui/GroupCallActivity$21$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/GroupCallActivity$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$21;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
