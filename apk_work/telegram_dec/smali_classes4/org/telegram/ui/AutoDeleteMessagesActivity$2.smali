.class Lorg/telegram/ui/AutoDeleteMessagesActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AutoDeleteMessagesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;


# direct methods
.method public static synthetic $r8$lambda$JYU_t0RW1tD3T6UIrI6n8VEZGgw(Lorg/telegram/ui/AutoDeleteMessagesActivity$2;Ljava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->lambda$run$1(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7Sv-MV_DYjxhRNn1Kfm-L1wxAQ(Lorg/telegram/ui/AutoDeleteMessagesActivity$2;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->lambda$run$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-static {v6}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->access$000(Lorg/telegram/ui/AutoDeleteMessagesActivity;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->setDialogHistoryTTL(JI)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-static {v2}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->access$000(Lorg/telegram/ui/AutoDeleteMessagesActivity;)I

    move-result v2

    const-string v3, "Chats"

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$raw;->fire_on:I

    sget v5, Lorg/telegram/messenger/R$string;->AutodeleteTimerEnabledForChats:I

    iget-object v6, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-static {v6}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->access$000(Lorg/telegram/ui/AutoDeleteMessagesActivity;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p1, v8, v1

    invoke-static {v3, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object p1, v3, v0

    const-string p1, "AutodeleteTimerEnabledForChats"

    invoke-static {p1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, v4, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$raw;->fire_off:I

    sget v5, Lorg/telegram/messenger/R$string;->AutodeleteTimerDisabledForChats:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p1, v7, v1

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "AutodeleteTimerDisabledForChats"

    invoke-static {p1, v5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private synthetic lambda$run$1(Ljava/util/ArrayList;I)V
    .locals 2

    new-instance p2, Lorg/telegram/ui/AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity$2;Ljava/util/ArrayList;)V

    const-wide/16 v0, 0x64

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/UsersSelectActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;-><init>(I)V

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-static {v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->access$000(Lorg/telegram/ui/AutoDeleteMessagesActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;->setTtlPeriod(I)V

    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;->setDelegate(Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;->this$0:Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
