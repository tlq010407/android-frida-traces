.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Landroid/content/Context;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/tgnet/TLRPC$TL_error;ZLandroid/content/Context;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$4:Z

    iput p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$5:I

    iput-object p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$6:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-boolean p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$7:Z

    iput-object p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$8:Landroid/content/Context;

    iput-object p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$9:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$4:Z

    iget v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$5:I

    iget-object v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$6:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-boolean v7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$7:Z

    iget-object v8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$8:Landroid/content/Context;

    iget-object v9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda201;->f$9:Lorg/telegram/tgnet/TLObject;

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$Vbl5FAjuKt7k1ahJQbrtcJgAhgI(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/tgnet/TLRPC$TL_error;ZLandroid/content/Context;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
