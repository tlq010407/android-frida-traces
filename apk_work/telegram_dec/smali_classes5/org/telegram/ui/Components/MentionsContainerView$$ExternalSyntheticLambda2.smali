.class public final synthetic Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/MentionsContainerView;

.field public final synthetic f$1:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/MentionsContainerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/MentionsContainerView;->$r8$lambda$6wK1BOSmSmqI7TUdSrbJKaTMADo(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V

    return-void
.end method
