.class public final synthetic Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PrivacyControlActivity;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;->f$1:[Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->$r8$lambda$mkKXCuMF5fmGA98TmpDc2yXZQ5Y(Lorg/telegram/ui/PrivacyControlActivity;[ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
