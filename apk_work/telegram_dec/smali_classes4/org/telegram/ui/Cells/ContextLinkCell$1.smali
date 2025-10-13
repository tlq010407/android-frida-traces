.class Lorg/telegram/ui/Cells/ContextLinkCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

.field final synthetic val$ifSame:Z

.field final synthetic val$localId:I


# direct methods
.method public static synthetic $r8$lambda$AWCpizdUKCnLbq5A8wXcA1krV_I(Lorg/telegram/ui/Cells/ContextLinkCell$1;ILjava/lang/String;Ljava/io/File;ZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Cells/ContextLinkCell$1;->lambda$run$0(ILjava/lang/String;Ljava/io/File;ZZ)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/ContextLinkCell;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    iput p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->val$localId:I

    iput-boolean p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->val$ifSame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(ILjava/lang/String;Ljava/io/File;ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolvingFileName:Z

    iget v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolveFileNameId:I

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, ""

    iput-object p1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    :cond_0
    iput-object p3, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->cacheFile:Ljava/io/File;

    iput-boolean p4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileExist:Z

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p5, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$000(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$000(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$400(Lorg/telegram/ui/Cells/ContextLinkCell;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$200(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$502(Lorg/telegram/ui/Cells/ContextLinkCell;Lorg/telegram/tgnet/TLRPC$PhotoSize;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$500(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$200(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$500(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$000(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    const-string v6, "video/mp4"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    move-object v0, v4

    goto/16 :goto_2

    :cond_3
    :goto_1
    move-object v2, v3

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$200(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    move-object v0, v4

    move-object v2, v0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$000(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v3

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object v9, v2

    :goto_3
    move-object v8, v4

    goto/16 :goto_7

    :cond_7
    move-object v8, v0

    move-object v9, v2

    goto/16 :goto_7

    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$200(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$100(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    :goto_5
    move-object v9, v0

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$300(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->this$0:Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ContextLinkCell;->access$000(Lorg/telegram/ui/Cells/ContextLinkCell;)I

    move-result v4

    if-ne v4, v5, :cond_a

    const-string v4, "mp3"

    goto :goto_6

    :cond_a
    const-string v4, "ogg"

    :goto_6
    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object v8, v4

    move-object v9, v8

    :goto_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_8
    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->val$localId:I

    iget-boolean v11, p0, Lorg/telegram/ui/Cells/ContextLinkCell$1;->val$ifSame:Z

    new-instance v0, Lorg/telegram/ui/Cells/ContextLinkCell$1$$ExternalSyntheticLambda0;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Cells/ContextLinkCell$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ContextLinkCell$1;ILjava/lang/String;Ljava/io/File;ZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
