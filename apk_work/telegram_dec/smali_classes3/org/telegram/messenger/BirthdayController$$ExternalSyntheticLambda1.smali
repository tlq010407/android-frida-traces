.class public final synthetic Lorg/telegram/messenger/BirthdayController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/BirthdayController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/BirthdayController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BirthdayController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/BirthdayController;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/BirthdayController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/BirthdayController;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/BirthdayController;->$r8$lambda$VIi0fx2Yg8f7ukd1ZA85xPETL7s(Lorg/telegram/messenger/BirthdayController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
