.class public abstract Lorg/telegram/ui/Components/TableLayout$Alignment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Lorg/telegram/ui/Components/TableLayout$Child;I)I
.end method

.method getBounds()Lorg/telegram/ui/Components/TableLayout$Bounds;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TableLayout$Bounds;-><init>(Lorg/telegram/ui/Components/TableLayout$1;)V

    return-object v0
.end method

.method abstract getGravityOffset(Lorg/telegram/ui/Components/TableLayout$Child;I)I
.end method

.method getSizeInCell(Lorg/telegram/ui/Components/TableLayout$Child;II)I
    .locals 0

    return p2
.end method
