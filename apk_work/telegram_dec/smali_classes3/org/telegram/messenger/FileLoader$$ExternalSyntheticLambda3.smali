.class public final synthetic Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoader;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/FileLoader;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->$r8$lambda$LnObBXAmRgD6P2knEpXSVsNVzvQ(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;)V

    return-void
.end method
