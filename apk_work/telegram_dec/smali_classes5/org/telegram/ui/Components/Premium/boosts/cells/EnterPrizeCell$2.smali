.class Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->access$100(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->access$100(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;->afterTextChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
