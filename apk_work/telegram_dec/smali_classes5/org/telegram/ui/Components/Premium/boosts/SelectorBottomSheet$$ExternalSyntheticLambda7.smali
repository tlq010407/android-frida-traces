.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;->f$1:Z

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->$r8$lambda$FNF3LzV7cp2NghAtn4qJGZ8PdAo(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;ZLandroid/util/Pair;)V

    return-void
.end method
