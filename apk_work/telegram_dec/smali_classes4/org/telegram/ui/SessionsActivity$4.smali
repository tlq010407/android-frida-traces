.class Lorg/telegram/ui/SessionsActivity$4;
.super Lorg/telegram/ui/Components/UndoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public static synthetic $r8$lambda$_5TDtjAlYsSy9-pIiD6jBIKNGUs(Lorg/telegram/ui/SessionsActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity$4;->lambda$hide$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYE32NLLj2NJBNkvyHwmOSRBX3s(Lorg/telegram/ui/SessionsActivity$4;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity$4;->lambda$hide$1(Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$hide$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hide$1(Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SessionsActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public hide(ZI)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->getCurrentInfoObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$resetAuthorization;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$resetAuthorization;-><init>()V

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_account$resetAuthorization;->hash:J

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionsActivity$4;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method
