.class public final synthetic Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->$r8$lambda$ZqPwM_ni_UJFjQx44lGm44gP4Fc(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Landroid/view/View;)V

    return-void
.end method
