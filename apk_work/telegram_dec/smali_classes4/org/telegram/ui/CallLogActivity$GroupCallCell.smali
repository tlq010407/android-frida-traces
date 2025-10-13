.class Lorg/telegram/ui/CallLogActivity$GroupCallCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupCallCell"
.end annotation


# instance fields
.field private button:Lorg/telegram/ui/Components/ProgressButton;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public static synthetic $r8$lambda$9-tz5zhslfLYTjK2Dn3v5FqOqV8(Lorg/telegram/ui/CallLogActivity$GroupCallCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget p1, Lorg/telegram/messenger/R$string;->VoipChatJoin:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ProgressButton;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/ProgressButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42300000    # 44.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    :goto_1
    invoke-virtual {v1, p2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2, v3, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setSublabelOffset(II)V

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    const/4 p2, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonProgress:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ProgressButton;->setProgressColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/ui/Components/ProgressButton;->setBackgroundRoundRect(IIF)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, p2, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x41e00000    # 28.0f

    const v2, 0x800035

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    new-instance p2, Lorg/telegram/ui/CallLogActivity$GroupCallCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/CallLogActivity$GroupCallCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/ui/Components/ProgressButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->button:Lorg/telegram/ui/Components/ProgressButton;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/CallLogActivity;->access$502(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/CallLogActivity;->access$500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/CallLogActivity;->access$602(Lorg/telegram/ui/CallLogActivity;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method
