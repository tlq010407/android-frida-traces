.class Lorg/telegram/ui/Components/ClearHistoryAlert$2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ClearHistoryAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$2;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$2;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$100(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    return-void
.end method
