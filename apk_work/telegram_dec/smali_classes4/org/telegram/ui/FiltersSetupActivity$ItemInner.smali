.class Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemInner"
.end annotation


# instance fields
.field filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

.field text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    return-void
.end method

.method public static asButton(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asCheck(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object v0
.end method

.method public static asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asHint()Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    return-object v0
.end method

.method public static asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSuggested(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    iget v1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-eqz v3, :cond_3

    const/4 v1, 0x4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    const/4 v1, 0x6

    if-ne v3, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v3, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v5, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-eq v4, v6, :cond_7

    return v2

    :cond_7
    if-eqz v3, :cond_8

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iget v4, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    if-nez v1, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iget-object p1, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    if-nez p1, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DialogFilter;->id:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$DialogFilter;->id:I

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method
