.class public Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerUploader"
.end annotation


# instance fields
.field public addToFavorite:Z

.field private convertingProgress:F

.field public customHandler:Lorg/telegram/messenger/Utilities$Callback2;

.field public emoji:Ljava/lang/String;

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public files:Ljava/util/ArrayList;

.field public finalFiles:Ljava/util/ArrayList;

.field public finalPath:Ljava/lang/String;

.field public mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

.field public messageObject:Lorg/telegram/messenger/MessageObject;

.field public path:Ljava/lang/String;

.field public replacedSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field public reqId:I

.field public stickerPackName:Ljava/lang/CharSequence;

.field public stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public thumbPath:Ljava/lang/String;

.field public tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

.field private uploadProgress:F

.field public uploaded:Z

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public whenDone:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->files:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->convertingProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploadProgress:F

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploadProgress:F

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploadProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->convertingProgress:F

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->convertingProgress:F

    return p1
.end method


# virtual methods
.method public destroy(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->files:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->files:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getProgress()F
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->customHandler:Lorg/telegram/messenger/Utilities$Callback2;

    if-nez v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploadProgress:F

    :goto_1
    mul-float v0, v0, v1

    return v0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->convertingProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploadProgress:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    goto :goto_1
.end method

.method public setupFiles()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalFiles:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->path:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->files:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->files:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->thumbPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
