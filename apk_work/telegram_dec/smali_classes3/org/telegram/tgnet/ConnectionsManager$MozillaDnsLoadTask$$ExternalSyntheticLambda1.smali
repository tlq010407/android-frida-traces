.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;

.field public final synthetic f$1:Lorg/telegram/tgnet/NativeByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/NativeByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->$r8$lambda$uSe2PfIYgwsqmxeHaQr7W_Xc3q8(Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method
