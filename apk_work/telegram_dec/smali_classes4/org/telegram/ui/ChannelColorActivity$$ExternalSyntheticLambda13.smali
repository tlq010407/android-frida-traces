.class public final synthetic Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ChannelColorActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ChannelColorActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChannelColorActivity;->$r8$lambda$T-joFbm3ztA8UHWT827a8mbrD_0(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method
