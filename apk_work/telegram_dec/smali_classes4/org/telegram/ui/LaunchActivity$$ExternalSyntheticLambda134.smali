.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda134;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda134;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda134;->f$1:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda134;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda134;->f$1:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$OcI-0w2o3nG0Bx7NPimVo_Cg81g(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    return-void
.end method
