.class Lorg/telegram/ui/Components/EmbedBottomSheet$5;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$rAu-Rb-N2vggEbC671ab5z14ddk(Lorg/telegram/ui/Components/EmbedBottomSheet$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->lambda$onRenderProcessGone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.webview"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashMessage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$5;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
