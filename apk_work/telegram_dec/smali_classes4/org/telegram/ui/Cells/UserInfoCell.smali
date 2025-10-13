.class public Lorg/telegram/ui/Cells/UserInfoCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/UserInfoCell$Row;
    }
.end annotation


# instance fields
.field private animating:Z

.field private backgroundHeight:I

.field private commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

.field private final currentAccount:I

.field private dialogId:J

.field private footer:Lorg/telegram/ui/Components/Text;

.field private final fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final fullBounds:Landroid/graphics/RectF;

.field private final groupsArrow:Landroid/graphics/drawable/Drawable;

.field private final groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

.field private final groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final groupsBounds:Landroid/graphics/RectF;

.field private final groupsRipple:Landroid/graphics/drawable/Drawable;

.field private groupsRow:Lorg/telegram/ui/Cells/UserInfoCell$Row;

.field private height:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rows:Ljava/util/ArrayList;

.field private rowsKeysWidth:F

.field private rowsValuesWidth:F

.field private rowsWidth:F

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private title:Lorg/telegram/ui/Components/Text;

.field private viewTop:F

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rows:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Lorg/telegram/ui/Components/AvatarsDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    iput p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const p2, 0x30ffffff

    const/16 p3, 0x8

    invoke-static {p2, p3, p3}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iput p3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setSize(I)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAvatarsTextSize(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsArrow:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Cells/UserInfoCell$Row;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    :cond_0
    new-instance v0, Lorg/telegram/ui/Cells/UserInfoCell$Row;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Cells/UserInfoCell$Row;-><init>(Lorg/telegram/ui/Cells/UserInfoCell;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    iget-object p2, v0, Lorg/telegram/ui/Cells/UserInfoCell$Row;->key:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsValuesWidth:F

    iget-object p2, v0, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result p2

    if-eqz p3, :cond_1

    const/high16 p3, 0x42180000    # 38.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsValuesWidth:F

    return-object v0
.end method

.method public static displayDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    aget-object v1, v0, p0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v5, v1, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lorg/telegram/tgnet/TLRPC$PeerSettings;)Z
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->phone_country:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->registration_month:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public animating()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->animating:Z

    return v0
.end method

.method public applyServiceShaderMatrix()V
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->backgroundHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->viewTop:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/UserInfoCell;->applyServiceShaderMatrix(IIFF)V

    return-void
.end method

.method public applyServiceShaderMatrix(IIFF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_4

    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Cells/UserInfoCell;->set(JLorg/telegram/tgnet/TLRPC$PeerSettings;)V

    goto/16 :goto_3

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->commonChatsLoaded:I

    if-ne p1, p2, :cond_4

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_4

    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getCommonChats(J)Lorg/telegram/messenger/MessagesController$CommonChatsList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$CommonChatsList;->getCount()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRow:Lorg/telegram/ui/Cells/UserInfoCell$Row;

    if-eqz p2, :cond_3

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Lorg/telegram/ui/Components/Text;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Groups"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p3, p1, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p3, p2, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setCount(I)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-wide p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    iget p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/UserInfoCell;->set(JLorg/telegram/tgnet/TLRPC$PeerSettings;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_3
    return-void
.end method

.method public hasGradientService()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->commonChatsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->commonChatsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v10, 0x3ccccccd    # 0.025f

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/UserInfoCell;->applyServiceShaderMatrix()V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "paintChatActionBackground"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/UserInfoCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/UserInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v5, "paintChatActionBackgroundDarken"

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    add-float/2addr v1, v12

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v12, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v14, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    const/high16 v15, 0x42000000    # 32.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v3, v9, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v4, v2, v8

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v7, v12, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v14, v1

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v3, v9, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v4, v2, v8

    const v6, 0x3f333333    # 0.7f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v7, v12, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v14, v1

    const/4 v5, 0x0

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_5

    if-lez v5, :cond_1

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v12, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v14, v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Cells/UserInfoCell$Row;

    iget v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    div-float/2addr v1, v8

    sub-float v1, v9, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    add-float/2addr v1, v2

    iget-object v2, v4, Lorg/telegram/ui/Cells/UserInfoCell$Row;->key:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    sub-float v3, v1, v2

    iget v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    div-float/2addr v1, v8

    sub-float v1, v9, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    add-float/2addr v1, v2

    const v16, 0x40f51eb8    # 7.66f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v17, v1, v2

    iget-object v1, v4, Lorg/telegram/ui/Cells/UserInfoCell$Row;->key:Lorg/telegram/ui/Components/Text;

    sub-float v2, v17, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Cells/UserInfoCell$Row;->key:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v6, v2, v8

    const/16 v19, -0x1

    const v20, 0x3f333333    # 0.7f

    move-object/from16 v2, p1

    move-object v15, v4

    move v4, v6

    move/from16 v21, v5

    move/from16 v5, v19

    const/4 v12, 0x0

    move/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->bounds:Landroid/graphics/RectF;

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    div-float/2addr v2, v8

    sub-float v2, v9, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    add-float/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    div-float/2addr v3, v8

    sub-float v3, v9, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    add-float/2addr v3, v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-boolean v4, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->avatars:Z

    const v18, 0x3f4ccccd    # 0.8f

    if-eqz v4, :cond_2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v18

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AvatarsDrawable;->getMaxX()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-float/2addr v3, v4

    iget-object v4, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    add-float/2addr v4, v14

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRow:Lorg/telegram/ui/Cells/UserInfoCell$Row;

    const/high16 v20, 0x40800000    # 4.0f

    if-ne v1, v15, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounds:Landroid/graphics/RectF;

    iget-object v2, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounds:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v14

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v14

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v1, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    div-float/2addr v2, v8

    add-float/2addr v2, v9

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v2, v2, v17

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v4, v2, v8

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move/from16 v3, v17

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-boolean v1, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->avatars:Z

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    div-float/2addr v1, v8

    sub-float v1, v9, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    add-float/2addr v1, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v15, Lorg/telegram/ui/Cells/UserInfoCell$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->getMaxX()F

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    div-float/2addr v2, v8

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    div-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v1, v12, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v14, v1

    add-int/lit8 v5, v21, 0x1

    const/4 v12, 0x0

    const/high16 v15, 0x42000000    # 32.0f

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_7

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->isMultiline()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v3, v9, v2

    const/4 v5, -0x1

    const v6, 0x3f333333    # 0.7f

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v3, v9, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v4, v2, v8

    const/4 v5, -0x1

    const v6, 0x3f333333    # 0.7f

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    float-to-int p2, p2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRow:Lorg/telegram/ui/Cells/UserInfoCell$Row;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    const v3, 0x101009e

    aput v3, v0, v1

    goto :goto_2

    :cond_2
    new-array v0, v2, [I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->openThisProfile()V

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_5

    const-string v5, "user_id"

    :goto_3
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4

    :cond_5
    neg-long v3, v3

    const-string v5, "chat_id"

    goto :goto_3

    :goto_4
    const-string v3, "open_common"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->fullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_7
    return v1
.end method

.method public set(JLorg/telegram/tgnet/TLRPC$PeerSettings;)V
    .locals 12

    iput-wide p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->dialogId:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    iput v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    iput v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    iput v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsValuesWidth:F

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    new-instance v1, Lorg/telegram/ui/Components/Text;

    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    iget v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-float/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->ContactInfoIsContact:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->ContactInfoIsNotContact:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    iget v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-float/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$PeerSettings;->phone_country:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->ContactInfoPhone:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$PeerSettings;->phone_country:Ljava/lang/String;

    sget v5, Lorg/telegram/messenger/R$string;->ContactInfoPhoneFragment:I

    const/16 v6, 0xc

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/LocaleController;->getCountryWithFlag(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/telegram/ui/Cells/UserInfoCell;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Cells/UserInfoCell$Row;

    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$PeerSettings;->registration_month:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->ContactInfoRegistration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PeerSettings;->registration_month:Ljava/lang/String;

    invoke-static {p3}, Lorg/telegram/ui/Cells/UserInfoCell;->displayDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v3, p3, v1}, Lorg/telegram/ui/Cells/UserInfoCell;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Cells/UserInfoCell$Row;

    :cond_2
    const-wide/16 v3, 0x0

    const/4 p3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    move-object v5, p3

    goto :goto_1

    :cond_3
    iget v5, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    :goto_1
    cmp-long v6, p1, v3

    if-gez v6, :cond_4

    move-object v6, p3

    goto :goto_2

    :cond_4
    iget v6, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v6

    :goto_2
    const/4 v7, 0x1

    if-nez v6, :cond_5

    cmp-long v8, p1, v3

    if-lez v8, :cond_5

    iget v8, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-virtual {v8, v9, v7, v1}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    :cond_5
    if-eqz v6, :cond_7

    iget v8, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lorg/telegram/messenger/MessagesController;->getCommonChats(J)Lorg/telegram/messenger/MessagesController$CommonChatsList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget p2, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$CommonChatsList;->getCount()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-lez p1, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->ContactInfoCommonGroups:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "Groups"

    invoke-static {v9, p1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v7}, Lorg/telegram/ui/Cells/UserInfoCell;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Cells/UserInfoCell$Row;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRow:Lorg/telegram/ui/Cells/UserInfoCell$Row;

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v8, 0x3

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setCount(I)V

    const/4 p1, 0x0

    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v9, p0, Lorg/telegram/ui/Cells/UserInfoCell;->currentAccount:I

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p2, p1, v9, v10}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsAvatars:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    goto :goto_4

    :cond_7
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->commonChats:Lorg/telegram/messenger/MessagesController$CommonChatsList;

    iput-object p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRow:Lorg/telegram/ui/Cells/UserInfoCell$Row;

    :goto_4
    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsKeysWidth:F

    const p2, 0x40f51eb8    # 7.66f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsValuesWidth:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsWidth:F

    if-eqz v5, :cond_9

    iget-boolean p1, v5, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-nez p1, :cond_9

    iget-wide p1, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p1

    if-nez p1, :cond_9

    iget-wide p1, v5, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    const v5, 0x417547ae    # 15.33f

    const/16 v8, 0x21

    const-string v9, "i  "

    const/high16 v10, 0x41400000    # 12.0f

    cmp-long v11, p1, v3

    if-eqz v11, :cond_8

    if-eqz v6, :cond_9

    iget-object p1, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    if-eqz p1, :cond_9

    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p3, Lorg/telegram/ui/Components/Text;

    invoke-direct {p3, p2, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->icon:J

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-direct {p3, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p2, p3, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->description:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Lorg/telegram/ui/Components/Text;

    invoke-direct {p1, p2, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Text;->align(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Text;->multiline(I)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Text;->setMaxWidth(F)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/Text;->supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    :goto_5
    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    :goto_6
    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    goto :goto_7

    :cond_8
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p3, Lorg/telegram/messenger/R$drawable;->filled_info:I

    invoke-direct {p2, p3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const p3, 0x3f0ccccd    # 0.55f

    const v2, -0x40f33333    # -0.55f

    invoke-virtual {p2, p3, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    invoke-virtual {p1, p2, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget p2, Lorg/telegram/messenger/R$string;->ContactInfoNotVerified:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p2, Lorg/telegram/ui/Components/Text;

    invoke-direct {p2, p1, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    goto :goto_5

    :cond_9
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserInfoCell;->footer:Lorg/telegram/ui/Components/Text;

    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->height:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    goto :goto_6

    :goto_7
    iget p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    iget-object p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    iget p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->rowsWidth:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    int-to-float p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->width:F

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->animating:Z

    return-void
.end method

.method public setVisiblePart(FI)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->viewTop:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->backgroundHeight:I

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iput p2, p0, Lorg/telegram/ui/Cells/UserInfoCell;->backgroundHeight:I

    iput p1, p0, Lorg/telegram/ui/Cells/UserInfoCell;->viewTop:F

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserInfoCell;->groupsRipple:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
