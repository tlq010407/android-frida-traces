.class public final synthetic Lorg/telegram/messenger/CaptchaController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/CaptchaController$Request;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/CaptchaController$Request;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/CaptchaController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/CaptchaController$Request;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/CaptchaController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/CaptchaController$Request;

    invoke-static {v0, p1}, Lorg/telegram/messenger/CaptchaController;->$r8$lambda$UjfC46a1LwdNoQ4PzIEIXfzBxPc(Lorg/telegram/messenger/CaptchaController$Request;Ljava/lang/Exception;)V

    return-void
.end method
