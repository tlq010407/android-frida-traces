.class Lorg/telegram/messenger/FileLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$encrypted:Z

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$small:Z


# direct methods
.method public static synthetic $r8$lambda$DFG8Rcj4K3apSJBkoxiDkZQcXP4(Lorg/telegram/messenger/FileLoader$1;ZLjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileLoader$1;->lambda$didFailedUploadingFile$1(ZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rs3O-13V_5hw4u4o2C0PygpoFfw(Lorg/telegram/messenger/FileLoader$1;ZLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BLorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/FileLoader$1;->lambda$didFinishUploadingFile$0(ZLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BLorg/telegram/messenger/FileUploadOperation;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoader$1;->val$encrypted:Z

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$1;->val$location:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/telegram/messenger/FileLoader$1;->val$small:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didFailedUploadingFile$1(ZLjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$600(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidFailedUpload(Ljava/lang/String;Z)V

    :cond_1
    const/4 p1, 0x1

    iget-object p2, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    if-eqz p3, :cond_2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->access$810(Lorg/telegram/messenger/FileLoader;)I

    iget-object p2, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->access$800(Lorg/telegram/messenger/FileLoader;)I

    move-result p2

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->access$808(Lorg/telegram/messenger/FileLoader;)I

    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_3

    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->access$1010(Lorg/telegram/messenger/FileLoader;)I

    iget-object p2, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)I

    move-result p2

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->access$1008(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private synthetic lambda$didFinishUploadingFile$0(ZLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BLorg/telegram/messenger/FileUploadOperation;)V
    .locals 9

    move-object v0, p0

    move-object v2, p2

    iget-object v1, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    if-eqz p1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$600(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    iget-object v3, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    if-eqz p3, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$810(Lorg/telegram/messenger/FileLoader;)I

    iget-object v3, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$800(Lorg/telegram/messenger/FileLoader;)I

    move-result v3

    if-ge v3, v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileUploadOperation;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$808(Lorg/telegram/messenger/FileLoader;)I

    :goto_2
    invoke-virtual {v1}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_3

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$1010(Lorg/telegram/messenger/FileLoader;)I

    iget-object v3, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)I

    move-result v3

    if-ge v3, v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileUploadOperation;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$1008(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Lorg/telegram/messenger/FileUploadOperation;->getTotalFileSize()J

    move-result-wide v7

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-interface/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidUploaded(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;JJ)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$1;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$1;->val$location:Ljava/lang/String;

    iget-boolean v8, p0, Lorg/telegram/messenger/FileLoader$1;->val$encrypted:Z

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileUploadProgressChanged(Lorg/telegram/messenger/FileUploadOperation;Ljava/lang/String;JJZ)V

    :cond_0
    return-void
.end method

.method public didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->access$100()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoader$1;->val$encrypted:Z

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$1;->val$location:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/telegram/messenger/FileLoader$1;->val$small:Z

    new-instance v3, Lorg/telegram/messenger/FileLoader$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/telegram/messenger/FileLoader$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileLoader$1;ZLjava/lang/String;Z)V

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V
    .locals 13

    move-object v10, p0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->access$100()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v11

    iget-boolean v2, v10, Lorg/telegram/messenger/FileLoader$1;->val$encrypted:Z

    iget-object v3, v10, Lorg/telegram/messenger/FileLoader$1;->val$location:Ljava/lang/String;

    iget-boolean v4, v10, Lorg/telegram/messenger/FileLoader$1;->val$small:Z

    new-instance v12, Lorg/telegram/messenger/FileLoader$1$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object v1, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/FileLoader$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLoader$1;ZLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BLorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
