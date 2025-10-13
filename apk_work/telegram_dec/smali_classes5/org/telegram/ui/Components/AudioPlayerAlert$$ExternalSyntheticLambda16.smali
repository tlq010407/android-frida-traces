.class public final synthetic Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->$r8$lambda$oXJEbexF8g_OZ2qaP2V-zHokKmU(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/net/Uri;)V

    return-void
.end method
