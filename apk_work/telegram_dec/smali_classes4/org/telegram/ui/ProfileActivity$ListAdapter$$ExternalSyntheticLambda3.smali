.class public final synthetic Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$ListAdapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->$r8$lambda$97j5eOsSVzmkkBjwPb56adq77o4(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
