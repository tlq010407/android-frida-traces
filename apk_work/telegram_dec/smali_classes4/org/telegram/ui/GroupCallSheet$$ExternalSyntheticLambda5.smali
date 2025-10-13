.class public final synthetic Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$InputGroupCall;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    iget v2, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/GroupCallSheet;->$r8$lambda$9yhIg6AQhYglMlHULX0n7iIw3OA(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Landroid/view/View;)V

    return-void
.end method
