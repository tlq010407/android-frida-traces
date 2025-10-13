.class public Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/LinkPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPagePreview"
.end annotation


# instance fields
.field public captionAbove:Z

.field public flags:I

.field public largePhoto:Z

.field public name:Ljava/lang/String;

.field public photoSize:I

.field public url:Ljava/lang/String;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->captionAbove:Z

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;
    .locals 1

    const v0, -0x254dd755

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in WebPagePreview"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->largePhoto:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->captionAbove:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebPage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->photoSize:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x254dd755

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->largePhoto:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->captionAbove:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x11

    :goto_3
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->photoSize:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_6
    return-void
.end method
