.class public Lorg/telegram/ui/web/MHTML$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/MHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public end:J

.field public file:Ljava/io/File;

.field public final headers:Ljava/util/HashMap;

.field public start:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/MHTML$Entry;->headers:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/web/MHTML$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/MHTML$Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lorg/telegram/ui/web/MHTML$Entry;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/telegram/ui/web/MHTML$Entry;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "base64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Base64InputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/web/MHTML$Entry;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quoted-printable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;

    invoke-direct {v1, v0}, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/MHTML$Entry;->headers:Ljava/util/HashMap;

    const-string v1, "content-location"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/MHTML$HeaderValue;

    invoke-static {v0}, Lorg/telegram/ui/web/MHTML$HeaderValue;->getValue(Lorg/telegram/ui/web/MHTML$HeaderValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 7

    new-instance v6, Lorg/telegram/ui/web/MHTML$BoundedInputStream;

    iget-object v1, p0, Lorg/telegram/ui/web/MHTML$Entry;->file:Ljava/io/File;

    iget-wide v2, p0, Lorg/telegram/ui/web/MHTML$Entry;->start:J

    iget-wide v4, p0, Lorg/telegram/ui/web/MHTML$Entry;->end:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/MHTML$BoundedInputStream;-><init>(Ljava/io/File;JJ)V

    return-object v6
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/MHTML$Entry;->headers:Ljava/util/HashMap;

    const-string v1, "content-transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/MHTML$HeaderValue;

    invoke-static {v0}, Lorg/telegram/ui/web/MHTML$HeaderValue;->getValue(Lorg/telegram/ui/web/MHTML$HeaderValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/MHTML$Entry;->headers:Ljava/util/HashMap;

    const-string v1, "content-type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/MHTML$HeaderValue;

    invoke-static {v0}, Lorg/telegram/ui/web/MHTML$HeaderValue;->getValue(Lorg/telegram/ui/web/MHTML$HeaderValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
