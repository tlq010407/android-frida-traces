.class public Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Painting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaintingData"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public data:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    return-void
.end method
