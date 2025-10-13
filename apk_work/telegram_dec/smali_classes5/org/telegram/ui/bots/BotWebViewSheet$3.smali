.class Lorg/telegram/ui/bots/BotWebViewSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/web/BotWebViewContainer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sentWebViewData:Z

.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$0UDwLq9f3JkAYxCMsqUq5HL3PPk(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onLocationGranted$3(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3twIhmIucGZKfTd5EjDUYqiHZFY(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onEmojiStatusGranted$10(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7ORCuFZ3EnlsASzIHTyPUaqC4vc(Lorg/telegram/ui/bots/BotWebViewSheet$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onWebAppOpenInvoice$13(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$82ivh9VCkNmNMnQRHgYAw5ps-OY(Landroid/text/SpannableStringBuilder;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onLocationGranted$5(Landroid/text/SpannableStringBuilder;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8pBh-QdIMbkPrhPqtjcb8kZMRoY(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onWebAppOpenInvoice$14(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BbLuqxB613MCxrpSmywZANwEhw0(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onLocationGranted$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$GDabNbEiMHSA9A1pXnSh3tZobOA(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onLocationGranted$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$KLNbXzcgpPzITkuPFEi6fm0pBWE(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onWebAppSwitchInlineQuery$15(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PWnVcRNfHMtyVnZZ7pbQWb_r6Vg(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onWebAppOpenInvoice$12(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PuO7iSwAPxuRmDbkiIHVJtjRVx4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onEmojiStatusGranted$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TnL23fOEsU9628ru1WC1tk7GYzU(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onEmojiStatusGranted$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$cx2Gre2knNwMcLgYvNvnHJgdV9Y(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onSharedTo$0(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fEFGszjyeIAu6gdwzeKp-B3XYc0(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onEmojiStatusGranted$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$myU7bI2Kw3CgIowXiy6nFWy6FAo(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onSendWebViewData$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpW0HbHHbExY28AFjXPYCL46ic8(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onEmojiStatusSet$11(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xHld8dUoXulEwo2exy4wQYcxEiY(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->lambda$onEmojiStatusGranted$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onEmojiStatusGranted$10(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->BotEmojiStatusPermissionRequestGranted:I

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onEmojiStatusGranted$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEmojiStatusGranted$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const-string p2, "cancelled"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEmojiStatusAccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda16;

    invoke-direct {v0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEmojiStatusGranted$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEmojiStatusGranted$9()V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$toggleUserEmojiStatusPermission;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$toggleUserEmojiStatusPermission;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$toggleUserEmojiStatusPermission;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_bots$toggleUserEmojiStatusPermission;->enabled:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$onEmojiStatusSet$11(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->BotEmojiStatusUpdated:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onLocationGranted$2()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotLocation;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/bots/BotLocation;->setGranted(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onLocationGranted$3(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->BotLocationPermissionRequestGranted:I

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onLocationGranted$4()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const-string v0, "botPermissionLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onLocationGranted$5(Landroid/text/SpannableStringBuilder;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {p1, v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onSendWebViewData$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance p2, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onSharedTo$0(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$raw;->forward:I

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onWebAppOpenInvoice$12(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onWebAppOpenInvoice$13(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onWebAppOpenInvoice$14(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onWebAppSwitchInlineQuery$15(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p4, p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    const-string p7, "scrollToTopOnResume"

    const/4 p8, 0x1

    invoke-virtual {p6, p7, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p4

    const-string p5, "enc_id"

    invoke-virtual {p6, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p7

    if-eqz p7, :cond_1

    const-string p7, "user_id"

    :goto_0
    invoke-virtual {p6, p7, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    neg-long p4, p4

    const-string p7, "chat_id"

    goto :goto_0

    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "@"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "start_text"

    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p6, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2, p8}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$002(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3100(Lorg/telegram/ui/bots/BotWebViewSheet;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    sget p4, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    sget p4, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3200(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3301(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p2, p8}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3202(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    :cond_2
    new-instance p2, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, p8}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    :cond_3
    return p8
.end method


# virtual methods
.method public getBotSensors()Lorg/telegram/ui/bots/BotSensors;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v1, Lorg/telegram/ui/bots/BotSensors;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/bots/BotSensors;-><init>(Landroid/content/Context;J)V

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1002(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/bots/BotSensors;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotSensors;->attachWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    return-object v0
.end method

.method public isClipboardAvailable()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->botInAttachMenu(J)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCloseToTabs()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Z)V

    return-void
.end method

.method public onEmojiStatusGranted(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;

    invoke-direct {p1}, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;-><init>()V

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V

    iput-object v1, p1, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    :cond_0
    return-void
.end method

.method public onEmojiStatusSet(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    return-void
.end method

.method public onFullscreenRequested(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$300(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$300(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ALREADY_FULLSCREEN"

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V

    return-object v1
.end method

.method public synthetic onInstantClose()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onInstantClose(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public onLocationGranted(Z)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;

    invoke-direct {p1}, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;-><init>()V

    sget v0, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->undoText:Ljava/lang/CharSequence;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V

    iput-object v0, p1, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->BotLocationPermissionRequestDeniedApp:I

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->BotLocationPermissionRequestDeniedAppSettings:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda14;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    :goto_0
    return-void
.end method

.method public onOpenBackFromTabs()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2002(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    :cond_1
    return-void
.end method

.method public onOrientationLockChanged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lockOrientation(Z)V

    return-void
.end method

.method public onSendWebViewData(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2100(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->sentWebViewData:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->sentWebViewData:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->random_id:J

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2200(Lorg/telegram/ui/bots/BotWebViewSheet;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->button_text:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->data:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetBackButtonVisible(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2502(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$500(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$500(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/BotFullscreenButtons;->setBack(ZZ)V

    :cond_1
    return-void
.end method

.method public onSetSettingsButtonVisible(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2602(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    return-void
.end method

.method public onSetupMainButton(ZZLjava/lang/String;IIZZ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p6

    move v4, p7

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/bots/BotButtons$ButtonState;->of(ZZZZLjava/lang/String;II)Lorg/telegram/ui/bots/BotButtons$ButtonState;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/bots/BotButtons;->setMainState(Lorg/telegram/ui/bots/BotButtons$ButtonState;Z)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$300(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    :cond_0
    return-void
.end method

.method public onSetupSecondaryButton(ZZLjava/lang/String;IIZZLjava/lang/String;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v1

    move v2, p1

    move v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p8

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/bots/BotButtons$ButtonState;->of(ZZZZLjava/lang/String;IILjava/lang/String;)Lorg/telegram/ui/bots/BotButtons$ButtonState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/bots/BotButtons;->setSecondaryState(Lorg/telegram/ui/bots/BotButtons$ButtonState;Z)V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$300(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    :cond_0
    return-void
.end method

.method public onSharedTo(Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->BotSharedToOne:I

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeerName(J)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "BotSharedToMany"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    return-void
.end method

.method public synthetic onWebAppBackgroundChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppBackgroundChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;ZI)V

    return-void
.end method

.method public onWebAppExpand()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void
.end method

.method public onWebAppOpenInvoice(Lorg/telegram/tgnet/TLRPC$InputInvoice;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    move-object v5, p3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    new-instance v6, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsController;->openPaymentForm(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p1, p3, p2, v0}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {p1, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    new-instance p3, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, v0, v1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_3
    return-void
.end method

.method public synthetic onWebAppReady()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppReady(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public onWebAppSetActionBarColor(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2302(Lorg/telegram/ui/bots/BotWebViewSheet;I)I

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setActionBarColor(IZZ)V

    return-void
.end method

.method public onWebAppSetBackgroundColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->setBackgroundColor(IZZ)V

    return-void
.end method

.method public onWebAppSetNavigationBarColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->setNavigationBarColor(IZ)V

    return-void
.end method

.method public onWebAppSetupClosingBehavior(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1802(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    return-void
.end method

.method public onWebAppSwipingBehavior(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowSwipes(Z)V

    :cond_0
    return-void
.end method

.method public onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/LaunchActivity;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialogsType"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onlySelect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "groups"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "allowGroups"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "allowMegagroups"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowLegacyGroups"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "users"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowUsers"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "channels"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowChannels"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "bots"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "allowBots"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p3, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p3, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V

    invoke-virtual {p3, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
