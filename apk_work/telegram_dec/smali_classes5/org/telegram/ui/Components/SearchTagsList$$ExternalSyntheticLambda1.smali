.class public final synthetic Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SearchTagsList;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/SearchTagsList;

    iput p2, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/SearchTagsList;

    iget v1, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/SearchTagsList;->$r8$lambda$-tu8GnLCrzWmRY9LIh-7t4g7afY(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method
