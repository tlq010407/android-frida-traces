.class public Lorg/telegram/tgnet/TLClassStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static store:Lorg/telegram/tgnet/TLClassStore;


# instance fields
.field private classStore:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, -0x3b460645

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x73164160

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, -0x6e33b98c

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x1be31789

    const-class v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x204d3878

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x36b091de

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer45;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, -0x55b7cd83

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x1f814f1f

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x555555fa

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x555555f9

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x555555f8

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x555555f7

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x56730bcc

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_null;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x4d6deea5    # 2.4949E8f

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x74ae4240

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x313bc7f8

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x78d4dec1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, 0x725b04c3

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, -0x6fea1eff

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    const v1, -0x1ce85082

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static Instance()Lorg/telegram/tgnet/TLClassStore;
    .locals 1

    sget-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLClassStore;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLClassStore;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    :cond_0
    sget-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    return-object v0
.end method


# virtual methods
.method public TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method
