.class public Lorg/telegram/ui/Components/UItem;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UItem$UItemFactory;
    }
.end annotation


# static fields
.field private static factories:Landroid/util/LongSparseArray; = null

.field private static factoryInstances:Ljava/util/HashMap; = null

.field private static factoryViewType:I = 0x2710

.field public static factoryViewTypeStartsWith:I = 0x2710


# instance fields
.field public accent:Z

.field public animatedText:Ljava/lang/CharSequence;

.field public chatType:Ljava/lang/String;

.field public checked:Z

.field public clickCallback:Landroid/view/View$OnClickListener;

.field public collapsed:Z

.field public dialogId:J

.field public enabled:Z

.field public flags:I

.field public floatValue:F

.field public hideDivider:Z

.field public iconResId:I

.field public id:I

.field public include:Z

.field public intCallback:Lorg/telegram/messenger/Utilities$Callback;

.field public intValue:I

.field public locked:Z

.field public longValue:J

.field public object:Ljava/lang/Object;

.field public object2:Ljava/lang/Object;

.field public pad:I

.field public red:Z

.field public reordering:Z

.field public spanCount:I

.field public subtext:Ljava/lang/CharSequence;

.field public text:Ljava/lang/CharSequence;

.field public textValue:Ljava/lang/CharSequence;

.field public texts:[Ljava/lang/String;

.field public transparent:Z

.field public view:Landroid/view/View;

.field public withUsername:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->enabled:Z

    const/4 p2, -0x1

    iput p2, p0, Lorg/telegram/ui/Components/UItem;->spanCount:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()Landroid/util/LongSparseArray;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$102(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 0

    sput-object p0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$208()I
    .locals 2

    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewType:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Components/UItem;->factoryViewType:I

    return v0
.end method

.method public static asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    return-object v0
.end method

.method public static asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asBusinessChatLink(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButtonCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method

.method public static asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    add-int/lit8 p0, p0, 0x12

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public static asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public static asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asFilterChat(ZJ)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->include:Z

    iput-wide p1, v0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    return-object v0
.end method

.method public static asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->include:Z

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->chatType:Ljava/lang/String;

    iput p3, v0, Lorg/telegram/ui/Components/UItem;->flags:I

    return-object v0
.end method

.method public static asFlicker(I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asFlicker(II)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public static asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asGraySection(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asIntSlideView(IIIILorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p2, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p5, v0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {p0, p1, p3, p4}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->make(IIILorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object v0
.end method

.method public static asLargeQuickReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asLargeShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asQuickReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRadio(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRippleCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSearchMessage(ILorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSearchMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asShadowCollapseButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSlideView([Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->texts:[Ljava/lang/String;

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object v0
.end method

.method public static asSpace(I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asStickerButton(ILjava/lang/CharSequence;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asStickerButton(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x27

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asTopView(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    return-object v0
.end method

.method public static asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asUserCheckbox(ILorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asUserGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/UItem$UItemFactory;

    return-object p0
.end method

.method public static getFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem$UItemFactory;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/UItem$UItemFactory;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UItemFactory was not setuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/UItem;

    invoke-static {p0}, Lorg/telegram/ui/Components/UItem;->getFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object p0

    iget p0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public accent()Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object p0
.end method

.method protected contentsEquals(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/UItem;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x1f

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    const/16 v3, 0x23

    if-eq v2, v3, :cond_7

    const/16 v3, 0x25

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v2, v0, :cond_6

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UItem;->itemContentEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget v3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-boolean p1, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-ne v2, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/UItem;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x24

    if-eq v2, v3, :cond_6

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_4
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v2, v0, :cond_5

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UItem;->itemEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public instanceOf(Ljava/lang/Class;)Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/UItem$UItemFactory;

    if-nez p1, :cond_2

    return v2

    :cond_2
    iget p1, p1, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    iget v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public itemContentEquals(Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->contentsEquals(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z

    move-result p1

    return p1
.end method

.method public itemEquals(Lorg/telegram/ui/Components/UItem;)Z
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->pad:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->pad:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    iget-wide v2, p1, Lorg/telegram/ui/Components/UItem;->dialogId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->transparent:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->red:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->red:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->locked:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->floatValue:F

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->floatValue:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/UItem;->longValue:J

    iget-wide v2, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pad()Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/UItem;->pad:I

    return-object p0
.end method

.method public red()Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->red:Z

    return-object p0
.end method

.method public setChecked(Z)Lorg/telegram/ui/Components/UItem;
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc

    iput p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    :cond_0
    return-object p0
.end method

.method public setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setCloseIcon(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setCollapsed(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    return-object p0
.end method

.method public setEnabled(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->enabled:Z

    return-object p0
.end method

.method public setLocked(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->locked:Z

    return-object p0
.end method

.method public setMinSliderValue(I)Lorg/telegram/ui/Components/UItem;
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object p0
.end method

.method public setPad(I)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/UItem;->pad:I

    return-object p0
.end method

.method public setReordering(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->reordering:Z

    return-object p0
.end method

.method public setSpanCount(I)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/UItem;->spanCount:I

    return-object p0
.end method

.method public withOpenButton(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->checked:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object p0
.end method

.method public withUsername(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    return-object p0
.end method
