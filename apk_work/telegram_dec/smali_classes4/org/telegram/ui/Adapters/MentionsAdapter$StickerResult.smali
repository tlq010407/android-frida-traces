.class Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerResult"
.end annotation


# instance fields
.field public parent:Ljava/lang/Object;

.field public sticker:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    return-void
.end method
