.class public final synthetic Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->$r8$lambda$WZILNyIhrBQAst1rN6aS3FVcWXI(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void
.end method
