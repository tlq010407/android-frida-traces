.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;
.super Lorg/telegram/ui/Components/Paint/Views/StickerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method
