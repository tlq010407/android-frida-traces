.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->$r8$lambda$BOux35gVm73huOkzScPjzJ3DNE0(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
