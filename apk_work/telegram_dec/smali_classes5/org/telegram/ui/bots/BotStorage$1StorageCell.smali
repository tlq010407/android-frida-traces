.class Lorg/telegram/ui/bots/BotStorage$1StorageCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotStorage;->showChooseStorage(Landroid/content/Context;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageCell"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final needDivider:Z

.field private final radioButton:Lorg/telegram/ui/Components/RadioButton;

.field final synthetic this$0:Lorg/telegram/ui/bots/BotStorage;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/bots/BotStorage;Lorg/telegram/ui/bots/BotStorage$StorageConfig;ZLandroid/content/Context;)V
    .locals 10

    iput-object p1, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->this$0:Lorg/telegram/ui/bots/BotStorage;

    iput-object p4, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->val$context:Landroid/content/Context;

    invoke-direct {p0, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p1, p2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->id:Ljava/lang/String;

    new-instance p1, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x16

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v4, 0x13

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v1, 0x1

    invoke-static {p4, v0, p1, v1}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x7

    const/16 v5, 0x3e

    const/16 v6, 0x9

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v2, 0x0

    invoke-static {p4, v0, p1, v2}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/R$string;->BotRestoreStorageCreatedAt:I

    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    iget-wide v3, p2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->created_at:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatSmallDateChat(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->created_at:J

    div-long/2addr v8, v5

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {p4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x7

    const/16 v5, 0x3e

    const/16 v6, 0x20

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean p3, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotStorage$1StorageCell;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->id:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42780000    # 62.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method
