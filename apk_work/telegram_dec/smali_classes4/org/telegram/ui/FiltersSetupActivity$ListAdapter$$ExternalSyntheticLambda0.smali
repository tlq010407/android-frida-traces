.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->$r8$lambda$iN5A-4WlpncPQDoRf0R7c5AS8Q8(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V

    return-void
.end method
