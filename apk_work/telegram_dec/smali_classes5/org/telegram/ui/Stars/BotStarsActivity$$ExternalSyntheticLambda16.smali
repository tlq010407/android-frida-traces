.class public final synthetic Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/BotStarsActivity;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    iput-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->$r8$lambda$bzNEWnHSC0PKeYANSIst4L0EOxw(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
