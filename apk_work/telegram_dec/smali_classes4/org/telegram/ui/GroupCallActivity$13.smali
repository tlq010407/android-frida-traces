.class Lorg/telegram/ui/GroupCallActivity$13;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->access$7200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->access$2500(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result p3

    if-lt p2, p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->access$7200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->access$2600(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->access$7200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->access$2500(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result p3

    sub-int/2addr p2, p3

    sget-boolean p3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    rem-int/2addr p2, p3

    const/high16 p4, 0x40000000    # 2.0f

    if-nez p2, :cond_1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
