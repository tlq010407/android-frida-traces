.class public Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public audioCall:Landroid/view/View$OnClickListener;

.field public callback:Landroid/view/View$OnClickListener;

.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public checked:Z

.field public country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public options:Landroid/view/View$OnClickListener;

.field public padHeight:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public resId:I

.field public subtext:Ljava/lang/CharSequence;

.field public text:Ljava/lang/CharSequence;

.field public type:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;

.field public videoCall:Landroid/view/View$OnClickListener;

.field public view:Landroid/view/View;


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    return-void
.end method

.method public static asButton(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->id:I

    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->resId:I

    iput-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    return-object v0
.end method

.method public static asCountry(Lorg/telegram/tgnet/TLRPC$TL_help_country;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    return-object v0
.end method

.method public static asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->view:Landroid/view/View;

    return-object v0
.end method

.method public static asCustomUser(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    iput-object p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asLetter(Ljava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asNoUsers()Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asPad(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    return-object v0
.end method

.method public static asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    return-object v0
.end method

.method public static asTopSection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asUser(Lorg/telegram/tgnet/TLRPC$User;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    return-object v0
.end method


# virtual methods
.method protected contentsEquals(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    iget-boolean v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->callback:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->callback:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-ne v2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    iget v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->getDialogId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->type:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->type:I

    if-eq v2, v3, :cond_5

    :cond_4
    return v1

    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->id:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->id:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->resId:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->resId:I

    if-eq v2, v3, :cond_a

    :cond_9
    return v1

    :cond_a
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->view:Landroid/view/View;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->view:Landroid/view/View;

    if-eq v2, p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public getDialogId()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public withCall(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->audioCall:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->videoCall:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public withOptions(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->options:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public withRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->callback:Landroid/view/View$OnClickListener;

    return-object p0
.end method
