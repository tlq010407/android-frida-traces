.class public Lorg/telegram/messenger/SecureDocumentKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public file_iv:[B

.field public file_key:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecureDocumentKey;->file_key:[B

    iput-object p2, p0, Lorg/telegram/messenger/SecureDocumentKey;->file_iv:[B

    return-void
.end method
