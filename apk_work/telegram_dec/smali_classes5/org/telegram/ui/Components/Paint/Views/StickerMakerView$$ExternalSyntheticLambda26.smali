.class public final synthetic Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;->f$2:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;->f$2:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->$r8$lambda$dJ0o_pHt9jTBQkwXrt8MKy4kBLw(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    return-void
.end method
