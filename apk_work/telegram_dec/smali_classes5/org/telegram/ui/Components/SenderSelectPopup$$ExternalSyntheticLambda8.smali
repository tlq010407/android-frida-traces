.class public final synthetic Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SenderSelectPopup;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public final synthetic f$4:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$5:Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SenderSelectPopup;Ljava/util/List;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    iput-object p2, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$3:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$4:Lorg/telegram/ui/ChatActivity;

    iput-object p6, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$5:Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$3:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$4:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;->f$5:Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/SenderSelectPopup;->$r8$lambda$fId-2WKbEvPvtzW4JjUCiAj3-8k(Lorg/telegram/ui/Components/SenderSelectPopup;Ljava/util/List;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Landroid/view/View;I)V

    return-void
.end method
