.class Lorg/telegram/ui/PassportActivity$EncryptionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PassportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncryptionResult"
.end annotation


# instance fields
.field decrypyedFileSecret:[B

.field encryptedData:[B

.field fileHash:[B

.field fileSecret:[B

.field secureDocumentKey:Lorg/telegram/messenger/SecureDocumentKey;


# direct methods
.method public constructor <init>([B[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$EncryptionResult;->encryptedData:[B

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$EncryptionResult;->fileSecret:[B

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity$EncryptionResult;->fileHash:[B

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity$EncryptionResult;->decrypyedFileSecret:[B

    new-instance p1, Lorg/telegram/messenger/SecureDocumentKey;

    invoke-direct {p1, p5, p6}, Lorg/telegram/messenger/SecureDocumentKey;-><init>([B[B)V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$EncryptionResult;->secureDocumentKey:Lorg/telegram/messenger/SecureDocumentKey;

    return-void
.end method
