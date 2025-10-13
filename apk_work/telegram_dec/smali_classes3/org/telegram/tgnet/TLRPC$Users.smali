.class public abstract Lorg/telegram/tgnet/TLRPC$Users;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Users"
.end annotation


# instance fields
.field public count:I

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Users;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Users;
    .locals 1

    const v0, 0x315a4974

    if-eq p1, v0, :cond_2

    const v0, 0x62d706b8

    if-eq p1, v0, :cond_1

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

    const-string p1, "can\'t parse magic %x in Users"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_users;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_users;-><init>()V

    :goto_0
    invoke-static {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC;->deserialize(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;Z)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Users;

    return-object p0

    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_usersSlice;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_usersSlice;-><init>()V

    goto :goto_0
.end method
