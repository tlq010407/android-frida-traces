.class public final synthetic Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TwoStepVerificationActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$1:Z

    iget-boolean v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda14;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->$r8$lambda$2uiyCftTO9egoUJpDya2u054zNQ(Lorg/telegram/ui/TwoStepVerificationActivity;ZZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
