.class public final synthetic Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Lorg/telegram/tgnet/ConnectionsManager;


# direct methods
.method public synthetic constructor <init>([ILorg/telegram/tgnet/ConnectionsManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;->f$0:[I

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/ConnectionsManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;->f$0:[I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/ConnectionsManager;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/Weather;->$r8$lambda$pVz-5ZF43ADALZvvq5I3OLcOx2I([ILorg/telegram/tgnet/ConnectionsManager;)V

    return-void
.end method
