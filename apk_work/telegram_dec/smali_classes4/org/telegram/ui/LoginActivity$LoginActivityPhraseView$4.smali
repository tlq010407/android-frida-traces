.class Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;


# direct methods
.method public static synthetic $r8$lambda$iwRBwV9mv0xeA1CmB5I1MJyOXIg(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 10

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18200(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v5, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18202(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;D)D

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17926(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;D)I

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    if-lt v1, v7, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v1

    div-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x3c

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v8

    div-int/2addr v8, v7

    mul-int/lit8 v7, v1, 0x3c

    sub-int/2addr v8, v7

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v7

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v5

    if-eq v5, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v3

    if-ne v3, v2, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->SmsAvailableIn2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object v5, v2, v6

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->CallAvailableIn2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object v5, v2, v6

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18500(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-ne v0, v3, :cond_8

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestCallButton:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeFragment:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-ne v0, v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestAnotherSMS:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v6, v2, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestMissedCall:I

    goto :goto_2

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$18000(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
