.class public abstract Lorg/telegram/ui/Components/CodepointsLengthInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-static {p4, p5, p6}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p4

    sub-int/2addr v0, p4

    iget p4, p0, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;->mMax:I

    sub-int/2addr p4, v0

    const-string p5, ""

    if-gtz p4, :cond_0

    return-object p5

    :cond_0
    invoke-static {p1, p2, p3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p3

    if-lt p4, p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/2addr p4, p2

    add-int/lit8 p3, p4, -0x1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p4, p4, -0x1

    if-ne p4, p2, :cond_2

    return-object p5

    :cond_2
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
