.class public final synthetic Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SessionsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/SessionsActivity;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$3:Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/SessionsActivity;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;->f$3:Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/SessionsActivity;->$r8$lambda$UlUwvTwaoElT7Xx8S2dqma-9oDY(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    return-void
.end method
