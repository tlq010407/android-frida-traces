.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemInner"
.end annotation


# instance fields
.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public checked:Z

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public halfChecked:Z

.field public padHeight:I

.field public red:Z

.field public resId:I

.field public sendAs:Z

.field public subtractHeight:I

.field public text:Ljava/lang/CharSequence;

.field public text2:Ljava/lang/CharSequence;

.field public type:I

.field public typeCount:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->padHeight:I

    return-void
.end method

.method public static asButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    return-object v0
.end method

.method public static asCheck(Ljava/lang/CharSequence;IZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iput-boolean p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    return-object v0
.end method

.method public static asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    return-object v0
.end method

.method public static asHeader2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asHeaderCell(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asNoUsers()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    return-object v0
.end method

.method public static asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v0

    return-object v0
.end method

.method public static asPad(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    return-object v0
.end method

.method public static asPadding(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->padHeight:I

    return-object v0
.end method

.method public static asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    return-object v0
.end method

.method public static asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    return-object v0
.end method

.method public static asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    iput p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->typeCount:I

    return-object v0
.end method

.method public static asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    iput-boolean p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    return-object v0
.end method


# virtual methods
.method public asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->padHeight:I

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->padHeight:I

    if-eq v3, v4, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v3, v4, :cond_5

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->typeCount:I

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->typeCount:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    iget-boolean v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red:Z

    iget-boolean v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    iget-boolean v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    if-eq v3, v4, :cond_6

    :cond_5
    return v1

    :cond_6
    if-nez v2, :cond_7

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    return v1

    :cond_b
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    if-eq v2, v3, :cond_d

    :cond_c
    return v1

    :cond_d
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_f

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-eq v2, v3, :cond_f

    :cond_e
    return v1

    :cond_f
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    :cond_10
    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red:Z

    return-object p0
.end method
