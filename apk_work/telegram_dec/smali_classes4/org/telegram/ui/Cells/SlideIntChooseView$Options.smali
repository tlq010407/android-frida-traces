.class public Lorg/telegram/ui/Cells/SlideIntChooseView$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/SlideIntChooseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public betweenSteps:I

.field private max:I

.field private min:I

.field public steps:[I

.field public style:I

.field public toString:Lorg/telegram/messenger/Utilities$Callback2Return;


# direct methods
.method public static synthetic $r8$lambda$j64mmNixyX9paZV0J1XrEUu83XA(Lorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->lambda$make$0(Lorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ych8fJhbMOkiRMSNRZEpMuMJEcs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->lambda$make$1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    return-void
.end method

.method private static synthetic lambda$make$0(Lorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 0

    invoke-interface {p0, p2}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$make$1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static make(IIILorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;-><init>()V

    iput p0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->style:I

    iput p1, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->min:I

    iput p2, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->max:I

    new-instance p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options$$ExternalSyntheticLambda1;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    iput-object p0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->toString:Lorg/telegram/messenger/Utilities$Callback2Return;

    return-object v0
.end method

.method public static make(ILjava/lang/String;II)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;-><init>()V

    iput p0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->style:I

    iput p2, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->min:I

    iput p3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->max:I

    new-instance p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->toString:Lorg/telegram/messenger/Utilities$Callback2Return;

    return-object v0
.end method

.method public static make(I[IILorg/telegram/messenger/Utilities$Callback2Return;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;-><init>()V

    iput p0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->style:I

    iput-object p1, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    iput p2, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    iput-object p3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->toString:Lorg/telegram/messenger/Utilities$Callback2Return;

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->max:I

    return v0
.end method

.method public getMin()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->min:I

    return v0
.end method

.method public getStepsCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    mul-int v0, v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
