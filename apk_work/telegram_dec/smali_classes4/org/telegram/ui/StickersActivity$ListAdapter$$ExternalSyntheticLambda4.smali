.class public final synthetic Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->$r8$lambda$llYtU_m90M3FtRWHPTv5vsVw2lU(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result p1

    return p1
.end method
