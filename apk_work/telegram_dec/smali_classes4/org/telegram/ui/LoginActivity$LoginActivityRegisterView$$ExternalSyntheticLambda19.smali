.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->$r8$lambda$K5MHruixX6MriUvsvN1QjBch964(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    return-void
.end method
