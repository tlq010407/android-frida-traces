.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:Z

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$1:Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$2:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$3:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput p5, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$4:I

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$5:Z

    iput p7, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$6:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$7:Z

    iput-wide p9, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$8:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$1:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$2:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$3:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$4:I

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$5:Z

    iget v6, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$6:I

    iget-boolean v7, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$7:Z

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;->f$8:J

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/MediaController;->$r8$lambda$SGlusjxdCTAz-DlYMZHvPaJiPXQ(Lorg/telegram/messenger/MediaController;Ljava/io/File;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZJ)V

    return-void
.end method
