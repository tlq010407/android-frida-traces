.class public final synthetic Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->$r8$lambda$LzmnvkwIwE3P-MDmJvNLktbmx90(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
