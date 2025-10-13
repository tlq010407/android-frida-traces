.class public final synthetic Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$10:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$8:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$4:Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$5:Z

    iput-object p7, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$6:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p8, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$7:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p9, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$8:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p10, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$9:Ljava/lang/String;

    iput-object p11, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$10:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$4:Ljava/lang/CharSequence;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$5:Z

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$6:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$7:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$8:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$9:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;->f$10:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->$r8$lambda$ThE84p5AzvhNKL5g_z2ZQpK0F7o(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method
