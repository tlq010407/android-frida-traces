.class Lorg/telegram/ui/AvatarPreviewer$ChatInfoLoadTask;
.super Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AvatarPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatInfoLoadTask"
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .locals 1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;-><init>(Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method protected load()V
    .locals 5

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->argument:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget v3, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->classGuid:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method protected varargs onReceiveNotification([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object v2, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->argument:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
