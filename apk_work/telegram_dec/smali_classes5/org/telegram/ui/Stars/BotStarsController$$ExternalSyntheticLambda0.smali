.class public final synthetic Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/BotStarsController;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/BotStarsController;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stars/BotStarsController;

    iput-wide p2, p0, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stars/BotStarsController;

    iget-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->$r8$lambda$KbPi69-xXbiMIuc4szqdvonZMps(Lorg/telegram/ui/Stars/BotStarsController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
