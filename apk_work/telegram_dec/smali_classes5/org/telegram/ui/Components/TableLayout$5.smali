.class Lorg/telegram/ui/Components/TableLayout$5;
.super Lorg/telegram/ui/Components/TableLayout$Alignment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Lorg/telegram/ui/Components/TableLayout$Child;I)I
    .locals 0

    shr-int/lit8 p1, p2, 0x1

    return p1
.end method

.method getGravityOffset(Lorg/telegram/ui/Components/TableLayout$Child;I)I
    .locals 0

    shr-int/lit8 p1, p2, 0x1

    return p1
.end method
