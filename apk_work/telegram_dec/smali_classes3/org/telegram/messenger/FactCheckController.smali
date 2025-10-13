.class public Lorg/telegram/messenger/FactCheckController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FactCheckController$Key;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/FactCheckController;

.field private static currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private static final lockObjects:[Ljava/lang/Object;


# instance fields
.field private clearedExpiredInDatabase:Z

.field public final currentAccount:I

.field private final loadMissingRunnable:Ljava/lang/Runnable;

.field private final loading:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FactCheckController$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final localCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_factCheck;",
            ">;"
        }
    .end annotation
.end field

.field private final toload:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/FactCheckController$Key;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLRPC$TL_factCheck;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$17a66GbrcQ0ifpTLmeZl4mfZmyc(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$openFactCheckEditor$12(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3adw_zfKI8tZiti0xR-9_KkHZwE(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$applyFactCheck$14(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4vM9TzFSoFqO_ZZpJoJydghAl94(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FactCheckController;->lambda$loadMissing$2(Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxT9GqmR0iwOsQU7SZp9irV69n8(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/ui/Components/EditTextCaption;ILorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FactCheckController;->lambda$openFactCheckEditor$8(Lorg/telegram/ui/Components/EditTextCaption;ILorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GvN_9-hEQzghOq9aC9QT86GzSjs(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FactCheckController;->lambda$loadMissing$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JpH7yHT6pnclw1XNRCmFTCCRSQU(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/FactCheckController;->lambda$clearExpiredInDatabase$7(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PuRAsGbUIGbjHx10TA_JQ7vHjkY(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FactCheckController;->lambda$applyFactCheck$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YpyzKWAXZ62Jy-qavMM7ThmuLNA(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/messenger/FactCheckController$Key;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FactCheckController;->lambda$getFactCheck$0(Lorg/telegram/messenger/FactCheckController$Key;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxqDc3jp6zDTZquLci3o58khSpg(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$getFromDatabase$4(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-DHYcR4M_VJInkzsX9NNrgeQzY(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FactCheckController;->lambda$applyFactCheck$16(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cSn0YY6kSzQ16psVIG73jVTJqRo(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$openFactCheckEditor$11(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$covAdcOkR6_V4SG3w1tVgkD6jFY(Landroid/view/View;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$openFactCheckEditor$10(Landroid/view/View;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cvq9xLIa9zkgDqBmcyWoOiLrXKM(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$openFactCheckEditor$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eRU3nxQjWPT8Oj30fqwMG3VVK3A(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/FactCheckController;->lambda$getFromDatabase$5(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hwZvWtn8X40ulbUsYqEavkir-k8(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$saveToDatabase$6(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pdoT3OMyz2266KWAxhZ_e_oJiEo(Lorg/telegram/messenger/FactCheckController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FactCheckController;->loadMissing()V

    return-void
.end method

.method public static synthetic $r8$lambda$rCZDn9DTeD00226gcwmQQ1cnVzY(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController;->lambda$openFactCheckEditor$13(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqnHgwbUaSvuhOucbtLBfb5U520(Lorg/telegram/messenger/FactCheckController;JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FactCheckController;->lambda$loadMissing$3(JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/messenger/FactCheckController;

    sput-object v1, Lorg/telegram/messenger/FactCheckController;->Instance:[Lorg/telegram/messenger/FactCheckController;

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/telegram/messenger/FactCheckController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/telegram/messenger/FactCheckController;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FactCheckController;->localCache:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FactCheckController;->loading:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/FactCheckController;)V

    iput-object v0, p0, Lorg/telegram/messenger/FactCheckController;->loadMissingRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    return-void
.end method

.method static synthetic access$000()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/FactCheckController;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/FactCheckController;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p0
.end method

.method private clearExpiredInDatabase()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/FactCheckController;->clearedExpiredInDatabase:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/FactCheckController;->clearedExpiredInDatabase:Z

    iget v0, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getFromDatabase(Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FactCheckController$Key;",
            ">;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_factCheck;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, p1, p2}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/messenger/FactCheckController;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/FactCheckController;->Instance:[Lorg/telegram/messenger/FactCheckController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/FactCheckController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FactCheckController;->Instance:[Lorg/telegram/messenger/FactCheckController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/FactCheckController;->Instance:[Lorg/telegram/messenger/FactCheckController;

    new-instance v2, Lorg/telegram/messenger/FactCheckController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FactCheckController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private synthetic lambda$applyFactCheck$14(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$applyFactCheck$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_2

    if-nez p3, :cond_5

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p2, :cond_3

    sget p3, Lorg/telegram/messenger/R$raw;->ic_delete:I

    goto :goto_2

    :cond_3
    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    :goto_2
    if-eqz p2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->FactCheckDeleted:I

    goto :goto_3

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->FactCheckEdited:I

    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_5
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$applyFactCheck$16(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda12;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$clearExpiredInDatabase$7(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM fact_checks WHERE expires > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getFactCheck$0(Lorg/telegram/messenger/FactCheckController$Key;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->localCache:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/FactCheckController$Key;->hash:J

    invoke-virtual {v0, v1, v2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    return-void
.end method

.method private static synthetic lambda$getFromDatabase$4(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getFromDatabase$5(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FactCheckController$Key;

    iget-wide v4, v4, Lorg/telegram/messenger/FactCheckController$Key;->hash:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT data FROM fact_checks WHERE hash IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    invoke-static {p0, v2, v3}, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FactCheckController$Key;

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->hash:J

    iget-wide v7, v4, Lorg/telegram/messenger/FactCheckController$Key;->hash:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-ltz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    :goto_4
    new-instance p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda9;

    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private synthetic lambda$loadMissing$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Lorg/telegram/tgnet/Vector;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->msg_id:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->msg_id:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->msg_id:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FactCheckController$Key;

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->msg_id:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v4, :cond_3

    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->need_check:Z

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/FactCheckController;->loading:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    iget p1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->factCheckLoaded:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadMissing$2(Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadMissing$3(JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 6

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FactCheckController$Key;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->msg_id:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/messenger/FactCheckController$Key;->messageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/FactCheckController;->loading:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    iget p3, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p5, Lorg/telegram/messenger/NotificationCenter;->factCheckLoaded:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p5, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;->msg_id:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget p2, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda16;

    invoke-direct {p3, p0, v0, p1, p4}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLRPC$TL_getFactCheck;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method private static synthetic lambda$openFactCheckEditor$10(Landroid/view/View;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    sput-object p1, Lorg/telegram/messenger/FactCheckController;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private static synthetic lambda$openFactCheckEditor$11(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$openFactCheckEditor$12(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$openFactCheckEditor$13(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$openFactCheckEditor$8(Lorg/telegram/ui/Components/EditTextCaption;ILorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    const/4 p6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/CharSequence;

    aput-object p1, v1, p6

    iget p1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    aget-object p1, v1, p6

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, p4}, Lorg/telegram/messenger/FactCheckController;->applyFactCheck(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Z)V

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$openFactCheckEditor$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$saveToDatabase$6(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "REPLACE INTO fact_checks VALUES(?, ?, ?)"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->hash:J

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    new-instance p0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v1, 0x34fd9000

    add-long/2addr p0, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_0
    :goto_0
    return-void

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    throw p0
.end method

.method private loadMissing()V
    .locals 8

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/messenger/FactCheckController;->loading:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda11;

    move-object v2, v1

    move-object v3, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FactCheckController;JLjava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/FactCheckController;->getFromDatabase(Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method private saveToDatabase(Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, p1}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lorg/telegram/messenger/FactCheckController;->clearExpiredInDatabase()V

    return-void
.end method

.method private scheduleLoadMissing()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->loadMissingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->loadMissingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public applyFactCheck(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Z)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_editFactCheck;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_editFactCheck;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_editFactCheck;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_editFactCheck;->msg_id:I

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_editFactCheck;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_deleteFactCheck;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_deleteFactCheck;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_deleteFactCheck;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_deleteFactCheck;->msg_id:I

    :goto_1
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_2
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v2, 0x140

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    iget p1, p0, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p3, v1}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public getFactCheck(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$TL_factCheck;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->need_check:Z

    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->localCache:Landroid/util/LongSparseArray;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->hash:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->localCache:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->hash:J

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FactCheckController;->saveToDatabase(Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V

    :cond_2
    :goto_0
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    return-object p1

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/FactCheckController$Key;->of(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/FactCheckController$Key;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget v2, v1, Lorg/telegram/messenger/FactCheckController$Key;->messageId:I

    if-gez v2, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->localCache:Landroid/util/LongSparseArray;

    iget-wide v2, v1, Lorg/telegram/messenger/FactCheckController$Key;->hash:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    if-eqz v0, :cond_6

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->loading:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    iget-wide v2, v1, Lorg/telegram/messenger/FactCheckController$Key;->dialogId:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController;->toload:Landroid/util/LongSparseArray;

    iget-wide v2, v1, Lorg/telegram/messenger/FactCheckController$Key;->dialogId:J

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v0, v4

    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/messenger/FactCheckController$Key;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/telegram/messenger/FactCheckController;->scheduleLoadMissing()V

    goto :goto_0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public openFactCheckEditor(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;Z)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_1

    if-nez p4, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    new-array v7, v14, [Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v16, :cond_2

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    :goto_3
    new-array v5, v14, [Landroid/widget/TextView;

    if-eqz v11, :cond_4

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const/16 v17, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/16 v17, 0x1

    :goto_5
    sget v0, Lorg/telegram/messenger/R$string;->FactCheckDialog:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget v0, v8, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->factcheckLengthLimit:I

    new-instance v3, Lorg/telegram/messenger/FactCheckController$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FactCheckController$1;-><init>(Lorg/telegram/messenger/FactCheckController;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-boolean v14, v15, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineYFix:Z

    new-instance v5, Lorg/telegram/messenger/FactCheckController$2;

    move-object v0, v5

    move-object v2, v15

    move/from16 v3, v18

    move-object/from16 v4, p3

    move-object v12, v5

    move/from16 v5, v17

    move-object/from16 p4, v6

    move-object v6, v7

    move-object/from16 v20, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FactCheckController$2;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/ui/Components/EditTextCaption;ILorg/telegram/messenger/MessageObject;Z[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget v0, v8, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;Z)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v15, v14, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    sget v0, Lorg/telegram/messenger/R$string;->FactCheckPlaceholder:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v14}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x24001

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setInputType(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v0, 0x6

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getFactCheck()Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance v6, Lorg/telegram/messenger/FactCheckController$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object v3, v15

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FactCheckController$3;-><init>(Lorg/telegram/messenger/FactCheckController;ILorg/telegram/ui/Components/EditTextCaption;[Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$TL_factCheck;)V

    invoke-virtual {v15, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeCustomMaxHeight()Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v6, p4

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v0, 0x43920000    # 292.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v3, v18

    move-object/from16 v4, p3

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/ui/Components/EditTextCaption;ILorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {v6, v7, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v16, :cond_6

    sput-object v0, Lorg/telegram/messenger/FactCheckController;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aput-object v0, v20, v1

    new-instance v1, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v13}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lorg/telegram/messenger/FactCheckController;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v1, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda5;

    invoke-direct {v1, v15}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    sget-object v0, Lorg/telegram/messenger/FactCheckController;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    aput-object v0, v20, v1

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v15}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object v0, v20, v1

    new-instance v2, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v15}, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    aget-object v0, v20, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :goto_6
    aget-object v0, v20, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    aget-object v0, v20, v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_7

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v19, v1

    :cond_7
    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method
