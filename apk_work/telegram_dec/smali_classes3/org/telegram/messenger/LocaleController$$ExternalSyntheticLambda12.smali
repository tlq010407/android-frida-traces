.class public final synthetic Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/LocaleController;

.field public final synthetic f$1:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/LocaleController;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput p3, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$2:I

    iput-object p4, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/LocaleController;

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v2, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$2:I

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->$r8$lambda$_PKF4NoDJvxhE2VQ4p6pYjyScFU(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    return-void
.end method
