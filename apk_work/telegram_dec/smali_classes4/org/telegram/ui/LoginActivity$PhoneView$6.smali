.class Lorg/telegram/ui/LoginActivity$PhoneView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$12dPGGDo54zrrbPFJnXrkz5HUPQ(Lorg/telegram/ui/LoginActivity$PhoneView$6;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView$6;->lambda$onConfirm$0(Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKaYNa8eigZAzDp-_TfREBFnipg(Lorg/telegram/ui/LoginActivity$PhoneView$6;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView$6;->lambda$onConfirm$1(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onConfirm$0(Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$2400(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$5800(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->sync(Lorg/telegram/ui/Components/RadialProgressView;)V

    return-void
.end method

.method private synthetic lambda$onConfirm$1(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$1500(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$6$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$6$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView$6;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    const-wide/16 p1, 0x96

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private onConfirm(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1602(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/LoginActivity;->access$2602(Lorg/telegram/ui/LoginActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v2, v2}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;IZ)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "android.permission.CALL_PHONE"

    invoke-static {v5, v6}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x1c

    const-string v8, "android.permission.READ_CALL_LOG"

    if-lt v0, v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v7, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    const/16 v10, 0x1a

    if-lt v0, v10, :cond_5

    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v11, v11, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v9}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v11, 0x1

    :goto_5
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3200(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3200(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    const-string v13, "888"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x1

    :cond_6
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$5400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    if-nez v3, :cond_7

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v5, :cond_8

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v7, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v11, :cond_a

    if-lt v0, v10, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "firstlogin"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_c
    :goto_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v4, "Continue"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-nez v3, :cond_e

    if-eqz v5, :cond_d

    if-nez v7, :cond_e

    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCallAndLog:I

    const-string v3, "AllowReadCallAndLog"

    :goto_7
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$raw;->calls_log:I

    goto :goto_9

    :cond_e
    if-eqz v5, :cond_10

    if-nez v7, :cond_f

    goto :goto_8

    :cond_f
    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCall:I

    const-string v3, "AllowReadCall"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    goto :goto_9

    :cond_10
    :goto_8
    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCallLog:I

    const-string v3, "AllowReadCallLog"

    goto :goto_7

    :goto_9
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x2e

    invoke-virtual {p1, v0, v4, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$5602(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1602(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    :goto_a
    return-void

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->val$code:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneView$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView$6;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$5700(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onConfirmPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$6;->onConfirm(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method

.method public onDismiss(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$6;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$5202(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-void
.end method

.method public onEditPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$1500(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method

.method public onFabPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/Components/TransformableLoginButtonView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$6;->onConfirm(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method
