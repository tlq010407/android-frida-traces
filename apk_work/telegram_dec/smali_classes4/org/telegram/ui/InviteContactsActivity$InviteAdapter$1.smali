.class Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VKg6QsYfGuwTzPX8OHjjgq-VF6c(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->lambda$run$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRE_T9UOkYnPbe1AQxd95pI-Gv4(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->lambda$run$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iput-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2600(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v4

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v6, v5

    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v3

    if-eqz v2, :cond_4

    aput-object v2, v7, v5

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iget-object v9, v9, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iget-object v9, v9, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v10, v9, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v11, v9, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v11, v4

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v6, :cond_9

    aget-object v14, v7, v12

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    if-eqz v11, :cond_7

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v13, 0x1

    :cond_7
    if-eqz v13, :cond_8

    iget-object v3, v9, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v10, v9, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3, v10, v14}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2600(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-static {v0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2500(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2502(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->val$query:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
