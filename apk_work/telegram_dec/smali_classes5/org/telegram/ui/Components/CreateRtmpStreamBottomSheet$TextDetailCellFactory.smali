.class public Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextDetailCellFactory"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$kJtNA81dr8ChSozeZgHipw_SSA8(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;Landroid/content/Context;Lorg/telegram/ui/Cells/TextDetailCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;->lambda$createView$0(Landroid/content/Context;Lorg/telegram/ui/Cells/TextDetailCell;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;

    invoke-direct {v0}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method private copyRtmpValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/content/Context;Lorg/telegram/ui/Cells/TextDetailCell;Landroid/view/View;)V
    .locals 0

    iget-object p2, p2, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;->copyRtmpValue(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Z)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    xor-int/lit8 p0, p2, 0x1

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->enabled:Z

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Cells/TextDetailCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Cells/TextDetailCell;
    .locals 2

    .line 0
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;)V

    new-instance p3, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;Landroid/content/Context;Lorg/telegram/ui/Cells/TextDetailCell;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
