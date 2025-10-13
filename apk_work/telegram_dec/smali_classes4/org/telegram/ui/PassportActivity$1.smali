.class Lorg/telegram/ui/PassportActivity$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PassportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PassportActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteImageAtIndex(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/messenger/SecureDocument;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$400(Lorg/telegram/ui/PassportActivity;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SecureDocument;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$500(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/messenger/SecureDocument;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$600(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/messenger/SecureDocument;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$700(Lorg/telegram/ui/PassportActivity;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$800(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v5, p1}, Lorg/telegram/ui/PassportActivity;->access$900(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v5}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/PassportActivity;->access$302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/SecureDocument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfie"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v4

    if-ne v4, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translation"

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v3}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v3

    if-ne v3, v2, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/PassportActivity;->access$502(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/SecureDocument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "front"

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v2

    if-ne v2, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/PassportActivity;->access$602(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/SecureDocument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reverse"

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files"

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz v6, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1000(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1000(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/PassportActivity;->access$1200(Lorg/telegram/ui/PassportActivity;I)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$000(Lorg/telegram/ui/PassportActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getDeleteMessageString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$200(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->PassportDeleteSelfieAlert:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "PassportDeleteSelfieAlert"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->PassportDeleteScanAlert:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "PassportDeleteScanAlert"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    if-ltz p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$000(Lorg/telegram/ui/PassportActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$000(Lorg/telegram/ui/PassportActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;->access$100(Lorg/telegram/ui/PassportActivity$SecureDocumentCell;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p3}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    const/4 p4, 0x0

    aget p5, p2, p4

    iput p5, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p5, 0x1

    aget p2, p2, p5

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p5, v0, :cond_1

    goto :goto_0

    :cond_1
    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    sub-int/2addr p2, p4

    iput p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$1;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$000(Lorg/telegram/ui/PassportActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;->access$100(Lorg/telegram/ui/PassportActivity$SecureDocumentCell;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-object p3

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
