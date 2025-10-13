.class Lorg/telegram/ui/Cells/AboutLinkCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/AboutLinkCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/AboutLinkCell;


# direct methods
.method public static synthetic $r8$lambda$Wy6auGnc0yRSRjeuCBman9qxvsI(Lorg/telegram/ui/Cells/AboutLinkCell$2;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/AboutLinkCell$2;->lambda$run$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCnX5r6qrprILMj37YdEP_Tl_z4(Lorg/telegram/ui/Cells/AboutLinkCell$2;Landroid/text/style/ClickableSpan;Landroid/text/Layout;FLjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Cells/AboutLinkCell$2;->lambda$run$0(Landroid/text/style/ClickableSpan;Landroid/text/Layout;FLjava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/AboutLinkCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/text/style/ClickableSpan;Landroid/text/Layout;FLjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p6, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p4, p1, p2, p3}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$400(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/text/style/ClickableSpan;Landroid/text/Layout;F)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p6, p1, :cond_4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "@"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$500(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->copy:I

    sget p3, Lorg/telegram/messenger/R$string;->UsernameCopied:I

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_1
    const-string p1, "#"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "$"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$500(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->copy:I

    sget p3, Lorg/telegram/messenger/R$string;->LinkCopied:I

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$500(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->copy:I

    sget p3, Lorg/telegram/messenger/R$string;->HashtagCopied:I

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$run$1(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$300(Lorg/telegram/ui/Cells/AboutLinkCell;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    :goto_0
    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v8, v2

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    instance-of v2, v2, Landroid/text/style/URLSpan;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    check-cast v2, Landroid/text/style/URLSpan;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$100(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/text/Layout;

    move-result-object v6

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$200(Lorg/telegram/ui/Cells/AboutLinkCell;)F

    move-result v7

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/text/style/ClickableSpan;

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    sget v3, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    new-instance v1, Lorg/telegram/ui/Cells/AboutLinkCell$2$$ExternalSyntheticLambda0;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/AboutLinkCell$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell$2;Landroid/text/style/ClickableSpan;Landroid/text/Layout;FLjava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    new-instance v0, Lorg/telegram/ui/Cells/AboutLinkCell$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/AboutLinkCell$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell$2;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$2;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$002(Lorg/telegram/ui/Cells/AboutLinkCell;Lorg/telegram/ui/Components/LinkSpanDrawable;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_3
    return-void
.end method
