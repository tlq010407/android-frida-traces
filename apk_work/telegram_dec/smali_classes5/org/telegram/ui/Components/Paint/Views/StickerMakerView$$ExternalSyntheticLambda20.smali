.class public final synthetic Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->$r8$lambda$uiFN87gPvaCDR30a779BpTybcB4(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
