.class public final synthetic Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$38;

.field public final synthetic f$1:Landroidx/collection/LongSparseArray;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$38;Landroidx/collection/LongSparseArray;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ProfileActivity$38;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;->f$1:Landroidx/collection/LongSparseArray;

    iput p3, p0, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ProfileActivity$38;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;->f$1:Landroidx/collection/LongSparseArray;

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$38;->$r8$lambda$JBnrRX5l3SXUu_XKQQ_x_TSxsgc(Lorg/telegram/ui/ProfileActivity$38;Landroidx/collection/LongSparseArray;I)V

    return-void
.end method
