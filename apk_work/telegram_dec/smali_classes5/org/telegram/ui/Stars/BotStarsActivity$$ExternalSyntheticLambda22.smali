.class public final synthetic Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/BotStarsActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    iput-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsActivity;->$r8$lambda$yRmg6D2AiwKfq95VQ2TXXIW6Y9o(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
