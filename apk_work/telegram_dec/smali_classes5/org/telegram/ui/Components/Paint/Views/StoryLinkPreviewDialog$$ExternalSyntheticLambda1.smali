.class public final synthetic Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->$r8$lambda$R8S2bWp07ZAq7fxHtzr9OTH6tdY(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method
