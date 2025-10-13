.class Lorg/telegram/ui/Stars/StarsReactionsSheet$1;
.super Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onValueChanged(I)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updateSenders(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$000(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$000(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->StarsReactionSend:I

    const/16 v4, 0x2c

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$100(Lorg/telegram/ui/Stars/StarsReactionsSheet;)[Lorg/telegram/ui/Components/ColoredImageSpan;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method
