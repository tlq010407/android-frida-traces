.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->$r8$lambda$WPcGChIXs94YZvbIdiyKzxTLPwQ(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Ljava/lang/Integer;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method
